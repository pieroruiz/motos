ALTER TABLE TipoPago
ADD CodigoFiscal char(3) 
GO
ALTER TABLE Banco
ADD CodigoFiscal char(3) 
GO
ALTER TABLE MonedaMast
ADD CodigoFiscal char(3) 
GO
ALTER TABLE WH_ItemTipo
ADD CodigoFiscal char(3) 
GO
ALTER TABLE Primemst
ADD CodigoFiscal char(3) 
GO
ALTER TABLE TipoDocumentoCXP
ADD CodigoFiscal char(3) 
GO
ALTER TABLE WH_TransaccionMast
ADD CodigoFiscal char(3) 
GO
ALTER TABLE WH_AlmacenMast
ADD EstablecimientoFiscal char(4) 
GO
ALTER TABLE AccountMst 
ADD SUNATCostClasification Char (3)
GO
ALTER TABLE WH_TransaccionHeader
ADD Consignatario Int
GO
ALTER TABLE FA_Activo
ADD TipoIntangible Char (2)
GO
ALTER TABLE dbo.UnidadesMast
ADD CodigoFiscal char(3) 