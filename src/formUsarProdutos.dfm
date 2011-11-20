inherited frmUsarProdutos: TfrmUsarProdutos
  Left = 139
  Top = 209
  Width = 797
  Caption = 'Usar produto em servi'#231'o'
  OldCreateOrder = True
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Gradient1: TGradient
    Left = 0
    Top = 0
    Width = 789
    Height = 448
    Align = alClient
    ColorBegin = clGray
    ColorEnd = clWhite
    Reverse = True
    Style = gsLinearH
  end
  object Bevel4: TBevel
    Left = 8
    Top = 8
    Width = 777
    Height = 433
  end
  object Bevel2: TBevel
    Left = 16
    Top = 272
    Width = 761
    Height = 161
  end
  object Label2: TLabel
    Left = 16
    Top = 8
    Width = 348
    Height = 36
    Caption = 'Usar produto em servi'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -31
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbProfissional: TLabel
    Left = 24
    Top = 104
    Width = 101
    Height = 20
    Caption = 'lbProfissional'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lbProduto: TLabel
    Left = 24
    Top = 136
    Width = 71
    Height = 20
    Caption = 'lbProduto'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 64
    Top = 184
    Width = 66
    Height = 20
    Caption = 'Pre'#231'o  = '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbQuantidade: TLabel
    Left = 139
    Top = 184
    Width = 27
    Height = 20
    Alignment = taRightJustify
    Caption = 'Qtd'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 170
    Top = 184
    Width = 8
    Height = 20
    Caption = 'x'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbPreco: TLabel
    Left = 181
    Top = 184
    Width = 42
    Height = 20
    Caption = 'pre'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 249
    Top = 184
    Width = 10
    Height = 20
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbPrecoTotal: TLabel
    Left = 277
    Top = 182
    Width = 32
    Height = 25
    Caption = 'Qtd'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 64
    Top = 208
    Width = 665
    Height = 9
  end
  object lbLegenda: TLabel
    Left = 24
    Top = 280
    Width = 745
    Height = 145
    Alignment = taCenter
    AutoSize = False
    Caption = 'Passe o c'#243'digo de barras em seu crach'#225
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    WordWrap = True
  end
  object edtEntrada: TEdit
    Left = 24
    Top = 61
    Width = 297
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 13
    ParentFont = False
    TabOrder = 0
    OnKeyUp = edtEntradaKeyUp
  end
end
