inherited frmCaixinha: TfrmCaixinha
  Left = 201
  Top = 182
  Width = 797
  Height = 467
  Caption = 'Registrar recebimento de caixinha'
  OldCreateOrder = True
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 120
  TextHeight = 16
  object Gradient1: TGradient
    Left = 0
    Top = 0
    Width = 789
    Height = 435
    Align = alClient
    ColorBegin = clSilver
    ColorEnd = clWhite
    Reverse = True
    Style = gsLinearH
  end
  object Bevel4: TBevel
    Left = 9
    Top = 9
    Width = 776
    Height = 424
  end
  object Bevel2: TBevel
    Left = 16
    Top = 288
    Width = 761
    Height = 137
  end
  object Label2: TLabel
    Left = 16
    Top = 9
    Width = 357
    Height = 36
    Caption = 'Recebimento de caixinha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -30
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Bevel3: TBevel
    Left = 16
    Top = 48
    Width = 761
    Height = 233
  end
  object Label4: TLabel
    Left = 33
    Top = 140
    Width = 304
    Height = 25
    Caption = 'C'#243'digo do profissional beneficiado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 33
    Top = 210
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
  object lbLegenda: TLabel
    Left = 25
    Top = 297
    Width = 744
    Height = 120
    Alignment = taCenter
    AutoSize = False
    Caption = 'Passe o c'#243'digo de barras em seu crach'#225
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -28
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    WordWrap = True
  end
  object Label5: TLabel
    Left = 33
    Top = 63
    Width = 180
    Height = 25
    Caption = 'Comanda da cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object edtCodigo: TEdit
    Left = 33
    Top = 165
    Width = 328
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 13
    ParentFont = False
    TabOrder = 1
    OnEnter = edtCodigoEnter
    OnExit = edtCodigoExit
    OnKeyDown = edtCodigoKeyDown
  end
  object edtValor: TFloatSpinEdit
    Left = 34
    Top = 235
    Width = 327
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Increment = 1
    ParentFont = False
    TabOrder = 2
    OnEnter = edtValorEnter
    OnKeyDown = edtValorKeyDown
  end
  object edtCliente: TEdit
    Left = 33
    Top = 89
    Width = 328
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = edtClienteChange
    OnEnter = edtClienteEnter
    OnKeyDown = edtClienteKeyDown
  end
  object btnBuscar: TBitBtn
    Left = 377
    Top = 162
    Width = 200
    Height = 32
    Caption = 'Buscar profissional <F6>'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TabStop = False
    OnClick = btnBuscarClick
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
      'select * from caixinhas')
    RequestLive = False
    Left = 72
    Top = 408
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 40
    Top = 408
  end
end
