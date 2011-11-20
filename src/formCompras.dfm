inherited frmCompras: TfrmCompras
  Left = 229
  Top = 185
  Caption = 'frmCompras'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Height = 32
      Caption = 'Cadastro de  compras efetuadas:'
    end
    inherited DBCtrlGrid: TDBCtrlGrid
      Top = 33
      Height = 422
      PanelHeight = 140
    end
  end
  inherited pgctl: TPageControl
    ActivePage = TabSheet1
    TabIndex = 1
    inherited tabDetails: TTabSheet
      object ScrollBox: TScrollBox
        Left = 0
        Top = 0
        Width = 492
        Height = 425
        HorzScrollBar.Margin = 6
        HorzScrollBar.Range = 409
        VertScrollBar.Margin = 6
        VertScrollBar.Range = 100
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        TabOrder = 0
        object Label2: TLabel
          Left = 6
          Top = 6
          Width = 61
          Height = 16
          Caption = 'IDCompra'
          FocusControl = EditIDCompra
        end
        object Label4: TLabel
          Left = 237
          Top = 6
          Width = 83
          Height = 16
          Caption = 'IDFornecedor'
          FocusControl = EditIDFornecedor
        end
        object Label6: TLabel
          Left = 6
          Top = 52
          Width = 83
          Height = 16
          Caption = 'IDProfissional'
          FocusControl = EditIDProfissional
        end
        object Label7: TLabel
          Left = 95
          Top = 52
          Width = 31
          Height = 16
          Caption = 'Total'
          FocusControl = EditTotal
        end
        object Label8: TLabel
          Left = 192
          Top = 52
          Width = 77
          Height = 16
          Caption = 'DataCompra'
          FocusControl = EditDataCompra
        end
        object EditIDCompra: TDBEdit
          Left = 6
          Top = 24
          Width = 77
          Height = 24
          DataField = 'IDCompra'
          DataSource = srcSelf
          TabOrder = 0
        end
        object EditIDFornecedor: TDBEdit
          Left = 237
          Top = 24
          Width = 77
          Height = 24
          DataField = 'IDFornecedor'
          DataSource = srcSelf
          TabOrder = 1
        end
        object EditIDProfissional: TDBEdit
          Left = 6
          Top = 70
          Width = 77
          Height = 24
          DataField = 'IDProfissional'
          DataSource = srcSelf
          TabOrder = 2
        end
        object EditTotal: TDBEdit
          Left = 95
          Top = 70
          Width = 91
          Height = 24
          DataField = 'Total'
          DataSource = srcSelf
          TabOrder = 3
        end
        object EditDataCompra: TDBEdit
          Left = 192
          Top = 70
          Width = 91
          Height = 24
          DataField = 'DataCompra'
          DataSource = srcSelf
          TabOrder = 4
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 2
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 492
        Height = 425
        Align = alClient
        DataSource = srcProdutos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  inherited dtsSelf: TZMySqlTable
    TableName = 'compras'
  end
  object srcProdutos: TDataSource
    DataSet = dtsProdutos
    Left = 64
    Top = 392
  end
  object dtsProdutos: TZMySqlQuery
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    ExtraOptions = [moStoreResult]
    Macros = <>
    DataSource = srcSelf
    Sql.Strings = (
      'select produtos.Descricao,relcomprasprodutos.Quantidade,'
      'relcomprasprodutos.ValorPago'
      ' from produtos, relcomprasprodutos'
      'where'
      '('
      '(relcomprasprodutos.IDCompra=:IDCompra) and'
      '(relcomprasprodutos.IDProduto=produtos.IDProduto) '
      ')')
    RequestLive = False
    Left = 96
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDCompra'
        ParamType = ptUnknown
      end>
  end
end
