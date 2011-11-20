inherited frmFornecedores: TfrmFornecedores
  Left = 250
  Top = 143
  Caption = 'Fornecedores'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Caption = 'Cadastro de fornecedores:'
    end
    inherited DBCtrlGrid: TDBCtrlGrid
      PanelHeight = 87
      RowCount = 5
      object Label43: TLabel
        Left = 8
        Top = 8
        Width = 16
        Height = 16
        Caption = 'ID:'
        Transparent = True
      end
      object Label44: TLabel
        Left = 8
        Top = 24
        Width = 65
        Height = 16
        Caption = 'Descri'#231#227'o:'
      end
      object DBText2: TDBText
        Left = 32
        Top = 8
        Width = 65
        Height = 17
        DataField = 'IDFornecedor'
        DataSource = srcSelf
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DBText3: TDBText
        Left = 8
        Top = 40
        Width = 153
        Height = 33
        DataField = 'Descricao'
        DataSource = srcSelf
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
    end
  end
  inherited pgctl: TPageControl
    inherited tabCategory: TTabSheet
      inherited DBGrid1: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'IDCategoriaFornecedor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Visible = True
          end>
      end
      inherited DBNavigator2: TDBNavigator
        Hints.Strings = ()
      end
    end
    inherited tabDetails: TTabSheet
      object ScrollBox: TScrollBox
        Left = 0
        Top = 0
        Width = 492
        Height = 425
        HorzScrollBar.Margin = 6
        HorzScrollBar.Range = 439
        VertScrollBar.Margin = 6
        VertScrollBar.Range = 606
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        TabOrder = 0
        object Label3: TLabel
          Left = 218
          Top = 6
          Width = 83
          Height = 16
          Caption = 'IDFornecedor'
          FocusControl = EditIDFornecedor
        end
        object Label4: TLabel
          Left = 6
          Top = 52
          Width = 62
          Height = 16
          Caption = 'Descricao'
          FocusControl = EditDescricao
        end
        object Label5: TLabel
          Left = 6
          Top = 98
          Width = 83
          Height = 16
          Caption = 'NomeContato'
          FocusControl = EditNomeContato
        end
        object Label6: TLabel
          Left = 6
          Top = 144
          Width = 59
          Height = 16
          Caption = 'Endereco'
          FocusControl = EditEndereco
        end
        object Label7: TLabel
          Left = 6
          Top = 190
          Width = 44
          Height = 16
          Caption = 'Cidade'
          FocusControl = EditCidade
        end
        object Label8: TLabel
          Left = 300
          Top = 190
          Width = 43
          Height = 16
          Caption = 'Estado'
        end
        object Label9: TLabel
          Left = 357
          Top = 190
          Width = 27
          Height = 16
          Caption = 'CEP'
          FocusControl = EditCEP
        end
        object Label10: TLabel
          Left = 6
          Top = 236
          Width = 27
          Height = 16
          Caption = 'Pais'
          FocusControl = EditPais
        end
        object Label11: TLabel
          Left = 6
          Top = 282
          Width = 61
          Height = 16
          Caption = 'Telefone1'
          FocusControl = EditTelefone
        end
        object Label12: TLabel
          Left = 6
          Top = 328
          Width = 61
          Height = 16
          Caption = 'Telefone2'
          FocusControl = EditTelefone2
        end
        object Label13: TLabel
          Left = 6
          Top = 374
          Width = 61
          Height = 16
          Caption = 'Telefone3'
          FocusControl = EditTelefone3
        end
        object Label14: TLabel
          Left = 6
          Top = 420
          Width = 22
          Height = 16
          Caption = 'Fax'
          FocusControl = EditFax
        end
        object Label15: TLabel
          Left = 6
          Top = 466
          Width = 41
          Height = 16
          Caption = 'Email1'
          FocusControl = EditEmail
        end
        object Label16: TLabel
          Left = 6
          Top = 512
          Width = 41
          Height = 16
          Caption = 'Email2'
          FocusControl = EditEmail2
        end
        object Label17: TLabel
          Left = 6
          Top = 558
          Width = 41
          Height = 16
          Caption = 'Email3'
          FocusControl = EditEmail3
        end
        object Label18: TLabel
          Left = 300
          Top = 558
          Width = 84
          Height = 16
          Caption = 'DataCadastro'
          FocusControl = EditDataCadastro
        end
        object Label2: TLabel
          Left = 6
          Top = 6
          Width = 142
          Height = 16
          Caption = 'IDCategoriaFornecedor'
        end
        object EditIDFornecedor: TDBEdit
          Left = 218
          Top = 24
          Width = 77
          Height = 24
          TabStop = False
          DataField = 'IDFornecedor'
          ReadOnly = True
          TabOrder = 1
        end
        object EditDescricao: TDBEdit
          Left = 6
          Top = 70
          Width = 288
          Height = 24
          DataField = 'Descricao'
          DataSource = srcSelf
          TabOrder = 2
        end
        object EditNomeContato: TDBEdit
          Left = 6
          Top = 116
          Width = 288
          Height = 24
          DataField = 'NomeContato'
          DataSource = srcSelf
          TabOrder = 3
        end
        object EditEndereco: TDBEdit
          Left = 6
          Top = 162
          Width = 288
          Height = 24
          DataField = 'Endereco'
          DataSource = srcSelf
          TabOrder = 4
        end
        object EditCidade: TDBEdit
          Left = 6
          Top = 208
          Width = 288
          Height = 24
          DataField = 'Cidade'
          DataSource = srcSelf
          TabOrder = 5
        end
        object EditCEP: TDBEdit
          Left = 357
          Top = 208
          Width = 84
          Height = 24
          DataField = 'CEP'
          DataSource = srcSelf
          TabOrder = 6
        end
        object EditPais: TDBEdit
          Left = 6
          Top = 254
          Width = 288
          Height = 24
          DataField = 'Pais'
          DataSource = srcSelf
          TabOrder = 7
        end
        object EditTelefone: TDBEdit
          Left = 6
          Top = 300
          Width = 231
          Height = 24
          DataField = 'Telefone1'
          DataSource = srcSelf
          TabOrder = 8
        end
        object EditTelefone2: TDBEdit
          Left = 6
          Top = 346
          Width = 231
          Height = 24
          DataField = 'Telefone2'
          DataSource = srcSelf
          TabOrder = 9
        end
        object EditTelefone3: TDBEdit
          Left = 6
          Top = 392
          Width = 231
          Height = 24
          DataField = 'Telefone3'
          DataSource = srcSelf
          TabOrder = 10
        end
        object EditFax: TDBEdit
          Left = 6
          Top = 438
          Width = 231
          Height = 24
          DataField = 'Fax'
          DataSource = srcSelf
          TabOrder = 11
        end
        object EditEmail: TDBEdit
          Left = 6
          Top = 484
          Width = 288
          Height = 24
          DataField = 'Email1'
          DataSource = srcSelf
          TabOrder = 12
        end
        object EditEmail2: TDBEdit
          Left = 6
          Top = 530
          Width = 288
          Height = 24
          DataField = 'Email2'
          DataSource = srcSelf
          TabOrder = 13
        end
        object EditEmail3: TDBEdit
          Left = 6
          Top = 576
          Width = 288
          Height = 24
          DataField = 'Email3'
          DataSource = srcSelf
          TabOrder = 14
        end
        object EditDataCadastro: TDBEdit
          Left = 300
          Top = 576
          Width = 91
          Height = 24
          DataField = 'DataCadastro'
          DataSource = srcSelf
          TabOrder = 15
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 8
          Top = 24
          Width = 145
          Height = 24
          DataField = 'IDCategoriaFornecedor'
          DataSource = srcSelf
          KeyField = 'IDCategoriaFornecedor'
          ListField = 'Descricao'
          ListSource = srcCategory
          TabOrder = 0
        end
        object DBComboBox1: TDBComboBox
          Left = 299
          Top = 208
          Width = 54
          Height = 24
          DataField = 'Estado'
          DataSource = srcSelf
          ItemHeight = 16
          Items.Strings = (
            'SP'
            'PR'
            'GO'
            'SC'
            'RJ'
            'ES'
            'MG')
          TabOrder = 16
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 3
      object TWDBRel1: TTWDBRel
        Left = 0
        Top = 0
        Width = 492
        Height = 425
        Align = alClient
        TabOrder = 0
        tablename1 = 'produtos'
        MasterFields.Strings = (
          'IDFornecedor')
        tablenameRel = 'relfornecedoresprodutos'
        RelFields.Strings = (
          'IDProduto')
        ZMysqlDatabase = DMMain.Database
        Active = False
        label1 = 'Produtos que esse fornecedor oferece:'
        label2 = 'Produtos que esse fornecedor N'#195'O oferece:'
        MasterSource = srcSelf
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Servi'#231'os'
      ImageIndex = 4
      object TWDBRel2: TTWDBRel
        Left = 0
        Top = 0
        Width = 492
        Height = 425
        Align = alClient
        TabOrder = 0
        tablename1 = 'servicosterceirizados'
        MasterFields.Strings = (
          'IDFornecedor')
        tablenameRel = 'relservicosterceirizadosfornecedores'
        RelFields.Strings = (
          'IDServicoTerceirizado')
        ZMysqlDatabase = DMMain.Database
        Active = False
        label1 = 'Servi'#231'os que esse fornecedor pode prestar:'
        label2 = 'Servi'#231'os que esse fornecedor N'#195'O pode prestar:'
        MasterSource = srcSelf
      end
    end
  end
  inherited dtsSelf: TZMySqlTable
    TableName = 'fornecedores'
    object dtsSelfIDCategoriaFornecedor: TIntegerField
      FieldName = 'IDCategoriaFornecedor'
      Required = True
    end
    object dtsSelfIDFornecedor: TIntegerField
      FieldName = 'IDFornecedor'
      ReadOnly = True
    end
    object dtsSelfDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
    object dtsSelfNomeContato: TStringField
      FieldName = 'NomeContato'
      Required = True
      Size = 50
    end
    object dtsSelfEndereco: TStringField
      FieldName = 'Endereco'
      Size = 70
    end
    object dtsSelfCidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object dtsSelfEstado: TStringField
      FieldName = 'Estado'
      Size = 2
    end
    object dtsSelfCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object dtsSelfPais: TStringField
      FieldName = 'Pais'
      Size = 50
    end
    object dtsSelfTelefone1: TStringField
      FieldName = 'Telefone1'
      Size = 30
    end
    object dtsSelfTelefone2: TStringField
      FieldName = 'Telefone2'
      Size = 30
    end
    object dtsSelfTelefone3: TStringField
      FieldName = 'Telefone3'
      Size = 30
    end
    object dtsSelfFax: TStringField
      FieldName = 'Fax'
      Size = 30
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
    object dtsSelfDataCadastro: TDateField
      FieldName = 'DataCadastro'
    end
  end
  inherited dtsCategory: TZMySqlTable
    TableName = 'categoriasfornecedores'
    object dtsCategoryIDCategoriaFornecedor: TIntegerField
      FieldName = 'IDCategoriaFornecedor'
      ReadOnly = True
    end
    object dtsCategoryDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
  end
end
