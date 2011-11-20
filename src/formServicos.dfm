inherited frmServicos: TfrmServicos
  Left = 141
  Top = 127
  Width = 800
  Height = 481
  Caption = 'Tipos de servi'#231'os oferecidos por essa loja'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  inherited Spliter: TSplitter
    Height = 414
  end
  inherited ToolBar1: TToolBar
    Width = 792
  end
  inherited Panel1: TPanel
    Height = 414
    inherited Label1: TLabel
      Caption = 'Cadastro de tipos de servi'#231'o:'
    end
    inherited DBCtrlGrid: TDBCtrlGrid
      Height = 396
      PanelHeight = 66
      RowCount = 6
      object DBText1: TDBText
        Left = 8
        Top = 24
        Width = 153
        Height = 33
        DataField = 'Descricao'
        DataSource = srcSelf
      end
      object DBText2: TDBText
        Left = 8
        Top = 8
        Width = 33
        Height = 17
        DataField = 'IDServico'
        DataSource = srcSelf
      end
    end
  end
  inherited pgctl: TPageControl
    Width = 604
    Height = 414
    inherited tabCategory: TTabSheet
      inherited DBGrid1: TDBGrid
        Height = 370
      end
      inherited DBNavigator2: TDBNavigator
        Hints.Strings = ()
      end
    end
    inherited tabList: TTabSheet
      inherited DBGridList: TDBGrid
        Height = 395
      end
    end
    inherited tabDetails: TTabSheet
      object ScrollBox: TScrollBox
        Left = 0
        Top = 0
        Width = 596
        Height = 383
        HorzScrollBar.Margin = 6
        HorzScrollBar.Range = 300
        VertScrollBar.Margin = 6
        VertScrollBar.Range = 238
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        TabOrder = 0
        object Label3: TLabel
          Left = 6
          Top = 6
          Width = 83
          Height = 16
          Caption = 'N'#176' de servico:'
          FocusControl = EditIDServico
        end
        object Label4: TLabel
          Left = 6
          Top = 68
          Width = 65
          Height = 16
          Caption = 'Descri'#231#227'o:'
          FocusControl = EditDescricao
        end
        object Label8: TLabel
          Left = 185
          Top = 8
          Width = 130
          Height = 16
          Caption = 'Categoria do Servi'#231'o:'
        end
        object Label9: TLabel
          Left = 6
          Top = 128
          Width = 81
          Height = 16
          Caption = 'Valor M'#237'nimo:'
          FocusControl = DBEdit2
        end
        object Label10: TLabel
          Left = 222
          Top = 128
          Width = 85
          Height = 16
          Caption = 'Valor M'#225'ximo:'
          FocusControl = DBEdit3
        end
        object Label11: TLabel
          Left = 6
          Top = 192
          Width = 178
          Height = 16
          Caption = 'Comiss'#227'o do profissional (%):'
          FocusControl = DBEdit4
        end
        object EditIDServico: TDBEdit
          Left = 6
          Top = 24
          Width = 163
          Height = 24
          TabStop = False
          DataField = 'IDServico'
          DataSource = srcSelf
          TabOrder = 5
        end
        object EditDescricao: TDBEdit
          Left = 6
          Top = 86
          Width = 419
          Height = 24
          DataField = 'Descricao'
          DataSource = srcSelf
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 6
          Top = 144
          Width = 211
          Height = 24
          DataField = 'ValorMin'
          DataSource = srcSelf
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 222
          Top = 144
          Width = 203
          Height = 24
          DataField = 'ValorMax'
          DataSource = srcSelf
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 6
          Top = 208
          Width = 211
          Height = 24
          DataField = 'ComissaoPercentualPadrao'
          DataSource = srcSelf
          TabOrder = 4
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 185
          Top = 24
          Width = 240
          Height = 24
          DataField = 'IDCategoriaServico'
          DataSource = srcSelf
          KeyField = 'IDCategoriaServico'
          ListField = 'Descricao'
          ListSource = srcCategory
          TabOrder = 0
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Profissionais'
      ImageIndex = 3
      TabVisible = False
      object TWDBRel1: TTWDBRel
        Left = 0
        Top = 0
        Width = 596
        Height = 383
        Align = alClient
        TabOrder = 0
        tablename1 = 'profissionais'
        tablenameRel = 'relservicosprofissionais'
        Active = False
        label1 = ' Profissionais que podem prestar esse tipo de servi'#231'o:'
        label2 = ' Profissionais que N'#195'O podem prestar esse tipo de servi'#231'o:'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 4
      TabVisible = False
      object TWDBRel2: TTWDBRel
        Left = 0
        Top = 0
        Width = 596
        Height = 383
        Align = alClient
        TabOrder = 0
        tablename1 = 'produtos'
        tablenameRel = 'relservicosprodutos'
        Active = False
        label1 = 'Produtos utilizados nesse tipo de servi'#231'o :'
        label2 = 'Produtos N'#195'O utilizados nesse tipo de servi'#231'o :'
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Descontos'
      ImageIndex = 5
      TabVisible = False
      object TWDBRel3: TTWDBRel
        Left = 0
        Top = 0
        Width = 596
        Height = 383
        Align = alClient
        TabOrder = 0
        tablename1 = 'clientes'
        tablenameRel = 'relclienteservico'
        Active = False
        label1 = ' Clientes que tem desconto nesse tipo de servi'#231'o:'
        label2 = ' Clientes que N'#195'O tem desconto nesse tipo de servi'#231'o:'
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Lojas'
      ImageIndex = 6
      TabVisible = False
      object TWDBRel4: TTWDBRel
        Left = 0
        Top = 0
        Width = 596
        Height = 383
        Align = alClient
        TabOrder = 0
        tablename1 = 'lojas'
        tablenameRel = 'relservicoslojas'
        Active = False
        label1 = ' Lojas onde esse tipo de servi'#231'o '#233' oferecido:'
        label2 = ' Lojas onde esse tipo de servi'#231'o N'#195'O '#233' oferecido:'
      end
    end
  end
  inherited srcSelf: TDataSource
    Left = 592
    Top = 2
  end
  inherited dtsSelf: TZMySqlTable
    BeforePost = dtsSelfBeforePost
    TableName = 'servicos'
    Left = 624
    Top = 0
    object dtsSelfIDServico: TIntegerField
      DisplayLabel = 'N'#176' de Servi'#231'o:'
      FieldName = 'IDServico'
      ReadOnly = True
    end
    object dtsSelfDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o:'
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
    object dtsSelfIDCategoriaServico: TIntegerField
      DisplayLabel = 'Categoria do Servi'#231'o:'
      FieldName = 'IDCategoriaServico'
      LookupDataSet = dtsCategory
      LookupKeyFields = 'IDCategoriaServico'
      KeyFields = 'IDCategoriaServico'
      Required = True
    end
    object dtsSelfValorMin: TFloatField
      DisplayLabel = 'Valor M'#237'nimo:'
      FieldName = 'ValorMin'
      Required = True
      currency = True
    end
    object dtsSelfValorMax: TFloatField
      DisplayLabel = 'Valor M'#225'ximo:'
      FieldName = 'ValorMax'
      Required = True
      currency = True
    end
    object dtsSelfComissaoPercentualPadrao: TFloatField
      DisplayLabel = 'Comiss'#227'o do profissional (%):'
      FieldName = 'ComissaoPercentualPadrao'
      Required = True
      MaxValue = 100
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
  inherited dtsCategory: TZMySqlTable
    TableName = 'categoriasservicos'
    Left = 552
    Top = 0
  end
  inherited srcCategory: TDataSource
    Left = 520
    Top = 0
  end
end
