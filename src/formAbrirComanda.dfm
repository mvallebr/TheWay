inherited frmAbrirComanda: TfrmAbrirComanda
  Left = 123
  Top = 243
  Width = 798
  Height = 479
  Caption = 'Abrir comanda'
  OldCreateOrder = True
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Gradient1: TGradient
    Left = 0
    Top = 0
    Width = 790
    Height = 447
    Align = alClient
    ColorBegin = clSilver
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
    Width = 753
    Height = 161
  end
  object Label2: TLabel
    Left = 16
    Top = 9
    Width = 208
    Height = 36
    Caption = 'Abrir comanda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -31
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbLegenda: TLabel
    Left = 24
    Top = 280
    Width = 737
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
  object lbCliente: TLabel
    Left = 24
    Top = 152
    Width = 65
    Height = 20
    Caption = 'lbCliente'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lbCracha: TLabel
    Left = 24
    Top = 112
    Width = 67
    Height = 20
    Caption = 'lbCracha'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object edtEntrada: TEdit
    Left = 24
    Top = 64
    Width = 321
    Height = 28
    Hint = 
      'Passe o C'#243'digo de barras em seu crach'#225', no cart'#227'o do cliente (ou' +
      ' digite seu n'#250'mero) e na comanda a ser aberta. Tecle <ENTER> sem' +
      ' digitar nada para fazer busca de cliente.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 13
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnKeyDown = edtEntradaKeyDown
  end
  object Panel1: TPanel
    Left = 16
    Top = 200
    Width = 753
    Height = 65
    TabOrder = 1
    object chkCliente: TCheckBox
      Left = 8
      Top = 18
      Width = 193
      Height = 33
      TabStop = False
      Caption = #201' cliente <F5>'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object btnBuscar: TBitBtn
      Left = 256
      Top = 18
      Width = 193
      Height = 33
      Caption = 'Buscar por nome <F6>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = btnBuscarClick
    end
    object btnCadastrarCliente: TBitBtn
      Left = 552
      Top = 18
      Width = 193
      Height = 33
      Caption = 'Cadastrar cliente <F7>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = btnCadastrarClienteClick
    end
  end
end
