inherited frmCatFornecedoresTerceirizados: TfrmCatFornecedoresTerceirizados
  Left = 301
  Top = 176
  Caption = 'frmCatFornecedoresTerceirizados'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pgctl: TPageControl
    inherited tabDetails: TTabSheet
      TabVisible = False
    end
  end
  inherited dtsSelf: TZMySqlTable
    TableName = 'categoriasservi'#231'osterceirizados'
    object dtsSelfIDCategoriaServicoTerc: TIntegerField
      FieldName = 'IDCategoriaServicoTerc'
      ReadOnly = True
    end
    object dtsSelfDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
  end
end
