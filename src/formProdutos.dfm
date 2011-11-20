inherited frmProdutos: TfrmProdutos
  Left = 141
  Top = 127
  Width = 802
  Height = 481
  Caption = 'Cadastro de Produtos'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  inherited Spliter: TSplitter
    Height = 414
  end
  inherited ToolBar1: TToolBar
    Width = 794
  end
  inherited Panel1: TPanel
    Height = 414
    inherited Label1: TLabel
      Caption = 'Cadastro de produtos:'
    end
    inherited DBCtrlGrid: TDBCtrlGrid
      Height = 396
      PanelHeight = 66
      RowCount = 6
      object Label43: TLabel
        Left = 6
        Top = 5
        Width = 17
        Height = 16
        Alignment = taRightJustify
        Caption = 'N'#176':'
        Transparent = True
      end
      object DBText2: TDBText
        Left = 29
        Top = 5
        Width = 65
        Height = 17
        DataField = 'IDProduto'
        DataSource = srcSelf
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label44: TLabel
        Left = 5
        Top = 21
        Width = 65
        Height = 16
        Alignment = taRightJustify
        Caption = 'Descri'#231#227'o:'
        Transparent = True
      end
      object DBText3: TDBText
        Left = 5
        Top = 37
        Width = 153
        Height = 25
        DataField = 'Descricao'
        DataSource = srcSelf
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
    end
  end
  inherited pgctl: TPageControl
    Width = 606
    Height = 414
    inherited tabCategory: TTabSheet
      inherited DBGrid1: TDBGrid
        Height = 343
        Columns = <
          item
            Expanded = False
            FieldName = 'IDCategoriaProduto'
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
    inherited tabList: TTabSheet
      inherited DBGridList: TDBGrid
        Height = 395
        Columns = <
          item
            Expanded = False
            FieldName = 'IDCategoriaProduto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDProduto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PesoOuUnidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Marca'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DataUltimaAlteracao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValorCusto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValorRevenda'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValorRevendaFuncionario'
            Visible = True
          end>
      end
    end
    inherited tabDetails: TTabSheet
      object ScrollBox: TScrollBox
        Left = 0
        Top = 0
        Width = 598
        Height = 383
        HorzScrollBar.Margin = 6
        HorzScrollBar.Range = 397
        VertScrollBar.Margin = 6
        VertScrollBar.Range = 238
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        TabOrder = 0
        object Label2: TLabel
          Left = 112
          Top = 6
          Width = 130
          Height = 16
          Caption = 'Categoria do produto:'
        end
        object Label3: TLabel
          Left = 8
          Top = 6
          Width = 86
          Height = 16
          Caption = 'N'#176' de Produto:'
          FocusControl = EditIDProduto
        end
        object Label4: TLabel
          Left = 8
          Top = 72
          Width = 65
          Height = 16
          Caption = 'Descri'#231#227'o:'
          FocusControl = DBEdit1
        end
        object Label5: TLabel
          Left = 8
          Top = 128
          Width = 93
          Height = 16
          Caption = 'Peso/Unidade:'
          FocusControl = DBEdit2
        end
        object Label6: TLabel
          Left = 160
          Top = 128
          Width = 41
          Height = 16
          Caption = 'Marca:'
          FocusControl = DBEdit3
        end
        object Label7: TLabel
          Left = 8
          Top = 192
          Width = 213
          Height = 16
          Caption = 'Valor de custo (da nota de compra):'
          FocusControl = DBEdit4
        end
        object Label8: TLabel
          Left = 8
          Top = 256
          Width = 229
          Height = 16
          Caption = 'N'#250'mero de c'#243'digo de barras (EAN13):'
          FocusControl = DBEdit5
        end
        object Label9: TLabel
          Left = 271
          Top = 6
          Width = 30
          Height = 16
          Alignment = taRightJustify
          Caption = 'Foto:'
        end
        object EditIDProduto: TDBEdit
          Left = 8
          Top = 24
          Width = 94
          Height = 24
          TabStop = False
          DataField = 'IDProduto'
          DataSource = srcSelf
          TabOrder = 7
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 112
          Top = 24
          Width = 145
          Height = 24
          DataField = 'IDCategoriaProduto'
          DataSource = srcSelf
          KeyField = 'IDCategoriaProduto'
          ListField = 'Descricao'
          ListSource = srcCategory
          TabOrder = 0
        end
        object imgFoto: TZDbImage
          Left = 304
          Top = 8
          Width = 289
          Height = 289
          Hint = 
            'Duplo clique na imagem para escolher um arquivo de imagem para o' +
            ' produto'
          DataField = 'Foto'
          DataSource = srcSelf
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 6
          OnDblClick = imgFotoDblClick
          OnKeyUp = imgFotoKeyUp
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 88
          Width = 289
          Height = 24
          DataField = 'Descricao'
          DataSource = srcSelf
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 8
          Top = 144
          Width = 137
          Height = 24
          DataField = 'PesoOuUnidade'
          DataSource = srcSelf
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 160
          Top = 144
          Width = 137
          Height = 24
          DataField = 'Marca'
          DataSource = srcSelf
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 8
          Top = 208
          Width = 289
          Height = 24
          DataField = 'ValorCusto'
          DataSource = srcSelf
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 8
          Top = 272
          Width = 289
          Height = 24
          DataField = 'CodBarras'
          DataSource = srcSelf
          TabOrder = 5
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Fornecedores'
      ImageIndex = 3
      TabVisible = False
      object TWDBRel1: TTWDBRel
        Left = 0
        Top = 0
        Width = 598
        Height = 383
        Align = alClient
        TabOrder = 0
        tablename1 = 'fornecedores'
        MasterFields.Strings = (
          'IDProduto')
        tablenameRel = 'relfornecedoresprodutos'
        RelFields.Strings = (
          'IDFornecedor')
        ZMysqlDatabase = DMMain.Database
        Active = False
        label1 = ' Fornecedores que ofertam esse produto:'
        label2 = ' Fornecedores que N'#195'O ofertam esse produto:'
        MasterSource = srcSelf
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tipos de servi'#231'o'
      ImageIndex = 4
      TabVisible = False
      object TWDBRel2: TTWDBRel
        Left = 0
        Top = 0
        Width = 598
        Height = 383
        Align = alClient
        TabOrder = 0
        tablename1 = 'servicos'
        MasterFields.Strings = (
          'IDProduto')
        tablenameRel = 'relservicosprodutos'
        RelFields.Strings = (
          'IDServico')
        ZMysqlDatabase = DMMain.Database
        Active = False
        label1 = 'Tipos de servi'#231'os que  utilizam esse tipo de produto:'
        label2 = 'Tipos de servi'#231'os que  N'#195'O utilizam esse tipo de produto:'
        MasterSource = srcSelf
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Servi'#231'os prestados'
      ImageIndex = 5
      TabVisible = False
      object TWDBRel3: TTWDBRel
        Left = 0
        Top = 0
        Width = 598
        Height = 383
        Align = alClient
        TabOrder = 0
        tablename1 = 'servicosprestados'
        MasterFields.Strings = (
          'IDProduto')
        tablenameRel = 'relservicosprodutos'
        RelFields.Strings = (
          'IDServico')
        ZMysqlDatabase = DMMain.Database
        Active = False
        label1 = 'Servi'#231'os prestados que  utilizaram esse tipo de produto:'
        label2 = 'Servi'#231'os prestados que N'#195'O utilizaram esse tipo de produto:'
        MasterSource = srcSelf
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Compras'
      ImageIndex = 6
      TabVisible = False
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 598
        Height = 383
        Align = alClient
        DataSource = srcCompras
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Vendas'
      ImageIndex = 7
      TabVisible = False
      object Label10: TLabel
        Left = 0
        Top = 0
        Width = 217
        Height = 16
        Align = alTop
        Caption = 'Vendas j'#225' efetuadas desse produto:'
        Transparent = True
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 16
        Width = 598
        Height = 367
        Align = alClient
        DataSource = srcVendas
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Vendas Internas'
      ImageIndex = 8
      TabVisible = False
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 598
        Height = 383
        Align = alClient
        DataSource = srcVendasInternas
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Descontos'
      ImageIndex = 9
      TabVisible = False
      object DescProdutos: TTWDBRel
        Left = 0
        Top = 0
        Width = 598
        Height = 383
        Align = alClient
        TabOrder = 0
        tablename1 = 'clientes'
        MasterFields.Strings = (
          'IDProduto')
        tablenameRel = 'relclienteproduto'
        RelFields.Strings = (
          'IDCliente')
        ShowFields1.Strings = (
          'IDCliente'
          'Nome'
          'SobreNome'
          'DescontoPercentual'
          'DescontoFixo'
          'ValorRevenda')
        ShowFields2.Strings = (
          'IDCliente'
          'Nome'
          'SobreNome'
          'ValorCusto'
          'ValorRevenda')
        ZMysqlDatabase = DMMain.Database
        Active = False
        label1 = 'Clientes que possuem desconto nesse produto:'
        label2 = 'Clientes que N'#195'O possuem desconto nesse produto:'
        MasterSource = srcSelf
        OnButtonUpClicked = DescProdutosButtonUpClicked
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Descontos Prof.'
      ImageIndex = 10
      TabVisible = False
    end
  end
  inherited srcSelf: TDataSource
    Left = 608
    Top = 10
  end
  inherited dtsSelf: TZMySqlTable
    BeforePost = dtsSelfBeforePost
    AfterScroll = dtsSelfAfterScroll
    TableName = 'produtos'
    Active = True
    Left = 640
    Top = 8
    object dtsSelfIDCategoriaProduto: TIntegerField
      DisplayLabel = 'Categoria do produto:'
      FieldName = 'IDCategoriaProduto'
      Required = True
    end
    object dtsSelfIDProduto: TIntegerField
      DisplayLabel = 'N'#176' de Produto:'
      FieldName = 'IDProduto'
      ReadOnly = True
    end
    object dtsSelfFoto: TBlobField
      DisplayLabel = 'Foto:'
      FieldName = 'Foto'
    end
    object dtsSelfDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o:'
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
    object dtsSelfPesoOuUnidade: TStringField
      DisplayLabel = 'Peso/Unidade:'
      FieldName = 'PesoOuUnidade'
      Required = True
      Size = 50
    end
    object dtsSelfMarca: TStringField
      DisplayLabel = 'Marca:'
      FieldName = 'Marca'
      Required = True
      Size = 50
    end
    object dtsSelfValorCusto: TFloatField
      DisplayLabel = 'Valor de custo (da nota de compra):'
      FieldName = 'ValorCusto'
      Required = True
      currency = True
    end
    object dtsSelfCodBarras: TStringField
      DisplayLabel = 'N'#250'mero de c'#243'digo de barras (EAN13):'
      FieldName = 'CodBarras'
      Required = True
      Size = 50
    end
    object dtsSelfDataUltimaAlteracao: TDateField
      FieldName = 'DataUltimaAlteracao'
      Required = True
    end
    object dtsSelfValorRevenda: TFloatField
      FieldName = 'ValorRevenda'
      Required = True
      currency = True
    end
    object dtsSelfValorRevendaFuncionario: TFloatField
      FieldName = 'ValorRevendaFuncionario'
      Required = True
      currency = True
    end
  end
  inherited dtsCategory: TZMySqlTable
    TableName = 'categoriasprodutos'
    Active = True
    Left = 528
    Top = 8
    object dtsCategoryIDCategoriaProduto: TIntegerField
      FieldName = 'IDCategoriaProduto'
      ReadOnly = True
    end
    object dtsCategoryDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
  end
  inherited srcCategory: TDataSource
    Left = 496
    Top = 8
  end
  object dtsCompras: TZMySqlQuery
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    ExtraOptions = [moStoreResult]
    Macros = <>
    DataSource = srcSelf
    Sql.Strings = (
      'select compras.* from compras, relcomprasprodutos'
      'where'
      '('
      '(relcomprasprodutos.IDProduto=:IDProduto) and'
      '(relcomprasprodutos.IDCompra=compras.IDCompra)'
      ')')
    RequestLive = False
    Left = 56
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDProduto'
        ParamType = ptUnknown
      end>
  end
  object srcCompras: TDataSource
    DataSet = dtsCompras
    Left = 24
    Top = 392
  end
  object srcVendas: TDataSource
    DataSet = dtsVendas
    Left = 24
    Top = 360
  end
  object dtsVendas: TZMySqlQuery
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    ExtraOptions = [moStoreResult]
    Macros = <>
    DataSource = srcSelf
    Sql.Strings = (
      'select vendas.* from vendas, relvendasprodutos'
      'where'
      '('
      '(relvendasprodutos.IDProduto=:IDProduto) and'
      '(relvendasprodutos.IDVenda=vendas.IDVenda)'
      ')')
    RequestLive = False
    Left = 56
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDProduto'
        ParamType = ptUnknown
      end>
  end
  object srcVendasInternas: TDataSource
    DataSet = dtsVendasInternas
    Left = 24
    Top = 328
  end
  object dtsVendasInternas: TZMySqlQuery
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    ExtraOptions = [moStoreResult]
    Macros = <>
    DataSource = srcSelf
    Sql.Strings = (
      
        'select vendasinternas.* from vendasinternas, relvendasinternaspr' +
        'odutos'
      'where'
      '('
      '(relvendasinternasprodutos.IDProduto=:IDProduto) and'
      
        '(relvendasinternasprodutos.IDVendaInterna=vendasinternas.IDVenda' +
        'Interna)'
      ')')
    RequestLive = False
    Left = 56
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDProduto'
        ParamType = ptUnknown
      end>
  end
  object dlgFoto: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Options = [ofReadOnly, ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Foto de produto'
    Left = 480
    Top = 8
  end
end
