inherited frmServicosPrestados: TfrmServicosPrestados
  Left = 136
  Top = 107
  Caption = 'frmServicosPrestados'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Height = 32
      Caption = 'Cadastro de servi'#231'os prestados:'
    end
    inherited DBCtrlGrid: TDBCtrlGrid
      Top = 33
      Height = 422
      PanelHeight = 140
    end
  end
  inherited pgctl: TPageControl
    inherited tabDetails: TTabSheet
      object ScrollBox: TScrollBox
        Left = 0
        Top = 0
        Width = 492
        Height = 425
        HorzScrollBar.Margin = 6
        HorzScrollBar.Range = 292
        VertScrollBar.Margin = 6
        VertScrollBar.Range = 146
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        TabOrder = 0
        object Label2: TLabel
          Left = 6
          Top = 6
          Width = 72
          Height = 16
          Caption = 'IDComanda'
          FocusControl = EditIDComanda
        end
        object Label3: TLabel
          Left = 89
          Top = 6
          Width = 114
          Height = 16
          Caption = 'IDServicoPrestado'
          FocusControl = EditIDServicoPrestado
        end
        object Label5: TLabel
          Left = 6
          Top = 52
          Width = 59
          Height = 16
          Caption = 'IDServico'
          FocusControl = EditIDServico
        end
        object Label6: TLabel
          Left = 89
          Top = 52
          Width = 85
          Height = 16
          Caption = 'ValorCobrado'
          FocusControl = EditValorCobrado
        end
        object Label8: TLabel
          Left = 6
          Top = 98
          Width = 83
          Height = 16
          Caption = 'IDProfissional'
          FocusControl = EditIDProfissional
        end
        object EditIDComanda: TDBEdit
          Left = 6
          Top = 24
          Width = 77
          Height = 24
          DataField = 'IDComanda'
          DataSource = srcSelf
          TabOrder = 0
        end
        object EditIDServicoPrestado: TDBEdit
          Left = 89
          Top = 24
          Width = 77
          Height = 24
          DataField = 'IDServicoPrestado'
          DataSource = srcSelf
          TabOrder = 1
        end
        object EditIDServico: TDBEdit
          Left = 6
          Top = 70
          Width = 77
          Height = 24
          DataField = 'IDServico'
          DataSource = srcSelf
          TabOrder = 2
        end
        object EditValorCobrado: TDBEdit
          Left = 89
          Top = 70
          Width = 91
          Height = 24
          DataField = 'ValorCobrado'
          DataSource = srcSelf
          TabOrder = 3
        end
        object EditIDProfissional: TDBEdit
          Left = 6
          Top = 116
          Width = 77
          Height = 24
          DataField = 'IDProfissional'
          DataSource = srcSelf
          TabOrder = 4
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 2
      object Label9: TLabel
        Left = 0
        Top = 0
        Width = 492
        Height = 16
        Align = alTop
        Caption = 'Produtos vendidos nessa presta'#231#227'o de servi'#231'o:'
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 16
        Width = 492
        Height = 409
        Align = alClient
        DataSource = srcProdutos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  inherited dtsSelf: TZMySqlTable
    TableName = 'servicosprestados'
    object dtsSelfIDComanda: TIntegerField
      FieldName = 'IDComanda'
      Required = True
    end
    object dtsSelfIDServicoPrestado: TIntegerField
      FieldName = 'IDServicoPrestado'
      ReadOnly = True
    end
    object dtsSelfIDCategoriaServico: TIntegerField
      FieldName = 'IDCategoriaServico'
      Required = True
    end
    object dtsSelfIDServico: TIntegerField
      FieldName = 'IDServico'
      Required = True
    end
    object dtsSelfValorCobrado: TFloatField
      FieldName = 'ValorCobrado'
      Required = True
    end
    object dtsSelfIDCargoProfissional: TIntegerField
      FieldName = 'IDCargoProfissional'
      Required = True
    end
    object dtsSelfIDProfissional: TIntegerField
      FieldName = 'IDProfissional'
      Required = True
    end
  end
  object srcProdutos: TDataSource
    DataSet = dtsProdutos
    Left = 32
    Top = 368
  end
  object dtsProdutos: TZMySqlQuery
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    ExtraOptions = [moStoreResult]
    Macros = <>
    RequestLive = False
    Left = 64
    Top = 368
  end
end
