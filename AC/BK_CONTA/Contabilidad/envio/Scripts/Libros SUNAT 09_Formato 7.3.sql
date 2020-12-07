ALTER TABLE dbo.FA_Activo
ADD [LeasingContrato] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL

-- Columns
CREATE TABLE [dbo].[FA_ActivoFormato304]
(
[Activo] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TipoRegistro] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Periodo] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MontoRevaluado] [money] NULL,
[SituacionFlag] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Estado] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MontoDepreciacion] [money] NULL,
[UltimoUsuario] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UltimaFechaModif] [datetime] NULL
)

GO
-- Constraints and Indexes
ALTER TABLE [dbo].[FA_ActivoFormato304] ADD CONSTRAINT [PK__FA_ActivoFormato__53584DE9] PRIMARY KEY CLUSTERED  ([TipoRegistro], [Activo], [Periodo])
GO

-- Columns
CREATE TABLE [dbo].[FA_LeasingContrato]
(
[LeasingContrato] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CompaniaSocio] [char] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TipoArrendamiento] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FechaContrato] [datetime] NULL,
[Arrendador] [int] NULL,
[FechaInicioLeasing] [datetime] NULL,
[NumeroCuotas] [int] NULL,
[MonedaCodigo] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MontoLocal] [money] NULL,
[MontoDolares] [money] NULL,
[Estado] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UltimoUsuario] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UltimaFechaModif] [datetime] NULL,
[Descripcion] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)

GO
-- Constraints and Indexes
ALTER TABLE [dbo].[FA_LeasingContrato] ADD CONSTRAINT [PK__FA_LeasingContra__507BE13E] PRIMARY KEY CLUSTERED  ([LeasingContrato])
GO