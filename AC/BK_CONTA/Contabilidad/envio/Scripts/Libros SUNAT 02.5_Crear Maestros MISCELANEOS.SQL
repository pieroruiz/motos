-- Columns
CREATE TABLE [dbo].[MA_MaestroMiscelaneoHeader]
(
[AplicacionCodigo] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MaestroCodigo] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DescripcionLocal] [char] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DescripcionIngles] [char] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaestroSistemaFlag] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Codigo01Titulo] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Codigo01Flag] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Codigo01Longitud] [int] NULL,
[Codigo02Titulo] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Codigo02Longitud] [int] NULL,
[Codigo02Flag] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Codigo03Titulo] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Codigo03Longitud] [int] NULL,
[Numero01Titulo] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Codigo03Flag] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Descripcion01Titulo] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Estado] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UltimoUsuario] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Numero01Flag] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UltimaFechaModif] [datetime] NULL,
[Descripcion01Flag] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)

GO
-- Constraints and Indexes
ALTER TABLE [dbo].[MA_MaestroMiscelaneoHeader] ADD CONSTRAINT [PK__MA_MaestroMiscel__1F8F5C77] PRIMARY KEY CLUSTERED  ([AplicacionCodigo], [MaestroCodigo])
GO
-- Permissions
GRANT REFERENCES ON  [dbo].[MA_MaestroMiscelaneoHeader] TO [public]
GRANT SELECT ON  [dbo].[MA_MaestroMiscelaneoHeader] TO [public]
GRANT INSERT ON  [dbo].[MA_MaestroMiscelaneoHeader] TO [public]
GRANT DELETE ON  [dbo].[MA_MaestroMiscelaneoHeader] TO [public]
GRANT UPDATE ON  [dbo].[MA_MaestroMiscelaneoHeader] TO [public]
GO

-- Columns
CREATE TABLE [dbo].[MA_MaestroMiscelaneoDetalle]
(
[AplicacionCodigo] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MaestroCodigo] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ValorCodigo] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Codigo01] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DescripcionLocal] [char] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Codigo02] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DescripcionIngles] [char] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Codigo03] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Numero01] [int] NULL,
[Descripcion01] [char] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Estado] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UltimoUsuario] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UltimaFechaModif] [datetime] NULL
)

GO
-- Constraints and Indexes
ALTER TABLE [dbo].[MA_MaestroMiscelaneoDetalle] ADD CONSTRAINT [PK__MA_MaestroMiscel__1DA71405] PRIMARY KEY CLUSTERED  ([AplicacionCodigo], [MaestroCodigo], [ValorCodigo])
GO
-- Foreign Keys
ALTER TABLE [dbo].[MA_MaestroMiscelaneoDetalle] ADD CONSTRAINT [FK__MA_MaestroMiscel__208380B0] FOREIGN KEY ([AplicacionCodigo], [MaestroCodigo]) REFERENCES [dbo].[MA_MaestroMiscelaneoHeader] ([AplicacionCodigo], [MaestroCodigo])
GO
-- Permissions
GRANT REFERENCES ON  [dbo].[MA_MaestroMiscelaneoDetalle] TO [public]
GRANT SELECT ON  [dbo].[MA_MaestroMiscelaneoDetalle] TO [public]
GRANT INSERT ON  [dbo].[MA_MaestroMiscelaneoDetalle] TO [public]
GRANT DELETE ON  [dbo].[MA_MaestroMiscelaneoDetalle] TO [public]
GRANT UPDATE ON  [dbo].[MA_MaestroMiscelaneoDetalle] TO [public]
GO