
CREATE TABLE AC_SUNAT_Capital (
  CapitalId 			NUMERIC IDENTITY
, CompaniaSocio			VARCHAR(8)
, FlagAccion			VARCHAR(1)
, Ejercicio			SMALLINT
, ValorNominal  		MONEY 
, NumeroAccionesSuscritas	INT 
, NumeroAccionesPagadas		INT 
, NumeroAccionistas 		INT 
, UltimoUsuario 		VARCHAR(20) NULL
, UltimaFechaModif		DATETIME NULL
)
go

CREATE TABLE AC_SUNAT_CapitalDetalle (
  CapitalDetalleId 		NUMERIC IDENTITY
, CapitalId			NUMERIC
, Persona     			INT
, TipoAccion	   		VARCHAR(20)
, NumeroAcciones 		INT 
, UltimoUsuario 		VARCHAR(20) NULL
, UltimaFechaModif 		DATETIME NULL
)
go

--DROP INDEX AC_SUNAT_Valores.XAK1AC_SUNAT_Valores   
CREATE UNIQUE INDEX XAK1AC_SUNAT_Capital ON AC_SUNAT_Capital
(
  CompaniaSocio
, Ejercicio			   
)
go


ALTER TABLE AC_SUNAT_Capital
       ADD PRIMARY KEY NONCLUSTERED (CapitalId)
go

CREATE UNIQUE INDEX XAK1AC_SUNAT_CapitalDetalle ON AC_SUNAT_CapitalDetalle
(
  CapitalId			
, Persona 		   
)
go


ALTER TABLE AC_SUNAT_CapitalDetalle
       ADD PRIMARY KEY NONCLUSTERED (CapitalDetalleId)
go


--DROP TABLE AC_SUNAT_Valores
--go

CREATE TABLE AC_SUNAT_Valores (
  ValoresId 			NUMERIC IDENTITY
, CompaniaSocio			VARCHAR(8)
, Ejercicio			SMALLINT
, Persona     			INT
, DenominacionTitulo   		VARCHAR(20)
, ValorNominalUnitario 		MONEY NULL
, CantidadTitulo		MONEY NULL
, CostoTotalSpring		MONEY NULL
, CostoTotal 			MONEY NULL
, ProvisionTotalSpring		MONEY NULL
, ProvisionTotal		MONEY NULL
, FlagOmitir			VARCHAR(1) NULL
, FechaCarga			DATETIME NULL
, Estado			char(1) NULL
, UltimoUsuario 		VARCHAR(20) NULL
, UltimaFechaModif		DATETIME NULL
)
go

--DROP INDEX AC_SUNAT_Valores.XAK1AC_SUNAT_Valores   
CREATE UNIQUE INDEX XAK1AC_SUNAT_Valores ON AC_SUNAT_Valores
(
  CompaniaSocio
, Ejercicio			   
, Persona     			 
, DenominacionTitulo
, ValorNominalUnitario
)
go


ALTER TABLE AC_SUNAT_Valores
       ADD PRIMARY KEY NONCLUSTERED (ValoresId)
go