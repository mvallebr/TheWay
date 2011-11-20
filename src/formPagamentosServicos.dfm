inherited frmPagamentosServicos: TfrmPagamentosServicos
  Caption = 'frmPagamentosServicos'
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
        HorzScrollBar.Range = 195
        VertScrollBar.Margin = 6
        VertScrollBar.Range = 284
        Align = alClient
        AutoScroll = False
        AutoSize = True
        BorderStyle = bsNone
        TabOrder = 0
        object Label2: TLabel
          Left = 166
          Top = 4
          Width = 135
          Height = 16
          Caption = 'IDServicoTerceirizado'
          FocusControl = EditIDServicoTerceirizado
        end
        object Label3: TLabel
          Left = 6
          Top = 58
          Width = 86
          Height = 16
          Caption = 'IDContratacao'
          FocusControl = EditIDContratacao
        end
        object Label4: TLabel
          Left = 98
          Top = 58
          Width = 32
          Height = 16
          Caption = 'Valor'
          FocusControl = EditValor
        end
        object Label5: TLabel
          Left = 6
          Top = 104
          Width = 100
          Height = 16
          Caption = 'DataVencimento'
          FocusControl = EditDataVencimento
        end
        object Label6: TLabel
          Left = 6
          Top = 150
          Width = 65
          Height = 16
          Caption = 'ValorPago'
          FocusControl = EditValorPago
        end
        object Label7: TLabel
          Left = 6
          Top = 196
          Width = 99
          Height = 16
          Caption = 'DataPagamento'
          FocusControl = EditDataPagamento
        end
        object EditIDServicoTerceirizado: TDBEdit
          Left = 166
          Top = 22
          Width = 77
          Height = 24
          DataField = 'IDServicoTerceirizado'
          DataSource = srcSelf
          TabOrder = 0
        end
        object EditIDContratacao: TDBEdit
          Left = 6
          Top = 76
          Width = 77
          Height = 24
          DataField = 'IDContratacao'
          DataSource = srcSelf
          TabOrder = 1
        end
        object EditValor: TDBEdit
          Left = 98
          Top = 76
          Width = 91
          Height = 24
          DataField = 'Valor'
          DataSource = srcSelf
          TabOrder = 2
        end
        object EditDataVencimento: TDBEdit
          Left = 6
          Top = 122
          Width = 91
          Height = 24
          DataField = 'DataVencimento'
          DataSource = srcSelf
          TabOrder = 3
        end
        object EditValorPago: TDBEdit
          Left = 6
          Top = 168
          Width = 91
          Height = 24
          DataField = 'ValorPago'
          DataSource = srcSelf
          TabOrder = 4
        end
        object EditDataPagamento: TDBEdit
          Left = 6
          Top = 214
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
    TableName = 'pagamentosservicos'
  end
end
