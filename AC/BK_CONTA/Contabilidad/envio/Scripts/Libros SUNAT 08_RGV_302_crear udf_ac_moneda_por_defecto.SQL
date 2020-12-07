CREATE FUNCTION udf_ac_moneda_por_defecto

/*
Fecha		Desarrollador	Comentario
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
14-Dic-2007	RichardG	Version Inicial

Obtiene moneda por defecto, uso inicial en SUNAT Formatos 3.8, 3.16


PROBAR

SELECT dbo.udf_ac_moneda_por_defecto('29420000')
*/ 
(
  @a_CompaniaSocio varchar(8)
)
RETURNS VARCHAR(2)
AS

BEGIN
DECLARE @moneda VARCHAR(2)

--Moneda
SELECT @moneda = MonedaPorDefecto
FROM CompaniaMast
WHERE CompaniaCodigo = SUBSTRING(@a_CompaniaSocio, 1, 6)

IF @moneda IS NULL
   SET @moneda = 'LO'

RETURN @moneda

END









