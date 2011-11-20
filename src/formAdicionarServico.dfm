inherited frmAdicionarServico: TfrmAdicionarServico
  Left = 163
  Top = 165
  Width = 800
  Caption = 'Adicionar Servi'#231'o '#224' comanda do cliente'
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Gradient1: TGradient
    Left = 0
    Top = 0
    Width = 792
    Height = 447
    Align = alClient
    ColorBegin = clGray
    ColorEnd = clWhite
    Reverse = True
    Style = gsLinearH
  end
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 777
    Height = 425
  end
  object Bevel2: TBevel
    Left = 16
    Top = 264
    Width = 513
    Height = 161
  end
  object lbLegenda: TLabel
    Left = 24
    Top = 272
    Width = 497
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
  object Label2: TLabel
    Left = 16
    Top = 16
    Width = 214
    Height = 36
    Caption = 'Prestar servi'#231'o'
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
    Top = 56
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
  object lbCliente: TLabel
    Left = 24
    Top = 82
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
  object Label1: TLabel
    Left = 16
    Top = 133
    Width = 78
    Height = 20
    Caption = 'Auxiliares:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object DBText1: TDBText
    Left = 83
    Top = 108
    Width = 62
    Height = 20
    Alignment = taCenter
    Color = clWhite
    DataField = 'IDServico'
    DataSource = srcSelf
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lbServico: TLabel
    Left = 23
    Top = 108
    Width = 61
    Height = 20
    Caption = 'Servi'#231'o:'
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
    Left = 288
    Top = 24
    Width = 241
    Height = 24
    MaxLength = 13
    TabOrder = 0
    OnKeyUp = edtEntradaKeyUp
  end
  object DBGrid1: TDBGrid
    Left = 536
    Top = 16
    Width = 241
    Height = 409
    TabStop = False
    DataSource = srcSelf
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgIndicator, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Descricao'
        Visible = True
      end>
  end
  object lstAuxiliares: TListBox
    Left = 16
    Top = 152
    Width = 513
    Height = 105
    TabStop = False
    BorderStyle = bsNone
    ExtendedSelect = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 20
    Items.Strings = (
      'Auxiliar1'
      'Auxiliar2'
      'Auxiliar3'
      'Auxiliar4'
      'Auxiliar5'
      'Auxiliar6'
      'Auxiliar7'
      'Auxiliar8')
    ParentFont = False
    TabOrder = 2
    OnDblClick = lstAuxiliaresDblClick
  end
  object srcSelf: TDataSource
    DataSet = dtsSelf
    Left = 272
    Top = 80
  end
  object dtsSelf: TZMySqlTable
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    Filter = '(IDServico<>0)'
    Filtered = True
    ExtraOptions = [moStoreResult]
    TableName = 'servicos'
    Active = True
    Left = 312
    Top = 80
    object dtsSelfIDCategoriaServico: TIntegerField
      FieldName = 'IDCategoriaServico'
      Required = True
    end
    object dtsSelfIDServico: TIntegerField
      FieldName = 'IDServico'
    end
    object dtsSelfDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
    object dtsSelfValorMin: TFloatField
      FieldName = 'ValorMin'
      Required = True
    end
    object dtsSelfValorMax: TFloatField
      FieldName = 'ValorMax'
      Required = True
    end
    object dtsSelfComissaoPercentualPadrao: TFloatField
      FieldName = 'ComissaoPercentualPadrao'
    end
    object dtsSelfDataUltimaAlteracao: TDateField
      FieldName = 'DataUltimaAlteracao'
      Required = True
    end
    object dtsSelfComissaoFixaPadrao: TFloatField
      FieldName = 'ComissaoFixaPadrao'
      Required = True
    end
  end
end
