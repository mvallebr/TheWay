inherited frmAuxiliares: TfrmAuxiliares
  Left = 211
  Top = 176
  Caption = 'Cadastro de Auxiliares'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  inherited ToolBar1: TToolBar
    inherited DBNavigator1: TDBNavigator
      Width = 335
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    end
  end
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Caption = 'Cadastro de Auxiliares:'
    end
    inherited DBCtrlGrid: TDBCtrlGrid
      object Label43: TLabel
        Left = 8
        Top = 8
        Width = 16
        Height = 16
        Caption = 'ID:'
      end
      object DBText1: TDBText
        Left = 32
        Top = 8
        Width = 49
        Height = 17
        Alignment = taRightJustify
        DataField = 'IDCargoProfissional'
        DataSource = srcSelf
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 96
        Top = 8
        Width = 65
        Height = 17
        DataField = 'IDProfissional'
        DataSource = srcSelf
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label45: TLabel
        Left = 85
        Top = 5
        Width = 8
        Height = 20
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label44: TLabel
        Left = 8
        Top = 24
        Width = 40
        Height = 16
        Caption = 'Nome:'
      end
      object DBText3: TDBText
        Left = 8
        Top = 40
        Width = 153
        Height = 33
        DataField = 'Nome'
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
    ActivePage = TabSheet1
    inherited tabList: TTabSheet
      inherited DBGridList: TDBGrid
        ReadOnly = True
        Columns = <
          item
            Expanded = False
            FieldName = 'IDCargoProfissional'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDProfissional'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DataNascimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Endereco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Telefone1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Telefone2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Telefone3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fax'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Email1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Email2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Email3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Celular'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pager'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Banco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Conta'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Agencia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomePai'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeMae'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EstadoCivil'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFilhos'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ContratadoAtualmente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SalarioFixo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DataContratacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pais'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nacionalidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Naturalidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DiaPagamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TipoDiaPagamento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Senha'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EmPunicaoAtualmente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PorcSalarioPagaPeloSalao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PodeVenderProduto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PodePrestarServico'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GrupoSistema'
            Visible = True
          end>
      end
    end
    inherited tabDetails: TTabSheet
      TabVisible = False
    end
    object TabSheet1: TTabSheet
      Caption = 'Profissionais'
      ImageIndex = 2
      object TWDBRel1: TTWDBRel
        Left = 0
        Top = 0
        Width = 492
        Height = 425
        Align = alClient
        TabOrder = 0
        tablename1 = 'profissionais'
        MasterFields.Strings = (
          'IDProfissional=IDAuxiliar')
        tablenameRel = 'relprofissionalauxiliar'
        RelFields.Strings = (
          'IDProfissional')
        Filter1.Strings = (
          'Auxiliar=0')
        Filter2.Strings = (
          'Auxiliar=0')
        ZMysqlDatabase = DMMain.Database
        Active = False
        label1 = 'Profissionais para os quais esse auxiliar trabalha :'
        label2 = 'Profissionais para os quais esse auxiliar N'#195'O trabalha :'
        MasterSource = srcSelf
      end
    end
  end
  inherited srcSelf: TDataSource
    DataSet = dtsAuxiliares
  end
  inherited dtsSelf: TZMySqlTable
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    TableName = 'cargos'
    Left = 656
    Top = 8
  end
  object dtsAuxiliares: TZMySqlQuery
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
      'select * from profissionais '
      'where'
      'Auxiliar=1')
    RequestLive = False
    Active = True
    Left = 536
    Top = 48
  end
end
