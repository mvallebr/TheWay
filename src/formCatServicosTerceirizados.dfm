inherited frmCatServicosTerceirizados: TfrmCatServicosTerceirizados
  Caption = 'frmCatServicosTerceirizados'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pgctl: TPageControl
    inherited tabDetails: TTabSheet
      TabVisible = False
    end
  end
  inherited dtsSelf: TZMySqlTable
    TableName = 'categoriasservi'#231'osterceirizados'
  end
end
