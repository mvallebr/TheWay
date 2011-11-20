inherited frmAddFuncProf: TfrmAddFuncProf
  Left = 371
  Top = 283
  Caption = 'Adicionar profissional '#224' lista de funcion'#225'rios'
  ClientHeight = 194
  ClientWidth = 367
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  inherited Gradient1: TGradient
    Width = 367
    Height = 194
  end
  object Bevel1: TBevel
    Left = 13
    Top = 16
    Width = 348
    Height = 129
  end
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 73
    Height = 16
    Alignment = taRightJustify
    Caption = 'Profissional:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbProfissional: TLabel
    Left = 120
    Top = 24
    Width = 81
    Height = 16
    Caption = 'lbProfissional'
    Transparent = True
  end
  object Label2: TLabel
    Left = 24
    Top = 96
    Width = 91
    Height = 16
    Caption = 'Registro Legal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 90
    Top = 48
    Width = 23
    Height = 16
    Alignment = taRightJustify
    Caption = 'RG:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 84
    Top = 72
    Width = 29
    Height = 16
    Alignment = taRightJustify
    Caption = 'CPF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbRG: TLabel
    Left = 120
    Top = 48
    Width = 31
    Height = 16
    Caption = 'lbRG'
    Transparent = True
  end
  object lbCPF: TLabel
    Left = 120
    Top = 72
    Width = 37
    Height = 16
    Caption = 'lbCPF'
    Transparent = True
  end
  object edtRegistroLegal: TEdit
    Left = 24
    Top = 116
    Width = 329
    Height = 24
    Hint = 'Digite o registro legal do funcion'#225'rio'
    MaxLength = 50
    TabOrder = 0
  end
  object OKBtn: TButton
    Left = 89
    Top = 158
    Width = 93
    Height = 30
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = OKBtnClick
  end
  object CancelBtn: TButton
    Left = 196
    Top = 158
    Width = 92
    Height = 30
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
  end
end
