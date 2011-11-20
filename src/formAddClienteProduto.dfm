inherited frmAddClienteProduto: TfrmAddClienteProduto
  Left = 237
  Top = 275
  Caption = 'Adicionar desconto de produto para cliente'
  ClientHeight = 150
  ClientWidth = 327
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Gradient1: TGradient
    Width = 327
    Height = 150
  end
  object Bevel1: TBevel
    Left = 13
    Top = 7
    Width = 300
    Height = 91
  end
  object lbProduto1: TLabel
    Left = 98
    Top = 13
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'Produto: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 50
    Top = 39
    Width = 91
    Height = 13
    Alignment = taRightJustify
    Caption = 'Desconto Fixo(R$):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 21
    Top = 65
    Width = 120
    Height = 13
    Alignment = taRightJustify
    Caption = 'Desconto Percentual (%):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbProduto: TLabel
    Left = 143
    Top = 13
    Width = 37
    Height = 13
    Caption = 'Produto'
    Transparent = True
  end
  object CancelBtn: TButton
    Left = 172
    Top = 109
    Width = 75
    Height = 24
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 0
  end
  object OKBtn: TButton
    Left = 85
    Top = 109
    Width = 76
    Height = 24
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object edtDescontoFixo: TEdit
    Left = 143
    Top = 37
    Width = 163
    Height = 21
    TabOrder = 2
    Text = '0,0'
    OnChange = edtDescontoFixoChange
  end
  object edtDescontoPercentual: TEdit
    Left = 143
    Top = 65
    Width = 163
    Height = 21
    TabOrder = 3
    Text = '0,0'
    OnChange = edtDescontoPercentualChange
  end
end
