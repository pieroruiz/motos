INSERT SY_Reporte (AplicacionCodigo, ReporteCodigo, DescripcionLocal, Topico, 
PeriodoImplementacion, VentanaObjeto, ParametrosFlag, FormatoDefaultFlag, Estado)
VALUES ('AC', 'P30', 'Equivalencias Maestros SUNAT - Spring', 'MIS', '201001', 'w_ac_300_sunat_maestros', 'N', 'P', 'A')
GO

INSERT SY_ReporteEmpresa (AplicacionCodigo, ReporteCodigo, Empresa)
VALUES ('AC', 'P30', 'FUSION')
GO

INSERT SY_Reporte (AplicacionCodigo, ReporteCodigo, DescripcionLocal, Topico, 
PeriodoImplementacion, VentanaObjeto, ParametrosFlag, FormatoDefaultFlag, Estado)
VALUES ('AC', '301', 'Sunat Analiticos y Balances', 'MIS', '201001', 'w_ac_rep_301_sunat_contabilidad', 'N', 'P', 'A')
GO

INSERT SY_ReporteEmpresa (AplicacionCodigo, ReporteCodigo, Empresa)
VALUES ('AC', '301', 'FUSION')

GO

INSERT SY_Reporte (AplicacionCodigo, ReporteCodigo, DescripcionLocal, Topico, 
PeriodoImplementacion, VentanaObjeto, ParametrosFlag, FormatoDefaultFlag, Estado)
VALUES ('AC', '302', 'Sunat - Otros', 'MIS', '201001', 'w_ac_rep_302_sunat_rgv', 'N', 'P', 'A')
GO

INSERT SY_ReporteEmpresa (AplicacionCodigo, ReporteCodigo, Empresa)
VALUES ('AC', '302', 'FUSION')

GO


INSERT SY_Reporte (AplicacionCodigo, ReporteCodigo, DescripcionLocal, Topico, 
PeriodoImplementacion, VentanaObjeto, ParametrosFlag, FormatoDefaultFlag, Estado)
VALUES ('AC', '303', 'Sunat - CXP, Logistica, Comercial', 'MIS', '201001', 'w_ac_rep_303_sunat_otros', 'N', 'P', 'A')
GO

INSERT SY_ReporteEmpresa (AplicacionCodigo, ReporteCodigo, Empresa)
VALUES ('AC', '303', 'FUSION')

GO

INSERT SY_Reporte (AplicacionCodigo, ReporteCodigo, DescripcionLocal, Topico, 
PeriodoImplementacion, VentanaObjeto, ParametrosFlag, FormatoDefaultFlag, Estado)
VALUES ('AC', '304', 'Sunat - Activos Fijos', 'MIS', '201001', 'w_ac_rep_304_sunat_activos', 'N', 'P', 'A')
GO

INSERT SY_ReporteEmpresa (AplicacionCodigo, ReporteCodigo, Empresa)
VALUES ('AC', '304', 'FUSION')
GO
