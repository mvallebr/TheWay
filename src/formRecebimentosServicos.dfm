inherited frmRecebimentosServicos: TfrmRecebimentosServicos
  Caption = 'frmRecebimentosServicos'
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
        HorzScrollBar.Range = 431
        VertScrollBar.Margin = 6
        VertScrollBar.Range = 103
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        TabOrder = 0
        object Label1: TLabel
          Left = 7
          Top = 7
          Width = 72
          Height = 16
          Caption = 'IDComanda'
          FocusControl = EditIDComanda
        end
        object Label2: TLabel
          Left = 84
          Top = 7
          Width = 114
          Height = 16
          Caption = 'IDServicoPrestado'
          FocusControl = EditIDServicoPrestado
        end
        object Label3: TLabel
          Left = 201
          Top = 7
          Width = 140
          Height = 16
          Caption = 'IDRecebimentoServico'
          FocusControl = EditIDRecebimentoServico
        end
        object Label4: TLabel
          Left = 343
          Top = 7
          Width = 32
          Height = 16
          Caption = 'Valor'
          FocusControl = EditValor
        end
        object Label5: TLabel
          Left = 7
          Top = 54
          Width = 100
          Height = 16
          Caption = 'DataVencimento'
          FocusControl = EditDataVencimento
        end
        object Label6: TLabel
          Left = 112
          Top = 54
          Width = 110
          Height = 16
          Caption = 'DataRecebimento'
          FocusControl = EditDataRecebimento
        end
        object Label7: TLabel
          Left = 225
          Top = 54
          Width = 92
          Height = 16
          Caption = 'ValorRecebido'
          FocusControl = EditValorRecebido
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
        object EditIDServicoPrestado: TDBEdit
          Left = 84
          Top = 26
          Width = 67
          Height = 24
          DataField = 'IDServicoPrestado'
          DataSource = srcSelf
          TabOrder = 1
        end
        object EditIDRecebimentoServico: TDBEdit
          Left = 201
          Top = 26
          Width = 67
          Height = 24
          DataField = 'IDRecebimentoServico'
          DataSource = srcSelf
          TabOrder = 2
        end
        object EditValor: TDBEdit
          Left = 343
          Top = 26
          Width = 80
          Height = 24
          DataField = 'Valor'
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
        object EditDataRecebimento: TDBEdit
          Left = 112
          Top = 73
          Width = 80
          Height = 24
          DataField = 'DataRecebimento'
          DataSource = srcSelf
          TabOrder = 5
        end
        object EditValorRecebido: TDBEdit
          Left = 225
          Top = 73
          Width = 80
          Height = 24
          DataField = 'ValorRecebido'
          DataSource = srcSelf
          TabOrder = 6
        end
      end
    end
  end
  inherited dtsSelf: TZMySqlTable
    TableName = 'recebimentosservicos'
  end
end
