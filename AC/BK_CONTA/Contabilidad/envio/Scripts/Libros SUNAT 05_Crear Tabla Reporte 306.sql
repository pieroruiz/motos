CREATE TABLE [dbo].[AC_R306_Costos](
	[CompaniaSocio] [char](8) NOT NULL,
	[Ano] [char](4) NOT NULL,
	[Monto01] [money] NULL,
	[Monto02] [money] NULL,
	[Monto03] [money] NULL,
	[Monto04] [money] NULL,
	[Monto05] [money] NULL,
	[Monto06] [money] NULL,
	[Monto07] [money] NULL,
	[Monto08] [money] NULL,
	[Monto09] [money] NULL,
	[Monto10] [money] NULL,
	[Monto11] [money] NULL,
	[Monto12] [money] NULL,
	[Estado] [char](1) NULL,
	[UltimoUsuario] [char](20) NULL,
	[UltimaFechaModif] [datetime] NULL
)
GO 
ALTER TABLE AC_R306_Costos 
ADD PRIMARY KEY	(CompaniaSocio,Ano)

GO

--SQL2000
--CREATE TABLE [dbo].[AC_R306_Costos](
--	[CompaniaSocio] [char](8) NOT NULL,
--	[Ano] [char](4) NOT NULL,
--	[Monto01] [money] NULL,
--	[Monto02] [money] NULL,
--	[Monto03] [money] NULL,
--	[Monto04] [money] NULL,
--	[Monto05] [money] NULL,
--	[Monto06] [money] NULL,
--	[Monto07] [money] NULL,
--	[Monto08] [money] NULL,
--	[Monto09] [money] NULL,
--	[Monto10] [money] NULL,
--	[Monto11] [money] NULL,
--	[Monto12] [money] NULL,
--	[Estado] [char](1) NULL,
--	[UltimoUsuario] [char](20) NULL,
--	[UltimaFechaModif] [datetime] NULL,
--PRIMARY KEY CLUSTERED 
--(
--	[CompaniaSocio] ASC,
--	[Ano] ASC
--) WITH  FILLFACTOR = 90  ON [PRIMARY] 
--) ON [PRIMARY]
--GO
