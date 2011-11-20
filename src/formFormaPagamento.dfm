inherited frmFormaPagamento: TfrmFormaPagamento
  Left = 242
  Top = 145
  Caption = 'frmFormaPagamento'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  inherited Spliter: TSplitter
    Left = 161
  end
  inherited Panel1: TPanel
    Width = 161
    inherited Label1: TLabel
      Width = 159
      Height = 26
      Caption = 'Cadastro de formas de pagamento:'
    end
    inherited DBCtrlGrid: TDBCtrlGrid
      Top = 27
      Width = 159
      Height = 428
      PanelHeight = 85
      PanelWidth = 143
      RowCount = 5
      object Label2: TLabel
        Left = 7
        Top = 15
        Width = 51
        Height = 13
        Caption = 'Descri'#231#227'o:'
      end
      object Label3: TLabel
        Left = 7
        Top = 2
        Width = 14
        Height = 13
        Caption = 'ID:'
      end
      object DBText2: TDBText
        Left = 26
        Top = 2
        Width = 105
        Height = 13
        DataField = 'IDFormaPagamento'
        DataSource = srcSelf
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -9
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edtDescricao: TDBEdit
        Left = 7
        Top = 28
        Width = 124
        Height = 24
        DataField = 'Descricao'
        DataSource = srcSelf
        TabOrder = 0
      end
    end
  end
  inherited pgctl: TPageControl
    Left = 164
    Width = 524
    ActivePage = TabSheet1
    inherited tabList: TTabSheet
      inherited DBGridList: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'Descricao'
            Visible = True
          end>
      end
    end
    inherited tabDetails: TTabSheet
      TabVisible = False
    end
    object TabSheet1: TTabSheet
      Caption = 'Presta'#231#245'es'
      ImageIndex = 2
      object TWDBRel1: TTWDBRel
        Left = 0
        Top = 0
        Width = 516
        Height = 428
        Align = alClient
        Color = clWhite
        ParentColor = False
        TabOrder = 0
        tablename1 = 'prestacoes'
        MasterFields.Strings = (
          'IDFormaPagamento')
        tablenameRel = 'relformaspagamentoprestacoes'
        RelFields.Strings = (
          'IDPrestacao')
        ShowFields1.Strings = (
          'Descricao'
          'PorcentagemDoValor'
          'DiasAposNegocio')
        ShowFields2.Strings = (
          'Descricao'
          'PorcentagemDoValor'
          'DiasAposNegocio')
        ZMysqlDatabase = DMMain.Database
        Active = False
        label1 = ' Essa forma de pagamento cont'#233'm as seguintes presta'#231#245'es:'
        label2 = ' Essa forma de pagamento N'#195'O cont'#233'm as seguintes presta'#231#245'es:'
        MasterSource = srcSelf
      end
    end
  end
  inherited dtsSelf: TZMySqlTable
    AfterInsert = dtsSelfAfterInsert
    AfterEdit = dtsSelfAfterEdit
    AfterCancel = dtsSelfAfterCancel
    TableName = 'formaspagamento'
    object dtsSelfIDFormaPagamento: TIntegerField
      FieldName = 'IDFormaPagamento'
    end
    object dtsSelfDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
  end
end
