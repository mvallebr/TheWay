inherited frmRecebimentosProdutos: TfrmRecebimentosProdutos
  Caption = 'frmRecebimentosProdutos'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  inherited pgctl: TPageControl
    ActivePage = tabDetails
    TabIndex = 1
    inherited tabDetails: TTabSheet
      object ScrollBox: TScrollBox
        Left = 0
        Top = 0
        Width = 469
        Height = 276
        HorzScrollBar.Margin = 6
        HorzScrollBar.Range = 431
        VertScrollBar.Margin = 6
        VertScrollBar.Range = 103
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        TabOrder = 0
        object Label2: TLabel
          Left = 129
          Top = 7
          Width = 60
          Height = 16
          Caption = 'IDProduto'
          FocusControl = EditIDProduto
        end
        object Label3: TLabel
          Left = 204
          Top = 7
          Width = 72
          Height = 16
          Caption = 'IDComanda'
          FocusControl = EditIDComanda
        end
        object Label4: TLabel
          Left = 281
          Top = 7
          Width = 53
          Height = 16
          Caption = 'IDVenda'
          FocusControl = EditIDVenda
        end
        object Label5: TLabel
          Left = 356
          Top = 7
          Width = 141
          Height = 16
          Caption = 'IDRecebimentoProduto'
          FocusControl = EditIDRecebimentoProduto
        end
        object Label6: TLabel
          Left = 7
          Top = 54
          Width = 100
          Height = 16
          Caption = 'DataVencimento'
          FocusControl = EditDataVencimento
        end
        object Label7: TLabel
          Left = 112
          Top = 54
          Width = 32
          Height = 16
          Caption = 'Valor'
          FocusControl = EditValor
        end
        object Label8: TLabel
          Left = 199
          Top = 54
          Width = 110
          Height = 16
          Caption = 'DataRecebimento'
          FocusControl = EditDataRecebimento
        end
        object Label9: TLabel
          Left = 313
          Top = 54
          Width = 92
          Height = 16
          Caption = 'ValorRecebido'
          FocusControl = EditValorRecebido
        end
        object EditIDProduto: TDBEdit
          Left = 129
          Top = 26
          Width = 68
          Height = 24
          DataField = 'IDProduto'
          DataSource = srcSelf
          TabOrder = 0
        end
        object EditIDComanda: TDBEdit
          Left = 204
          Top = 26
          Width = 68
          Height = 24
          DataField = 'IDComanda'
          DataSource = srcSelf
          TabOrder = 1
        end
        object EditIDVenda: TDBEdit
          Left = 281
          Top = 26
          Width = 67
          Height = 24
          DataField = 'IDVenda'
          DataSource = srcSelf
          TabOrder = 2
        end
        object EditIDRecebimentoProduto: TDBEdit
          Left = 356
          Top = 26
          Width = 67
          Height = 24
          DataField = 'IDRecebimentoProduto'
          DataSource = srcSelf
          TabOrder = 3
        end
        object EditDataVencimento: TDBEdit
          Left = 7
          Top = 73
          Width = 80
          Height = 24
          DataField = 'DataVencimento'
          DataSource = srcSelf
          TabOrder = 4
        end
        object EditValor: TDBEdit
          Left = 112
          Top = 73
          Width = 80
          Height = 24
          DataField = 'Valor'
          DataSource = srcSelf
          TabOrder = 5
        end
        object EditDataRecebimento: TDBEdit
          Left = 199
          Top = 73
          Width = 80
          Height = 24
          DataField = 'DataRecebimento'
          DataSource = srcSelf
          TabOrder = 6
        end
        object EditValorRecebido: TDBEdit
          Left = 313
          Top = 73
          Width = 80
          Height = 24
          DataField = 'ValorRecebido'
          DataSource = srcSelf
          TabOrder = 7
        end
      end
    end
  end
  inherited FilterDlg: TFilterDialog
    Left = 240
    Top = 168
  end
  inherited ImageList1: TImageList
    Left = 208
    Top = 168
  end
  inherited dtsSelf: TZMySqlTable
    TableName = 'recebimentosprodutos'
  end
end
