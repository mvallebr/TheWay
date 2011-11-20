inherited frmChegadaProfissional: TfrmChegadaProfissional
  Left = 150
  Top = 125
  Width = 800
  Height = 482
  Caption = 'Chegada de Profissional'
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Gradient1: TGradient
    Left = 0
    Top = 0
    Width = 792
    Height = 450
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
    Top = 264
    Width = 761
    Height = 169
  end
  object Bevel3: TBevel
    Left = 368
    Top = 16
    Width = 409
    Height = 241
  end
  object Bevel1: TBevel
    Left = 16
    Top = 56
    Width = 345
    Height = 201
  end
  object Label1: TLabel
    Left = 377
    Top = 25
    Width = 224
    Height = 25
    Caption = 'Data/Hor'#225'rio de chegada:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 16
    Top = 9
    Width = 346
    Height = 36
    Caption = 'Chegada de profissional'
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
    Top = 272
    Width = 745
    Height = 153
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
  object Label4: TLabel
    Left = 41
    Top = 71
    Width = 199
    Height = 25
    Caption = 'C'#243'digo do profissional:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 41
    Top = 155
    Width = 64
    Height = 25
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object edtCodigo: TEdit
    Left = 41
    Top = 96
    Width = 304
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 13
    ParentFont = False
    TabOrder = 0
    OnKeyDown = edtCodigoKeyDown
  end
  object edtHora: TEdit
    Left = 640
    Top = 27
    Width = 129
    Height = 28
    Hint = 'Hor'#225'rio de chegada do profissional'
    TabStop = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 2
  end
  object edtData: TMonthCalendar
    Left = 446
    Top = 65
    Width = 249
    Height = 184
    Date = 37441.6154979167
    Enabled = False
    ShowToday = False
    TabOrder = 3
    WeekNumbers = True
  end
  object edtSenha: TEdit
    Left = 41
    Top = 178
    Width = 304
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    OnKeyDown = edtSenhaKeyDown
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 24
    Top = 408
  end
  object dtsSelf: TZMySqlQuery
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    ExtraOptions = [moStoreResult]
    Macros = <>
    RequestLive = False
    Left = 56
    Top = 408
  end
end
