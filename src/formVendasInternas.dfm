inherited frmVendasInternas: TfrmVendasInternas
  Left = 261
  Top = 143
  Caption = 'frmVendasInternas'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Height = 32
      Caption = 'Cadastro de vendas internas efetuadas:'
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
        HorzScrollBar.Range = 359
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
          HorzScrollBar.Range = 389
          VertScrollBar.Margin = 6
          VertScrollBar.Range = 57
          Align = alClient
          AutoScroll = False
          BorderStyle = bsNone
          TabOrder = 0
          object Label3: TLabel
            Left = 128
            Top = 7
            Width = 83
            Height = 16
            Caption = 'IDProfissional'
            FocusControl = EditIDProfissional
          end
          object Label4: TLabel
            Left = 214
            Top = 7
            Width = 84
            Height = 16
            Caption = 'TotalCobrado'
            FocusControl = EditTotalCobrado
          end
          object Label5: TLabel
            Left = 302
            Top = 7
            Width = 69
            Height = 16
            Caption = 'DataVenda'
            FocusControl = EditDataVenda
          end
          object EditIDProfissional: TDBEdit
            Left = 128
            Top = 26
            Width = 68
            Height = 24
            DataField = 'IDProfissional'
            DataSource = srcSelf
            TabOrder = 0
          end
          object EditTotalCobrado: TDBEdit
            Left = 214
            Top = 26
            Width = 80
            Height = 24
            DataField = 'TotalCobrado'
            DataSource = srcSelf
            TabOrder = 1
          end
          object EditDataVenda: TDBEdit
            Left = 302
            Top = 26
            Width = 80
            Height = 24
            DataField = 'DataVenda'
            DataSource = srcSelf
            TabOrder = 2
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
    TableName = 'vendasinternas'
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
      'select produtos.Descricao,relvendasinternasprodutos.Quantidade,'
      'relvendasinternasprodutos.ValorRecebido'
      ' from produtos, relvendasinternasprodutos'
      'where'
      '('
      '(relvendasinternasprodutos.IDVendaInterna=:IDVendaInterna) and'
      '(relvendasinternasprodutos.IDProduto=produtos.IDProduto) '
      ')')
    RequestLive = False
    Left = 96
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDVendaInterna'
        ParamType = ptUnknown
      end>
  end
end
