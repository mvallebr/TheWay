inherited frmSaidaCaixa: TfrmSaidaCaixa
  Left = 272
  Top = 233
  Caption = 'Registrar saida de caixa'
  OldCreateOrder = True
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Gradient1: TGradient
    Left = 0
    Top = 0
    Width = 688
    Height = 448
    Align = alClient
    ColorBegin = clSilver
    ColorEnd = clWhite
    Reverse = True
    Style = gsLinearH
  end
  object Label2: TLabel
    Left = 16
    Top = 9
    Width = 209
    Height = 36
    Caption = 'Sa'#237'da de caixa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -31
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 16
    Top = 48
    Width = 265
    Height = 217
  end
  object lbLegenda: TLabel
    Left = 16
    Top = 272
    Width = 265
    Height = 161
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
  object Label6: TLabel
    Left = 297
    Top = 311
    Width = 268
    Height = 25
    Caption = 'Motivo da entrada de dinheiro: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 297
    Top = 250
    Width = 52
    Height = 25
    Caption = 'Valor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 297
    Top = 187
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
  object Label4: TLabel
    Left = 297
    Top = 119
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
  object Label1: TLabel
    Left = 297
    Top = 49
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
  object Bevel3: TBevel
    Left = 288
    Top = 48
    Width = 348
    Height = 385
  end
  object edtData: TMonthCalendar
    Left = 25
    Top = 65
    Width = 249
    Height = 184
    Date = 37441.6178818287
    Enabled = False
    ShowToday = False
    TabOrder = 0
    WeekNumbers = True
  end
  object edtMotivo: TMemo
    Left = 296
    Top = 336
    Width = 329
    Height = 89
    ScrollBars = ssVertical
    TabOrder = 1
    WantReturns = False
    WantTabs = True
    OnEnter = edtMotivoEnter
    OnKeyUp = edtMotivoKeyUp
  end
  object edtValor: TFloatSpinEdit
    Left = 299
    Top = 275
    Width = 326
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Increment = 1
    ParentFont = False
    TabOrder = 2
    OnEnter = edtValorEnter
    OnKeyUp = edtValorKeyUp
  end
  object edtSenha: TEdit
    Left = 297
    Top = 210
    Width = 328
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 3
    OnEnter = edtSenhaEnter
    OnKeyUp = edtSenhaKeyUp
  end
  object edtCodigo: TEdit
    Left = 297
    Top = 144
    Width = 328
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnEnter = edtCodigoEnter
    OnKeyUp = edtCodigoKeyUp
  end
  object edtHora: TEdit
    Left = 297
    Top = 75
    Width = 328
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
    TabOrder = 5
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
    Sql.Strings = (
      'select * from SaidasCaixa')
    RequestLive = False
    Left = 56
    Top = 408
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 24
    Top = 408
  end
end
