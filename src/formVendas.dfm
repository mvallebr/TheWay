inherited frmVendas: TfrmVendas
  Left = 176
  Top = 139
  Caption = 'frmVendas'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Height = 32
      Caption = 'Cadastro de vendas efetuadas:'
    end
    inherited DBCtrlGrid: TDBCtrlGrid
      Top = 33
      Height = 422
      PanelHeight = 140
    end
  end
  inherited pgctl: TPageControl
    inherited tabDetails: TTabSheet
      object ScrollBox: TScrollBox
        Left = 0
        Top = 0
        Width = 492
        Height = 425
        HorzScrollBar.Margin = 6
        HorzScrollBar.Range = 366
        VertScrollBar.Margin = 6
        VertScrollBar.Range = 100
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        TabOrder = 0
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 0
          Width = 492
          Height = 425
          HorzScrollBar.Margin = 6
          HorzScrollBar.Range = 529
          VertScrollBar.Margin = 6
          VertScrollBar.Range = 57
          Align = alClient
          AutoScroll = False
          BorderStyle = bsNone
          TabOrder = 0
          object Label2: TLabel
            Left = 7
            Top = 7
            Width = 72
            Height = 16
            Caption = 'IDComanda'
            FocusControl = EditIDComanda
          end
          object Label3: TLabel
            Left = 84
            Top = 7
            Width = 84
            Height = 16
            Caption = 'TotalCobrado'
            FocusControl = EditTotalCobrado
          end
          object Label4: TLabel
            Left = 171
            Top = 7
            Width = 131
            Height = 16
            Caption = 'ComissaoProfissional'
            FocusControl = EditComissaoProfissional
          end
          object Label5: TLabel
            Left = 11
            Top = 63
            Width = 143
            Height = 16
            Caption = 'IDProfissionalVendedor'
            FocusControl = EditIDProfissionalVendedor
          end
          object Label6: TLabel
            Left = 10
            Top = 119
            Width = 69
            Height = 16
            Caption = 'DataVenda'
            FocusControl = EditDataVenda
          end
          object EditIDComanda: TDBEdit
            Left = 7
            Top = 26
            Width = 68
            Height = 24
            DataField = 'IDComanda'
            DataSource = srcSelf
            TabOrder = 0
          end
          object EditTotalCobrado: TDBEdit
            Left = 84
            Top = 26
            Width = 80
            Height = 24
            DataField = 'TotalCobrado'
            DataSource = srcSelf
            TabOrder = 1
          end
          object EditComissaoProfissional: TDBEdit
            Left = 171
            Top = 26
            Width = 80
            Height = 24
            DataField = 'ComissaoProfissional'
            DataSource = srcSelf
            TabOrder = 2
          end
          object EditIDProfissionalVendedor: TDBEdit
            Left = 11
            Top = 82
            Width = 68
            Height = 24
            DataField = 'IDProfissionalVendedor'
            DataSource = srcSelf
            TabOrder = 3
          end
          object EditDataVenda: TDBEdit
            Left = 10
            Top = 138
            Width = 80
            Height = 24
            DataField = 'DataVenda'
            DataSource = srcSelf
            TabOrder = 4
          end
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
    TableName = 'vendas'
    Active = True
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
      'select produtos.Descricao,relvendasprodutos.Quantidade,'
      'relvendasprodutos.Valor'
      ' from produtos, relvendasprodutos'
      'where'
      '('
      '(relvendasprodutos.IDVenda=:IDVenda) and'
      '(relvendasprodutos.IDProduto=produtos.IDProduto) '
      ')')
    RequestLive = False
    Left = 96
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDVenda'
        ParamType = ptUnknown
        Value = Null
      end>
  end
end
