inherited frmValorServico: TfrmValorServico
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Valor de servi'#231'o'
  ClientHeight = 146
  ClientWidth = 401
  FormStyle = fsNormal
  OldCreateOrder = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel2: TBevel
    Left = 16
    Top = 9
    Width = 369
    Height = 88
  end
  object lbLegenda: TLabel
    Left = 24
    Top = 16
    Width = 353
    Height = 41
    AutoSize = False
    Caption = 'Qual o valor a ser cobrado pelo servi'#231'o?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Bevel1: TBevel
    Left = 32
    Top = 48
    Width = 337
    Height = 9
    Shape = bsTopLine
  end
  object Label2: TLabel
    Left = 33
    Top = 64
    Width = 117
    Height = 16
    Alignment = taRightJustify
    Caption = 'Valor cobrado (R$):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clOlive
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object CancelBtn: TButton
    Left = 204
    Top = 110
    Width = 92
    Height = 30
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 0
    TabStop = False
  end
  object OKBtn: TButton
    Left = 97
    Top = 110
    Width = 93
    Height = 30
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    TabStop = False
  end
  object edtValor: TFloatSpinEdit
    Left = 162
    Top = 60
    Width = 207
    Height = 26
    Increment = 1
    TabOrder = 2
    OnKeyUp = edtValorKeyUp
  end
end
