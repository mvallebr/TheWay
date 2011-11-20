inherited frmContasAPagarProdutos: TfrmContasAPagarProdutos
  Caption = 'frmContasAPagarProdutos'
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
        HorzScrollBar.Range = 297
        VertScrollBar.Margin = 6
        VertScrollBar.Range = 100
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        TabOrder = 0
        object Label2: TLabel
          Left = 130
          Top = 6
          Width = 60
          Height = 16
          Caption = 'IDProduto'
          FocusControl = EditIDProduto
        end
        object Label3: TLabel
          Left = 214
          Top = 6
          Width = 61
          Height = 16
          Caption = 'IDCompra'
          FocusControl = EditIDCompra
        end
        object Label4: TLabel
          Left = 6
          Top = 52
          Width = 32
          Height = 16
          Caption = 'Valor'
          FocusControl = EditValor
        end
        object Label5: TLabel
          Left = 103
          Top = 52
          Width = 100
          Height = 16
          Caption = 'DataVencimento'
          FocusControl = EditDataVencimento
        end
        object EditIDProduto: TDBEdit
          Left = 130
          Top = 25
          Width = 78
          Height = 24
          DataField = 'IDProduto'
          DataSource = srcSelf
          TabOrder = 0
        end
        object EditIDCompra: TDBEdit
          Left = 214
          Top = 25
          Width = 76
          Height = 24
          DataField = 'IDCompra'
          DataSource = srcSelf
          TabOrder = 1
        end
        object EditValor: TDBEdit
          Left = 6
          Top = 70
          Width = 91
          Height = 24
          DataField = 'Valor'
          DataSource = srcSelf
          TabOrder = 2
        end
        object EditDataVencimento: TDBEdit
          Left = 103
          Top = 70
          Width = 91
          Height = 24
          DataField = 'DataVencimento'
          DataSource = srcSelf
          TabOrder = 3
        end
      end
    end
  end
  inherited dtsSelf: TZMySqlTable
    TableName = 'contasapagarprodutos'
  end
end
