inherited frmCargos: TfrmCargos
  Caption = 'Cadastro de cargos de profissionais'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pgctl: TPageControl
    inherited tabList: TTabSheet
      inherited DBGrid1: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'Descricao'
            Visible = True
          end>
      end
    end
    inherited tabDetails: TTabSheet
      TabVisible = False
    end
  end
  inherited dtsSelf: TZMySqlTable
    IndexFieldNames = 'Descricao'
    TableName = 'cargos'
    object dtsSelfIDCargo: TIntegerField
      FieldName = 'IDCargo'
      ReadOnly = True
    end
    object dtsSelfDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
  end
end
