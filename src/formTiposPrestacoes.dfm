inherited frmTiposPrestacoes: TfrmTiposPrestacoes
  Left = 232
  Top = 126
  Caption = 'frmTiposPrestacoes'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited Spliter: TSplitter
    Left = 185
  end
  inherited Panel1: TPanel
    Width = 185
    inherited Label1: TLabel
      Width = 183
      Height = 26
      Caption = 'Cadastro de Tipos de presta'#231#245'es:'
    end
    inherited DBCtrlGrid: TDBCtrlGrid
      Top = 27
      Width = 183
      Height = 428
      PanelHeight = 142
      PanelWidth = 167
      TabStop = False
      object Label2: TLabel
        Left = 7
        Top = 1
        Width = 14
        Height = 13
        Caption = 'ID:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 1
        Top = 14
        Width = 69
        Height = 13
        Caption = 'Porc. do valor:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 1
        Top = 29
        Width = 83
        Height = 13
        Caption = 'Dias ap'#243's o neg.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object DBText1: TDBText
        Left = 26
        Top = 1
        Width = 98
        Height = 13
        DataField = 'IDPrestacao'
        DataSource = srcSelf
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 91
        Top = 14
        Width = 70
        Height = 13
        Hint = 
          'Preencha com a porcentagem do valor. Utilize -1 caso o valor sej' +
          'a preenchido no momento do neg'#243'cio'
        Color = clWhite
        DataField = 'PorcentagemDoValor'
        DataSource = srcSelf
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object DBText3: TDBText
        Left = 91
        Top = 29
        Width = 70
        Height = 13
        Hint = 
          'Preencha com o n'#250'mero de dias a partir do neg'#243'cio para que a pre' +
          'sta'#231#227'o seja paga. Utilize -1 caso o valor seja preenchido no mom' +
          'ento do neg'#243'cio'
        Color = clWhite
        DataField = 'DiasAposNegocio'
        DataSource = srcSelf
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label5: TLabel
        Left = 1
        Top = 43
        Width = 51
        Height = 13
        Caption = 'Descri'#231#227'o:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object DBText4: TDBText
        Left = 5
        Top = 57
        Width = 156
        Height = 13
        Hint = 'Entre com uma descri'#231#227'o sucinta sobre a presta'#231#227'o em quest'#227'o'
        Color = clWhite
        DataField = 'Descricao'
        DataSource = srcSelf
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
    end
  end
  inherited pgctl: TPageControl
    Left = 188
    Width = 500
    inherited tabList: TTabSheet
      inherited DBGridList: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'Descricao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PorcentagemDoValor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DiasAposNegocio'
            Visible = True
          end>
      end
    end
    inherited tabDetails: TTabSheet
      object Label6: TLabel
        Left = 27
        Top = 1
        Width = 14
        Height = 13
        Caption = 'ID:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 46
        Top = 1
        Width = 98
        Height = 13
        DataField = 'IDPrestacao'
        DataSource = srcSelf
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 37
        Top = 20
        Width = 69
        Height = 13
        Caption = 'Porc. do valor:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 24
        Top = 47
        Width = 83
        Height = 13
        Caption = 'Dias ap'#243's o neg.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 56
        Top = 73
        Width = 51
        Height = 13
        Caption = 'Descri'#231#227'o:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 7
        Top = 102
        Width = 97
        Height = 13
        Caption = 'Meio de pagamento:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 112
        Top = 100
        Width = 199
        Height = 21
        DataField = 'IDMeioPagamento'
        DataSource = srcSelf
        KeyField = 'IDMeioPagamento'
        ListField = 'Descricao'
        ListSource = srcMeioPagamento
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 111
        Top = 20
        Width = 202
        Height = 21
        DataField = 'PorcentagemDoValor'
        DataSource = srcSelf
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 111
        Top = 46
        Width = 202
        Height = 21
        DataField = 'DiasAposNegocio'
        DataSource = srcSelf
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 111
        Top = 72
        Width = 202
        Height = 21
        DataField = 'Descricao'
        DataSource = srcSelf
        TabOrder = 2
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Formas de pagamento'
      ImageIndex = 2
      object TWDBRel1: TTWDBRel
        Left = 0
        Top = 0
        Width = 492
        Height = 428
        Align = alClient
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        tablename1 = 'formaspagamento'
        MasterFields.Strings = (
          'IDPrestacao')
        tablenameRel = 'relformaspagamentoprestacoes'
        RelFields.Strings = (
          'IDFormaPagamento')
        ShowFields1.Strings = (
          'Descricao')
        ShowFields2.Strings = (
          'Descricao')
        ZMysqlDatabase = DMMain.Database
        Active = False
        label1 = 'Formas de pagamento que cont'#233'm esse tipo de presta'#231#227'o:'
        label2 = 'Formas de pagamento que N'#195'O cont'#233'm esse tipo de presta'#231#227'o:'
        MasterSource = srcSelf
      end
    end
  end
  inherited dtsSelf: TZMySqlTable
    TableName = 'prestacoes'
    object dtsSelfIDPrestacao: TIntegerField
      FieldName = 'IDPrestacao'
      ReadOnly = True
    end
    object dtsSelfDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
    object dtsSelfPorcentagemDoValor: TFloatField
      FieldName = 'PorcentagemDoValor'
      Required = True
      MaxValue = 100
      MinValue = -1
    end
    object dtsSelfDiasAposNegocio: TIntegerField
      FieldName = 'DiasAposNegocio'
      Required = True
    end
    object dtsSelfIDMeioPagamento: TIntegerField
      FieldName = 'IDMeioPagamento'
      LookupDataSet = dtsMeioPagamento
      LookupKeyFields = 'IDMeioPagamento'
      LookupResultField = 'Descricao'
      Required = True
    end
  end
  object srcMeioPagamento: TDataSource
    DataSet = dtsMeioPagamento
    Left = 592
    Top = 50
  end
  object dtsMeioPagamento: TZMySqlTable
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    AfterPost = dtsSelfAfterPost
    ExtraOptions = [moStoreResult]
    TableName = 'meiopagamento'
    Left = 592
    Top = 16
    object dtsMeioPagamentoIDMeioPagamento: TIntegerField
      FieldName = 'IDMeioPagamento'
    end
    object dtsMeioPagamentoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object dtsMeioPagamentoEntraEmCaixa: TIntegerField
      FieldName = 'EntraEmCaixa'
    end
  end
end
