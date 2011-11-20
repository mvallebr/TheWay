inherited frmCadastrarCliente: TfrmCadastrarCliente
  Left = 223
  Top = 174
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cadastrar cliente'
  ClientHeight = 444
  ClientWidth = 751
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  Position = poScreenCenter
  Visible = False
  WindowState = wsNormal
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Gradient1: TGradient
    Left = 0
    Top = 0
    Width = 751
    Height = 444
    Align = alClient
    Style = gsLinearH
  end
  object Label2: TLabel
    Left = 16
    Top = 9
    Width = 241
    Height = 36
    Caption = 'Cadastrar cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -31
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Panel1: TPanel
    Left = 24
    Top = 56
    Width = 705
    Height = 369
    Color = 8421440
    TabOrder = 0
    object ScrollBox: TScrollBox
      Left = 8
      Top = 8
      Width = 689
      Height = 353
      HorzScrollBar.Margin = 6
      VertScrollBar.Margin = 6
      VertScrollBar.Style = ssFlat
      BorderStyle = bsNone
      Color = clSilver
      ParentColor = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 5
        Width = 40
        Height = 16
        Caption = 'Nome:'
        FocusControl = edtNome
      end
      object Label3: TLabel
        Left = 302
        Top = 5
        Width = 34
        Height = 16
        Caption = 'Sexo:'
      end
      object Label4: TLabel
        Left = 347
        Top = 5
        Width = 64
        Height = 16
        Caption = 'DataNasc:'
        FocusControl = edtDataNasc
      end
      object Label11: TLabel
        Left = 552
        Top = 5
        Width = 54
        Height = 16
        Caption = 'Religiao:'
      end
      object Label12: TLabel
        Left = 106
        Top = 48
        Width = 60
        Height = 16
        Caption = 'Profiss'#227'o:'
      end
      object Label13: TLabel
        Left = 443
        Top = 5
        Width = 71
        Height = 16
        Caption = 'EstadoCivil:'
      end
      object Label14: TLabel
        Left = 9
        Top = 88
        Width = 95
        Height = 16
        Caption = 'Tipo do cabelo:'
        FocusControl = edtTipoCabelo
      end
      object Label15: TLabel
        Left = 351
        Top = 88
        Width = 80
        Height = 16
        Caption = 'Tipo de pele:'
        FocusControl = edtTipoPele
      end
      object Label16: TLabel
        Left = 523
        Top = 88
        Width = 73
        Height = 16
        Caption = 'Cor da pele:'
        FocusControl = edtCorPele
      end
      object Label17: TLabel
        Left = 180
        Top = 89
        Width = 88
        Height = 16
        Caption = 'Cor do cabelo:'
        FocusControl = edtCorCabelo
      end
      object Label24: TLabel
        Left = 227
        Top = 48
        Width = 92
        Height = 16
        Caption = 'Nacionalidade:'
        FocusControl = edtNacionalidade
      end
      object Label25: TLabel
        Left = 347
        Top = 48
        Width = 81
        Height = 16
        Caption = 'Naturalidade:'
        FocusControl = edtNaturalidade
      end
      object edtNome: TDBEdit
        Left = 8
        Top = 20
        Width = 288
        Height = 24
        DataField = 'Nome'
        DataSource = srcSelf
        DragCursor = crHandPoint
        TabOrder = 0
      end
      object edtDataNasc: TDBEdit
        Left = 347
        Top = 20
        Width = 91
        Height = 24
        DataField = 'DataNasc'
        DataSource = srcSelf
        DragCursor = crHandPoint
        TabOrder = 2
      end
      object edtTipoCabelo: TDBEdit
        Left = 8
        Top = 103
        Width = 150
        Height = 24
        DataField = 'TipoCabelo'
        DataSource = srcSelf
        DragCursor = crHandPoint
        TabOrder = 11
      end
      object edtTipoPele: TDBEdit
        Left = 350
        Top = 103
        Width = 150
        Height = 24
        DataField = 'TipoPele'
        DataSource = srcSelf
        DragCursor = crHandPoint
        TabOrder = 13
      end
      object edtCorPele: TDBEdit
        Left = 522
        Top = 103
        Width = 150
        Height = 24
        DataField = 'CorPele'
        DataSource = srcSelf
        DragCursor = crHandPoint
        TabOrder = 14
      end
      object edtCorCabelo: TDBEdit
        Left = 179
        Top = 103
        Width = 150
        Height = 24
        DataField = 'CorCabelo'
        DataSource = srcSelf
        DragCursor = crHandPoint
        TabOrder = 12
      end
      object edtNacionalidade: TDBEdit
        Left = 227
        Top = 63
        Width = 116
        Height = 24
        DataField = 'Nacionalidade'
        DataSource = srcSelf
        DragCursor = crHandPoint
        TabOrder = 7
      end
      object edtNaturalidade: TDBEdit
        Left = 347
        Top = 63
        Width = 112
        Height = 24
        DataField = 'Naturalidade'
        DataSource = srcSelf
        DragCursor = crHandPoint
        TabOrder = 8
      end
      object edtSexo: TDBComboBox
        Left = 303
        Top = 20
        Width = 41
        Height = 24
        Style = csDropDownList
        DataField = 'Sexo'
        DataSource = srcSelf
        ItemHeight = 16
        Items.Strings = (
          'Feminino'
          'Masculino')
        Sorted = True
        TabOrder = 1
      end
      object DBCheckBox1: TDBCheckBox
        Left = 10
        Top = 52
        Width = 97
        Height = 17
        Caption = 'Primeira vez'
        DataField = 'NovoCliente'
        DataSource = srcSelf
        TabOrder = 5
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object edtEstadoCivil: TDBComboBox
        Left = 442
        Top = 20
        Width = 110
        Height = 24
        DataField = 'EstadoCivil'
        DataSource = srcSelf
        ItemHeight = 16
        Items.Strings = (
          'Casado(a)'
          'Desquitado(a)'
          'Divorciado(a)'
          'Noivo(a)'
          'Regime marital'
          'Separado(a)'
          'Solteiro(a)'
          'Viuvo(a)')
        Sorted = True
        TabOrder = 3
      end
      object edtReligiao: TDBComboBox
        Left = 553
        Top = 19
        Width = 122
        Height = 24
        DataField = 'Religiao'
        DataSource = srcSelf
        ItemHeight = 16
        Items.Strings = (
          'Cat'#243'lica'
          'Messi'#226'nica'
          'Nenhuma'
          'Protestante'
          'Reino de Deus')
        Sorted = True
        TabOrder = 4
      end
      object edtProfissao: TDBComboBox
        Left = 106
        Top = 63
        Width = 113
        Height = 24
        DataField = 'Profissao'
        DataSource = srcSelf
        ItemHeight = 16
        Items.Strings = (
          'Administrador'
          'Advogado'
          'Advogado(a)'
          'Arquiteto'
          'Atleta'
          'Aut'#244'nomo'
          'Campo financeiro(a)'
          'Consultor'
          'Contador'
          'Dentista'
          'Dona de casa'
          'Economista'
          'Empres'#225'rio/Executivo'
          'Engenheiro'
          'Engenheiro(a)'
          'Estudante'
          'Estudante'
          'Lojista'
          'M'#233'dico'
          'M'#233'dico(a)'
          'N'#227'o Aplic'#225'vel'
          'Outra'
          'Policial'
          'Professor'
          'Programador/Analista de Sistemas'
          'Psic'#243'logo'
          'Soci'#243'logo'
          'T'#233'cnico'
          'Vendedor/Representante')
        Sorted = True
        TabOrder = 6
      end
      object chkIndicado: TDBCheckBox
        Left = 466
        Top = 47
        Width = 97
        Height = 17
        Caption = 'Indicada por:'
        DataField = 'IndicadaPorCliente'
        DataSource = srcSelf
        TabOrder = 9
        ValueChecked = '1'
        ValueUnchecked = '0'
        OnClick = chkIndicadoClick
      end
      object edtIndicado: TDBLookupComboBox
        Left = 466
        Top = 63
        Width = 209
        Height = 24
        DataField = 'IDClienteIndicou'
        DataSource = srcSelf
        KeyField = 'IDCliente'
        ListField = 'Nome'
        ListSource = srcLookup
        TabOrder = 10
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 136
        Width = 369
        Height = 209
        Caption = 'Resid'#234'ncia'
        TabOrder = 15
        object Label5: TLabel
          Left = 8
          Top = 22
          Width = 62
          Height = 16
          Caption = 'Endere'#231'o:'
          FocusControl = edtEnderecoRes
        end
        object Label6: TLabel
          Left = 8
          Top = 66
          Width = 47
          Height = 16
          Caption = 'Cidade:'
          FocusControl = EdtCidadeRes
        end
        object Label18: TLabel
          Left = 176
          Top = 68
          Width = 45
          Height = 16
          Caption = 'Celular:'
          FocusControl = EdtCelular
        end
        object Label7: TLabel
          Left = 313
          Top = 66
          Width = 46
          Height = 16
          Caption = 'Estado:'
        end
        object Label9: TLabel
          Left = 162
          Top = 115
          Width = 57
          Height = 16
          Caption = 'Telefone:'
          FocusControl = EdtTelefoneRes
        end
        object Label8: TLabel
          Left = 8
          Top = 115
          Width = 30
          Height = 16
          Caption = 'CEP:'
          FocusControl = EdtCEPRes
        end
        object Label10: TLabel
          Left = 8
          Top = 158
          Width = 37
          Height = 16
          Caption = 'Email:'
          FocusControl = EdtEmail
        end
        object edtEnderecoRes: TDBEdit
          Left = 8
          Top = 38
          Width = 353
          Height = 24
          DataField = 'EnderecoRes'
          DataSource = srcSelf
          DragCursor = crHandPoint
          TabOrder = 0
        end
        object EdtCidadeRes: TDBEdit
          Left = 8
          Top = 82
          Width = 161
          Height = 24
          DataField = 'CidadeRes'
          DataSource = srcSelf
          DragCursor = crHandPoint
          TabOrder = 1
        end
        object EdtCelular: TDBEdit
          Left = 175
          Top = 83
          Width = 130
          Height = 24
          DataField = 'Celular'
          DataSource = srcSelf
          DragCursor = crHandPoint
          TabOrder = 2
        end
        object edtEstadoRes: TDBComboBox
          Left = 314
          Top = 83
          Width = 47
          Height = 24
          DataField = 'EstadoRes'
          DataSource = srcSelf
          ItemHeight = 16
          Items.Strings = (
            'AC'
            'AL'
            'AM'
            'AP'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MG'
            'MS'
            'MT'
            'PA'
            'PB'
            'PE'
            'PI'
            'PR'
            'RJ'
            'RN'
            'RO'
            'RR'
            'RS'
            'SC'
            'SE'
            'SP'
            'TO')
          Sorted = True
          TabOrder = 3
        end
        object EdtTelefoneRes: TDBEdit
          Left = 162
          Top = 130
          Width = 196
          Height = 24
          DataField = 'TelefoneRes1'
          DataSource = srcSelf
          DragCursor = crHandPoint
          TabOrder = 5
        end
        object EdtCEPRes: TDBEdit
          Left = 8
          Top = 130
          Width = 145
          Height = 24
          DataField = 'CEPRes'
          DataSource = srcSelf
          DragCursor = crHandPoint
          TabOrder = 4
        end
        object EdtEmail: TDBEdit
          Left = 8
          Top = 173
          Width = 353
          Height = 24
          DataField = 'Email1'
          DataSource = srcSelf
          DragCursor = crHandPoint
          TabOrder = 6
        end
      end
      object GroupBox2: TGroupBox
        Left = 384
        Top = 136
        Width = 289
        Height = 161
        Caption = 'Trabalho'
        TabOrder = 16
        object Label19: TLabel
          Left = 8
          Top = 18
          Width = 62
          Height = 16
          Caption = 'Endere'#231'o:'
          FocusControl = EdtEnderecoCom
        end
        object Label20: TLabel
          Left = 8
          Top = 64
          Width = 47
          Height = 16
          Caption = 'Cidade:'
          FocusControl = EdtCidadeCom
        end
        object Label21: TLabel
          Left = 234
          Top = 64
          Width = 46
          Height = 16
          Caption = 'Estado:'
        end
        object Label22: TLabel
          Left = 8
          Top = 110
          Width = 57
          Height = 16
          Caption = 'Telefone:'
          FocusControl = EdtTelefoneCom
        end
        object Label23: TLabel
          Left = 197
          Top = 110
          Width = 30
          Height = 16
          Caption = 'CEP:'
          FocusControl = EdtCEPCom
        end
        object EdtEnderecoCom: TDBEdit
          Left = 8
          Top = 36
          Width = 233
          Height = 24
          DataField = 'EnderecoCom'
          DataSource = srcSelf
          DragCursor = crHandPoint
          TabOrder = 0
        end
        object EdtCidadeCom: TDBEdit
          Left = 8
          Top = 82
          Width = 217
          Height = 24
          DataField = 'CidadeCom'
          DataSource = srcSelf
          DragCursor = crHandPoint
          TabOrder = 1
        end
        object EdtTelefoneCom: TDBEdit
          Left = 8
          Top = 128
          Width = 169
          Height = 24
          DataField = 'TelefoneCom'
          DataSource = srcSelf
          DragCursor = crHandPoint
          TabOrder = 3
        end
        object EdtCEPCom: TDBEdit
          Left = 197
          Top = 128
          Width = 84
          Height = 24
          DataField = 'CEPCom'
          DataSource = srcSelf
          DragCursor = crHandPoint
          TabOrder = 4
        end
        object edtEstadoCom: TDBComboBox
          Left = 234
          Top = 82
          Width = 47
          Height = 24
          DataField = 'EstadoCom'
          DataSource = srcSelf
          ItemHeight = 16
          Items.Strings = (
            'AC'
            'AL'
            'AM'
            'AP'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MG'
            'MS'
            'MT'
            'PA'
            'PB'
            'PE'
            'PI'
            'PR'
            'RJ'
            'RN'
            'RO'
            'RR'
            'RS'
            'SC'
            'SE'
            'SP'
            'TO')
          Sorted = True
          TabOrder = 2
        end
      end
      object BitBtn1: TBitBtn
        Left = 384
        Top = 304
        Width = 289
        Height = 41
        Caption = 'Efetuar o cadastro <F6>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
        OnClick = BitBtn1Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 416
    Top = 16
    Width = 240
    Height = 25
    DataSource = srcSelf
    TabOrder = 1
    Visible = False
  end
  object srcSelf: TDataSource
    DataSet = dtsSelf
    Left = 296
    Top = 16
  end
  object dtsSelf: TZMySqlTable
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    BeforePost = dtsSelfBeforePost
    AfterPost = dtsSelfAfterPost
    ExtraOptions = [moStoreResult]
    TableName = 'clientes'
    Active = True
    Left = 336
    Top = 16
    object dtsSelfIDCliente: TIntegerField
      FieldName = 'IDCliente'
    end
    object dtsSelfNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 70
    end
    object dtsSelfSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object dtsSelfDataNasc: TDateField
      FieldName = 'DataNasc'
    end
    object dtsSelfEnderecoRes: TStringField
      FieldName = 'EnderecoRes'
      Size = 70
    end
    object dtsSelfCidadeRes: TStringField
      DefaultExpression = 'S'#227'o Paulo'
      FieldName = 'CidadeRes'
      Size = 50
    end
    object dtsSelfEstadoRes: TStringField
      DefaultExpression = 'SP'
      FieldName = 'EstadoRes'
      Size = 2
    end
    object dtsSelfCEPRes: TStringField
      FieldName = 'CEPRes'
      Size = 9
    end
    object dtsSelfTelefoneRes1: TStringField
      FieldName = 'TelefoneRes1'
      Size = 25
    end
    object dtsSelfTelefoneRes2: TStringField
      FieldName = 'TelefoneRes2'
      Size = 25
    end
    object dtsSelfTelefoneRes3: TStringField
      FieldName = 'TelefoneRes3'
      Size = 25
    end
    object dtsSelfFax: TStringField
      FieldName = 'Fax'
      Size = 25
    end
    object dtsSelfEmail1: TStringField
      FieldName = 'Email1'
      Size = 70
    end
    object dtsSelfEmail2: TStringField
      FieldName = 'Email2'
      Size = 70
    end
    object dtsSelfEmail3: TStringField
      FieldName = 'Email3'
      Size = 70
    end
    object dtsSelfPager: TStringField
      FieldName = 'Pager'
      Size = 25
    end
    object dtsSelfCredito: TFloatField
      FieldName = 'Credito'
    end
    object dtsSelfReligiao: TStringField
      DefaultExpression = 'Nenhuma'
      FieldName = 'Religiao'
      Size = 25
    end
    object dtsSelfProfissao: TStringField
      FieldName = 'Profissao'
      Size = 30
    end
    object dtsSelfEstadoCivil: TStringField
      FieldName = 'EstadoCivil'
      Size = 50
    end
    object dtsSelfTipoCabelo: TStringField
      FieldName = 'TipoCabelo'
      Size = 50
    end
    object dtsSelfTipoPele: TStringField
      FieldName = 'TipoPele'
      Size = 50
    end
    object dtsSelfCorPele: TStringField
      FieldName = 'CorPele'
      Size = 50
    end
    object dtsSelfCPF: TStringField
      FieldName = 'CPF'
    end
    object dtsSelfRG: TStringField
      FieldName = 'RG'
      Required = True
    end
    object dtsSelfCorCabelo: TStringField
      FieldName = 'CorCabelo'
      Size = 50
    end
    object dtsSelfCelular: TStringField
      FieldName = 'Celular'
      Size = 30
    end
    object dtsSelfNomeContato1: TStringField
      FieldName = 'NomeContato1'
      Size = 50
    end
    object dtsSelfTelContato1: TStringField
      FieldName = 'TelContato1'
      Size = 50
    end
    object dtsSelfNomeContato2: TStringField
      FieldName = 'NomeContato2'
      Size = 50
    end
    object dtsSelfTelContato2: TStringField
      FieldName = 'TelContato2'
      Size = 50
    end
    object dtsSelfEnderecoCom: TStringField
      FieldName = 'EnderecoCom'
      Size = 70
    end
    object dtsSelfCidadeCom: TStringField
      DefaultExpression = 'S'#227'o Paulo'
      FieldName = 'CidadeCom'
      Size = 50
    end
    object dtsSelfEstadoCom: TStringField
      DefaultExpression = 'SP'
      FieldName = 'EstadoCom'
      Size = 2
    end
    object dtsSelfTelefoneCom: TStringField
      FieldName = 'TelefoneCom'
      Size = 30
    end
    object dtsSelfCEPCom: TStringField
      FieldName = 'CEPCom'
      Size = 9
    end
    object dtsSelfDataCadastro: TDateField
      FieldName = 'DataCadastro'
    end
    object dtsSelfPais: TStringField
      DefaultExpression = 'Brasil'
      FieldName = 'Pais'
      Size = 50
    end
    object dtsSelfNacionalidade: TStringField
      DefaultExpression = 'Brasileira'
      FieldName = 'Nacionalidade'
      Size = 50
    end
    object dtsSelfNaturalidade: TStringField
      DefaultExpression = 'Paulista'
      FieldName = 'Naturalidade'
      Size = 50
    end
    object dtsSelfNFilhos: TIntegerField
      FieldName = 'NFilhos'
    end
    object dtsSelfNomeFilhos: TMemoField
      FieldName = 'NomeFilhos'
      BlobType = ftMemo
    end
    object dtsSelfConjugue: TStringField
      FieldName = 'Conjugue'
      Size = 50
    end
    object dtsSelfNovoCliente: TIntegerField
      DefaultExpression = '1'
      FieldName = 'NovoCliente'
    end
    object dtsSelfIndicadaPorCliente: TIntegerField
      FieldName = 'IndicadaPorCliente'
      Required = True
    end
    object dtsSelfIDClienteIndicou: TIntegerField
      FieldName = 'IDClienteIndicou'
      Required = True
    end
  end
  object srcLookup: TDataSource
    DataSet = dtsLookup
    Left = 296
    Top = 48
  end
  object dtsLookup: TZMySqlTable
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    ExtraOptions = [moStoreResult]
    TableName = 'clientes'
    Active = True
    Left = 336
    Top = 48
    object IntegerField1: TIntegerField
      FieldName = 'IDCliente'
    end
    object StringField1: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 70
    end
    object StringField2: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object DateField1: TDateField
      FieldName = 'DataNasc'
    end
    object StringField3: TStringField
      FieldName = 'EnderecoRes'
      Size = 70
    end
    object StringField4: TStringField
      FieldName = 'CidadeRes'
      Size = 50
    end
    object StringField5: TStringField
      FieldName = 'EstadoRes'
      Size = 2
    end
    object StringField6: TStringField
      FieldName = 'CEPRes'
      Size = 9
    end
    object StringField7: TStringField
      FieldName = 'TelefoneRes1'
      Size = 25
    end
    object StringField8: TStringField
      FieldName = 'TelefoneRes2'
      Size = 25
    end
    object StringField9: TStringField
      FieldName = 'TelefoneRes3'
      Size = 25
    end
    object StringField10: TStringField
      FieldName = 'Fax'
      Size = 25
    end
    object StringField11: TStringField
      FieldName = 'Email1'
      Size = 70
    end
    object StringField12: TStringField
      FieldName = 'Email2'
      Size = 70
    end
    object StringField13: TStringField
      FieldName = 'Email3'
      Size = 70
    end
    object StringField14: TStringField
      FieldName = 'Pager'
      Size = 25
    end
    object FloatField1: TFloatField
      FieldName = 'Credito'
    end
    object StringField15: TStringField
      FieldName = 'Religiao'
      Size = 25
    end
    object StringField16: TStringField
      FieldName = 'Profissao'
      Size = 30
    end
    object StringField17: TStringField
      FieldName = 'EstadoCivil'
      Size = 50
    end
    object StringField18: TStringField
      FieldName = 'TipoCabelo'
      Size = 50
    end
    object StringField19: TStringField
      FieldName = 'TipoPele'
      Size = 50
    end
    object StringField20: TStringField
      FieldName = 'CorPele'
      Size = 50
    end
    object StringField21: TStringField
      FieldName = 'CPF'
    end
    object StringField22: TStringField
      FieldName = 'RG'
      Required = True
    end
    object StringField23: TStringField
      FieldName = 'CorCabelo'
      Size = 50
    end
    object StringField24: TStringField
      FieldName = 'Celular'
      Size = 30
    end
    object StringField25: TStringField
      FieldName = 'NomeContato1'
      Size = 50
    end
    object StringField26: TStringField
      FieldName = 'TelContato1'
      Size = 50
    end
    object StringField27: TStringField
      FieldName = 'NomeContato2'
      Size = 50
    end
    object StringField28: TStringField
      FieldName = 'TelContato2'
      Size = 50
    end
    object StringField29: TStringField
      FieldName = 'EnderecoCom'
      Size = 70
    end
    object StringField30: TStringField
      FieldName = 'CidadeCom'
      Size = 50
    end
    object StringField31: TStringField
      FieldName = 'EstadoCom'
      Size = 2
    end
    object StringField32: TStringField
      FieldName = 'TelefoneCom'
      Size = 30
    end
    object StringField33: TStringField
      FieldName = 'CEPCom'
      Size = 9
    end
    object DateField2: TDateField
      FieldName = 'DataCadastro'
    end
    object StringField34: TStringField
      FieldName = 'Pais'
      Size = 50
    end
    object StringField35: TStringField
      DefaultExpression = 'Brasileira'
      FieldName = 'Nacionalidade'
      Size = 50
    end
    object StringField36: TStringField
      DefaultExpression = 'Paulista'
      FieldName = 'Naturalidade'
      Size = 50
    end
    object IntegerField2: TIntegerField
      FieldName = 'NFilhos'
    end
    object MemoField1: TMemoField
      FieldName = 'NomeFilhos'
      BlobType = ftMemo
    end
    object StringField37: TStringField
      FieldName = 'Conjugue'
      Size = 50
    end
    object IntegerField3: TIntegerField
      FieldName = 'NovoCliente'
    end
    object IntegerField4: TIntegerField
      FieldName = 'IndicadaPorCliente'
      Required = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'IDClienteIndicou'
      Required = True
    end
    object dtsLookupPontuacao: TIntegerField
      FieldName = 'Pontuacao'
    end
  end
end
