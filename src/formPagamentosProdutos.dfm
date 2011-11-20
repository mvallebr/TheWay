inherited frmPagamentosProdutos: TfrmPagamentosProdutos
  Caption = 'frmPagamentosProdutos'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  inherited pgctl: TPageControl
    inherited tabDetails: TTabSheet
      object ScrollBox: TScrollBox
        Left = 0
        Top = 0
        Width = 469
        Height = 276
        HorzScrollBar.Margin = 6
        HorzScrollBar.Range = 214
        VertScrollBar.Margin = 6
        VertScrollBar.Range = 192
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        TabOrder = 0
        object Label2: TLabel
          Left = 131
          Top = 6
          Width = 60
          Height = 16
          Caption = 'IDProduto'
          FocusControl = EditIDProduto
        end
        object Label3: TLabel
          Left = 6
          Top = 52
          Width = 61
          Height = 16
          Caption = 'IDCompra'
          FocusControl = EditIDCompra
        end
        object Label4: TLabel
          Left = 89
          Top = 52
          Width = 32
          Height = 16
          Caption = 'Valor'
          FocusControl = EditValor
        end
        object Label5: TLabel
          Left = 6
          Top = 98
          Width = 100
          Height = 16
          Caption = 'DataVencimento'
          FocusControl = EditDataVencimento
        end
        object Label6: TLabel
          Left = 112
          Top = 98
          Width = 65
          Height = 16
          Caption = 'ValorPago'
          FocusControl = EditValorPago
        end
        object Label7: TLabel
          Left = 6
          Top = 144
          Width = 99
          Height = 16
          Caption = 'DataPagamento'
          FocusControl = EditDataPagamento
        end
        object EditIDProduto: TDBEdit
          Left = 131
          Top = 24
          Width = 77
          Height = 24
          DataField = 'IDProduto'
          DataSource = srcSelf
          TabOrder = 0
        end
        object EditIDCompra: TDBEdit
          Left = 6
          Top = 70
          Width = 77
          Height = 24
          DataField = 'IDCompra'
          DataSource = srcSelf
          TabOrder = 1
        end
        object EditValor: TDBEdit
          Left = 89
          Top = 70
          Width = 91
          Height = 24
          DataField = 'Valor'
          DataSource = srcSelf
          TabOrder = 2
        end
        object EditDataVencimento: TDBEdit
          Left = 6
          Top = 116
          Width = 91
          Height = 24
          DataField = 'DataVencimento'
          DataSource = srcSelf
          TabOrder = 3
        end
        object EditValorPago: TDBEdit
          Left = 112
          Top = 116
          Width = 91
          Height = 24
          DataField = 'ValorPago'
          DataSource = srcSelf
          TabOrder = 4
        end
        object EditDataPagamento: TDBEdit
          Left = 6
          Top = 162
          Width = 91
          Height = 24
          DataField = 'DataPagamento'
          DataSource = srcSelf
          TabOrder = 5
        end
      end
    end
  end
  inherited dtsSelf: TZMySqlTable
    TableName = 'pagamentosprodutos'
  end
end
