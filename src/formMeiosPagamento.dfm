inherited frmMeiosPagamento: TfrmMeiosPagamento
  Left = 140
  Top = 177
  Width = 689
  Caption = 'Cadastro de meios de pagamento'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  inherited ToolBar1: TToolBar
    Width = 681
    inherited DBNavigator1: TDBNavigator
      Width = 342
    end
  end
  inherited pgctl: TPageControl
    Width = 681
    ActivePage = tabDetails
    inherited tabList: TTabSheet
      TabVisible = False
      inherited DBGrid1: TDBGrid
        Width = 673
        DataSource = nil
        Columns = <
          item
            Expanded = False
            FieldName = 'Descricao'
            Width = 277
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EntraEmCaixa'
            PickList.Strings = (
              '0'
              '1')
            Width = 134
            Visible = True
          end>
      end
    end
    inherited tabDetails: TTabSheet
      Caption = 'Lista'
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 0
        Top = 0
        Width = 673
        Height = 276
        Align = alClient
        AllowDelete = False
        ColCount = 1
        Color = clWhite
        DataSource = srcSelf
        PanelBorder = gbNone
        PanelHeight = 27
        PanelWidth = 657
        ParentColor = False
        TabOrder = 0
        RowCount = 10
        SelectedColor = clSkyBlue
        object Label1: TLabel
          Left = 0
          Top = 8
          Width = 65
          Height = 16
          Caption = 'Descri'#231#227'o:'
        end
        object Label2: TLabel
          Left = 296
          Top = 9
          Width = 78
          Height = 16
          Caption = 'Des'#225'gio (%):'
        end
        object DBEdit1: TDBEdit
          Left = 64
          Top = 1
          Width = 225
          Height = 24
          DataField = 'Descricao'
          DataSource = srcSelf
          TabOrder = 0
        end
        object DBCheckBox1: TDBCheckBox
          Left = 502
          Top = 5
          Width = 153
          Height = 15
          Caption = 'Valor entra no caixa'
          DataField = 'EntraEmCaixa'
          DataSource = srcSelf
          TabOrder = 1
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBEdit2: TDBEdit
          Left = 376
          Top = 1
          Width = 113
          Height = 24
          DataField = 'Desagio'
          DataSource = srcSelf
          TabOrder = 2
        end
      end
    end
  end
  inherited FilterDlg: TFilterDialog
    Left = 216
  end
  inherited ImageList1: TImageList
    Left = 176
  end
  inherited srcSelf: TDataSource
    Left = 424
    Top = 2
  end
  inherited dtsSelf: TZMySqlTable
    TableName = 'meiopagamento'
    Active = True
    Left = 424
    Top = 32
    object dtsSelfIDMeioPagamento: TIntegerField
      FieldName = 'IDMeioPagamento'
    end
    object dtsSelfDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Size = 50
    end
    object dtsSelfDesagio: TFloatField
      DefaultExpression = '0'
      DisplayLabel = 'Des'#225'gio (%)'
      FieldName = 'Desagio'
      Required = True
      MaxValue = 100
    end
    object dtsSelfEntraEmCaixa: TIntegerField
      DisplayLabel = 'Valor Entra no caixa?'
      FieldName = 'EntraEmCaixa'
      MaxValue = 1
    end
  end
end
