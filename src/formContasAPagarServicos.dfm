inherited frmContasAPagarServicos: TfrmContasAPagarServicos
  Caption = 'frmContasAPagarServicos'
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
        HorzScrollBar.Range = 230
        VertScrollBar.Margin = 6
        VertScrollBar.Range = 146
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        TabOrder = 0
        object Label2: TLabel
          Left = 6
          Top = 52
          Width = 135
          Height = 16
          Caption = 'IDServicoTerceirizado'
          FocusControl = EditIDServicoTerceirizado
        end
        object Label3: TLabel
          Left = 146
          Top = 52
          Width = 86
          Height = 16
          Caption = 'IDContratacao'
          FocusControl = EditIDContratacao
        end
        object Label4: TLabel
          Left = 6
          Top = 98
          Width = 32
          Height = 16
          Caption = 'Valor'
          FocusControl = EditValor
        end
        object Label5: TLabel
          Left = 103
          Top = 98
          Width = 100
          Height = 16
          Caption = 'DataVencimento'
          FocusControl = EditDataVencimento
        end
        object EditIDServicoTerceirizado: TDBEdit
          Left = 6
          Top = 70
          Width = 76
          Height = 24
          DataField = 'IDServicoTerceirizado'
          DataSource = srcSelf
          TabOrder = 0
        end
        object EditIDContratacao: TDBEdit
          Left = 146
          Top = 70
          Width = 78
          Height = 24
          DataField = 'IDContratacao'
          DataSource = srcSelf
          TabOrder = 1
        end
        object EditValor: TDBEdit
          Left = 6
          Top = 116
          Width = 91
          Height = 24
          DataField = 'Valor'
          DataSource = srcSelf
          TabOrder = 2
        end
        object EditDataVencimento: TDBEdit
          Left = 103
          Top = 116
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
    TableName = 'contasapagarservicos'
  end
end
