CREATE procedure sp_ac_rep_302_valores_carga
  @a_CompaniaSocio varchar(8)
, @a_ledgerGroup varchar(1)
, @a_period VARCHAR(6)
, @a_reporte VARCHAR(3)
, @a_usuario VARCHAR(20)
AS


/*

LOG
===
Fecha 		Desarrollador	Comentario
------------------------------------------------------------------
2007-12-13	RichardG	Version Inicial


PARA PROBAR
===========
sp_ac_rep_302_valores_carga  '000000000', 'T',  '200710', 'F38','RichardGV' 

*/

BEGIN

/* PARA PROBAR DIRECTAMENTE

DECLARE @a_CompaniaSocio varchar(8)
DECLARE @a_ledgerGroup varchar(1)
DECLARE @a_period VARCHAR(6)
set @a_co = '00000000'
set @a_ledgerGroup = 'T'
set @a_period = '200701'

DECLARE @a_moneda varchar(2) --LO  o  EX
DECLARE @a_usuario VARCHAR(20)
set @a_moneda = 'EX'
set @a_usuario = 'RichardG'

*/

DECLARE @moneda VARCHAR(2)
DECLARE @aaaa AS VARCHAR(4)
DECLARE @Ejercicio AS SMALLINT
DECLARE @period_like AS VARCHAR(5)

--Moneda
SELECT @moneda = MonedaPorDefecto
FROM CompaniaMast
WHERE CompaniaCodigo = SUBSTRING(@a_CompaniaSocio, 1, 6)

IF @moneda IS NULL
   SET @moneda = 'LO'


--Ejercicio y period like
SET @aaaa = SUBSTRING(@a_period, 1, 4) 
SET @Ejercicio = CONVERT(SMALLINT, @aaaa)
SET @period_like = @aaaa + '%'


--Borra información anterior
DELETE FROM AC_SUNAT_Valores
WHERE
    companiasocio = @a_CompaniaSocio
AND ejercicio = @Ejercicio 

--Inserta registros
INSERT INTO AC_SUNAT_Valores 
(
  CompaniaSocio
, Ejercicio			 
, Persona     			 
, DenominacionTitulo   		 
, ValorNominalUnitario 		 
, CantidadTitulo		 
, CostoTotalSpring		 
, CostoTotal 			 
, ProvisionTotalSpring		 
, ProvisionTotal		 
, FlagOmitir		
, FechaCarga	
, Estado 
, UltimoUsuario 		 
, UltimaFechaModif
)

SELECT
  @a_CompaniaSocio 
, @Ejercicio 
, vendor
, '' Denominacion_titulo
, 0 ValorNominalUnitario 		 
, 0 CantidadTitulo	
, SUM(CASE WHEN @moneda = 'LO'
           THEN CostoTotalSpringLocal
           ELSE CostoTotalSpringDollar END) CostoTotalSpring
, SUM(CASE WHEN @moneda = 'LO'
           THEN CostoTotalSpringLocal
           ELSE CostoTotalSpringDollar END) CostoTotal
, SUM(CASE WHEN @moneda = 'LO'
           THEN ProvisionTotalSpringLocal
           ELSE ProvisionTotalSpringDollar END) ProvisionTotalSpring
, SUM(CASE WHEN @moneda = 'LO'
           THEN ProvisionTotalSpringLocal
           ELSE ProvisionTotalSpringDollar END) ProvisionTotal
, 'N' FlagOmitir
, GETDATE() FechaCarga
, 'A'
, @a_usuario 		 
, GETDATE() UltimaFechaModif 	
FROM

(

--Cuentas de COSTO
SELECT 
  vendor
, SUM(postedamountlocal) CostoTotalSpringLocal		 
, 0 ProvisionTotalSpringLocal	
, SUM(postedamountdollar) CostoTotalSpringDollar	 
, 0 ProvisionTotalSpringDollar		 
FROM 
  VWVoucherDetail vd
, ac_reportrules rr
WHERE
    vd.companyOwner = @a_CompaniaSocio
AND vd.period LIKE @period_like
AND vd.ledger IN 
	(SELECT ledger FROM LedgerGroupLedger 
         WHERE ledgerGroup = @a_ledgerGroup)
AND rr.ReportCode = @a_reporte
AND rr.Group1 = '01'
AND rr.Group2 = '01'
AND vd.account BETWEEN rr.AccountFrom AND rr.AccountTo
GROUP BY vendor

UNION

--Cuentas de PROVISIÓN
SELECT 
  vendor
, 0 CostoTotalSpringLocal		 
, SUM(postedamountlocal) ProvisionTotalSpringLocal	
, 0 CostoTotalSpringDollar		 
, SUM(postedamountlocal) ProvisionTotalSpringDollar			 
FROM 
  arpl.dbo.VWVoucherDetail vd
, arpl.dbo.ac_reportrules rr
WHERE
    vd.companyOwner = @a_CompaniaSocio
AND vd.period LIKE @period_like
AND vd.ledger IN 
	(SELECT ledger FROM LedgerGroupLedger 
         WHERE ledgerGroup = @a_ledgerGroup)
AND rr.ReportCode = @a_reporte
AND rr.Group1 = '01'
AND rr.Group2 = '02'
AND vd.account BETWEEN rr.AccountFrom AND rr.AccountTo
GROUP BY vendor
) u
GROUP BY vendor

SELECT COUNT(*) FROM AC_SUNAT_Valores
WHERE  
    companiasocio = @a_CompaniaSocio
AND ejercicio = @ejercicio
 

RETURN 1
--*/

END


