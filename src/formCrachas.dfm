inherited frmCrachas: TfrmCrachas
  Left = 339
  Top = 181
  Caption = 'Crach'#225's de comandas'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pgctl: TPageControl
    inherited tabList: TTabSheet
      inherited DBGrid1: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'IDCracha'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TextoCodBarras'
            Width = 221
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EmUsoAtualmente'
            PickList.Strings = (
              '0'
              '1')
            Visible = True
          end>
      end
    end
    inherited tabDetails: TTabSheet
      TabVisible = False
    end
  end
  inherited FilterDlg: TFilterDialog
    Left = 360
    Top = 16
  end
  inherited ImageList1: TImageList
    Left = 320
    Top = 16
  end
  inherited srcSelf: TDataSource
    Left = 416
    Top = 18
  end
  inherited dtsSelf: TZMySqlTable
    IndexFieldNames = 'TextoCodBarras'
    BeforePost = dtsSelfBeforePost
    TableName = 'crachas'
    Left = 416
    Top = 48
    object dtsSelfIDLoja: TIntegerField
      FieldName = 'IDLoja'
      Required = True
    end
    object dtsSelfIDCracha: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'IDCracha'
      ReadOnly = True
    end
    object dtsSelfTextoCodBarras: TStringField
      DisplayLabel = 'Texto do C'#243'digo de barras'
      DisplayWidth = 13
      FieldName = 'TextoCodBarras'
      Required = True
      Size = 50
    end
    object dtsSelfEmUsoAtualmente: TIntegerField
      DisplayLabel = 'Em Uso Atualmente'
      FieldName = 'EmUsoAtualmente'
      MaxValue = 1
    end
  end
end
