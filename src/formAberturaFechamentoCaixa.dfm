inherited frmAberturaFechamentoCaixa: TfrmAberturaFechamentoCaixa
  Left = 198
  Top = 195
  Caption = 'frmAberturaFechamentoCaixa'
  ClientHeight = 445
  ClientWidth = 790
  OldCreateOrder = True
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Gradient1: TGradient
    Left = 0
    Top = 0
    Width = 790
    Height = 445
    Align = alClient
    ColorEnd = clSilver
    Style = gsLinearH
  end
  object Label2: TLabel
    Left = 16
    Top = 6
    Width = 451
    Height = 36
    Caption = 'Abertura / Fechamento de caixa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -31
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Panel1: TPanel
    Left = 8
    Top = 40
    Width = 777
    Height = 401
    Color = clBackground
    TabOrder = 0
    object pgctl: TPageControl
      Left = 9
      Top = 8
      Width = 761
      Height = 385
      ActivePage = tabFechar
      MultiLine = True
      TabIndex = 1
      TabOrder = 0
      TabStop = False
      object tabAbrir: TTabSheet
        Caption = 'Abrir caixa'
        ImageIndex = 5
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 753
          Height = 354
          Align = alClient
          Color = clWhite
          TabOrder = 0
          object Label1: TLabel
            Left = 8
            Top = 8
            Width = 568
            Height = 64
            Caption = 
              'Atualmente, o caixa est'#225' fechado. Confira se o valor existente n' +
              'o caixa '#233' o mesmo exibido a seguir e tecle <ENTER> para abrir o ' +
              'caixa com o valor exibido. Caso o valor seja diferente do exibid' +
              'o, utilize as telas de entrada e sa'#237'da  de caixa para corrigir.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object btnAbrir: TBitBtn
            Left = 584
            Top = 8
            Width = 161
            Height = 65
            Caption = 'Abrir caixa'
            Default = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = btnAbrirClick
          end
          object Panel3: TPanel
            Left = 8
            Top = 280
            Width = 737
            Height = 65
            Color = clSilver
            TabOrder = 1
            object DBText2: TDBText
              Left = 432
              Top = 40
              Width = 297
              Height = 17
              DataField = 'ValorRealNoCaixa'
              DataSource = srcSelf
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object DBText1: TDBText
              Left = 432
              Top = 8
              Width = 297
              Height = 17
              DataField = 'DataHora'
              DataSource = srcSelf
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label3: TLabel
              Left = 144
              Top = 8
              Width = 241
              Height = 20
              Alignment = taRightJustify
              Caption = 'Data/hora do '#250'ltimo fechamento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 114
              Top = 40
              Width = 271
              Height = 20
              Alignment = taRightJustify
              Caption = 'Valor no caixa no '#250'ltimo fechamento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
        end
      end
      object tabFechar: TTabSheet
        Caption = 'Fechar caixa'
        ImageIndex = 1
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 753
          Height = 354
          Align = alClient
          Color = clWhite
          TabOrder = 0
          object Label5: TLabel
            Left = 8
            Top = 8
            Width = 562
            Height = 64
            Caption = 
              'Atualmente, o caixa est'#225' aberto. Confira se o valor existente no' +
              ' caixa '#233' o mesmo exibido a seguir e tecle <ENTER> para abrir o c' +
              'aixa com o valor exibido. Caso o valor seja diferente do exibido' +
              ', utilize as telas de entrada e sa'#237'da  de caixa para corrigir.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object btnFechar: TBitBtn
            Left = 584
            Top = 8
            Width = 161
            Height = 65
            Caption = 'Fechar caixa'
            Default = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TabStop = False
            OnClick = btnFecharClick
          end
          object Panel5: TPanel
            Left = 8
            Top = 280
            Width = 737
            Height = 69
            Color = clSilver
            TabOrder = 2
            object DBText3: TDBText
              Left = 432
              Top = 40
              Width = 297
              Height = 17
              DataField = 'ValorRealNoCaixa'
              DataSource = srcSelf
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object DBText4: TDBText
              Left = 432
              Top = 8
              Width = 297
              Height = 17
              DataField = 'DataHora'
              DataSource = srcSelf
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label6: TLabel
              Left = 169
              Top = 8
              Width = 216
              Height = 20
              Alignment = taRightJustify
              Caption = 'Data/hora da '#250'ltima abertura:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 148
              Top = 40
              Width = 237
              Height = 20
              Alignment = taRightJustify
              Caption = 'Valor no caixa a '#250'ltima abertura:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
          end
          object Panel6: TPanel
            Left = 8
            Top = 75
            Width = 737
            Height = 204
            TabOrder = 0
            object Label8: TLabel
              Left = 5
              Top = 8
              Width = 111
              Height = 16
              Alignment = taRightJustify
              Caption = 'Entradas de caixa:'
            end
            object Label9: TLabel
              Left = 304
              Top = 8
              Width = 100
              Height = 16
              Alignment = taRightJustify
              Caption = 'Sa'#237'das de caixa:'
            end
            object DBText5: TDBText
              Left = 120
              Top = 8
              Width = 65
              Height = 17
              DataField = 'soma'
              DataSource = srcEntradas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText6: TDBText
              Left = 408
              Top = 8
              Width = 65
              Height = 17
              DataField = 'soma'
              DataSource = srcSaidas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Shape1: TShape
              Left = 1
              Top = 27
              Width = 737
              Height = 3
            end
            object Label10: TLabel
              Left = 8
              Top = 35
              Width = 254
              Height = 16
              Caption = 'Total em contas a receber / recebimentos:'
            end
            object DBText7: TDBText
              Left = 272
              Top = 34
              Width = 65
              Height = 17
              DataField = 'soma'
              DataSource = srcSomaContas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 599
              Top = 8
              Width = 61
              Height = 16
              Alignment = taRightJustify
              Caption = 'Caixinhas:'
            end
            object DBText10: TDBText
              Left = 664
              Top = 8
              Width = 65
              Height = 17
              DataField = 'soma'
              DataSource = srcCaixinhas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Panel7: TPanel
              Left = 1
              Top = 56
              Width = 735
              Height = 147
              Align = alBottom
              BorderWidth = 1
              Color = 8421440
              TabOrder = 0
              object GroupBox1: TGroupBox
                Left = 273
                Top = 2
                Width = 460
                Height = 143
                Align = alClient
                Caption = 'Contas desse meio de pagamento:'
                Color = clWhite
                ParentColor = False
                TabOrder = 0
                object DBGrid1: TDBGrid
                  Left = 2
                  Top = 18
                  Width = 456
                  Height = 123
                  Align = alClient
                  BorderStyle = bsNone
                  DataSource = srcContas
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -13
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = []
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'Valor'
                      Width = 85
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'DataVencimento'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'DataComandaPrestada'
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'IDComandaPrestada'
                      Width = 51
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'IDParcela'
                      Width = 37
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'Estado'
                      Visible = True
                    end>
                end
              end
              object Panel8: TPanel
                Left = 2
                Top = 2
                Width = 271
                Height = 143
                Align = alLeft
                Color = clWhite
                TabOrder = 1
                object Label11: TLabel
                  Left = 1
                  Top = 1
                  Width = 269
                  Height = 16
                  Align = alTop
                  Caption = 'Meio de pagamento:'
                  WordWrap = True
                end
                object grdMeioPag: TDBCtrlGrid
                  Left = 1
                  Top = 41
                  Width = 269
                  Height = 101
                  Align = alClient
                  AllowDelete = False
                  AllowInsert = False
                  ColCount = 2
                  Color = clWhite
                  DataSource = srcMeioPagamento
                  Orientation = goHorizontal
                  PanelHeight = 85
                  PanelWidth = 134
                  ParentColor = False
                  TabOrder = 0
                  RowCount = 1
                  SelectedColor = clSkyBlue
                  object Label12: TLabel
                    Left = 8
                    Top = 8
                    Width = 33
                    Height = 16
                    Caption = 'Meio:'
                  end
                  object DBText8: TDBText
                    Left = 16
                    Top = 24
                    Width = 113
                    Height = 17
                    DataField = 'Descricao'
                    DataSource = srcMeioPagamento
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label13: TLabel
                    Left = 9
                    Top = 42
                    Width = 39
                    Height = 16
                    Caption = 'Soma:'
                  end
                  object DBText9: TDBText
                    Left = 16
                    Top = 58
                    Width = 105
                    Height = 17
                    DataField = 'soma'
                    DataSource = srcMeioPagamento
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clBlack
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                end
                object DBNavigator1: TDBNavigator
                  Left = 1
                  Top = 17
                  Width = 269
                  Height = 24
                  DataSource = srcSelf
                  VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                  Align = alTop
                  Hints.Strings = (
                    'Primeiro Regstro'
                    'Registro Anterior'
                    'Pr'#243'ximo Registro'
                    #218'ltimo Registro'
                    'Inserir Registro'
                    'Apagar Registro'
                    'Editor Registro'
                    'Confirmar Altera'#231#227'o no Registro'
                    'Cancelar Edi'#231#227'o'
                    'Atualizar Dados')
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 1
                end
              end
            end
          end
        end
      end
    end
  end
  object srcSelf: TDataSource
    DataSet = dtsSelf
    Left = 472
    Top = 16
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
      'select * from aberturafechamentocaixa'
      'order by DataHora Desc LIMIT 1')
    RequestLive = True
    Left = 504
    Top = 16
    object dtsSelfIDAberturaFechamentoCaixa: TIntegerField
      FieldName = 'IDAberturaFechamentoCaixa'
    end
    object dtsSelfIDProfissional: TIntegerField
      FieldName = 'IDProfissional'
    end
    object dtsSelfAberto: TIntegerField
      FieldName = 'Aberto'
    end
    object dtsSelfValorCalculadoParaOCaixa: TFloatField
      FieldName = 'ValorCalculadoParaOCaixa'
      currency = True
    end
    object dtsSelfValorRealNoCaixa: TFloatField
      FieldName = 'ValorRealNoCaixa'
      currency = True
    end
    object dtsSelfDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
  end
  object srcEntradas: TDataSource
    DataSet = dtsEntradas
    Left = 560
  end
  object dtsEntradas: TZMySqlQuery
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
      'select sum(Valor) as soma from entradascaixa'
      'where DataHora>:DataHora')
    RequestLive = False
    Left = 592
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataHora'
        ParamType = ptUnknown
        Value = 37479.0634259259d
      end>
    object dtsEntradassoma: TFloatField
      FieldName = 'soma'
      currency = True
    end
  end
  object srcSaidas: TDataSource
    DataSet = dtsSaidas
    Left = 560
    Top = 32
  end
  object dtsSaidas: TZMySqlQuery
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
      'select sum(Valor) as soma from saidascaixa'
      'where DataHora>:DataHora')
    RequestLive = False
    Left = 592
    Top = 32
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataHora'
        ParamType = ptUnknown
        Value = 37479.0634259259d
      end>
  end
  object srcContas: TDataSource
    DataSet = dtsContas
    Left = 696
  end
  object dtsContas: TZMySqlQuery
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    Filtered = True
    ExtraOptions = [moStoreResult]
    Macros = <>
    DataSource = srcSelf
    Sql.Strings = (
      'select contasAReceber.*'
      'from contasAReceber, meiopagamento'
      'where ('
      '(contasAReceber.IDMeioPagamento=meiopagamento.IDMeioPagamento)'
      'and'
      '(meiopagamento.EntraEmCaixa=1)'
      'and '
      '(contasAReceber.DataHoraAbertura>:DataHora)'
      ')')
    RequestLive = False
    Left = 728
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataHora'
        ParamType = ptUnknown
        Value = 37479.0634259259d
      end>
    object dtsContasValor: TFloatField
      FieldName = 'Valor'
      Required = True
      currency = True
    end
    object dtsContasDataVencimento: TDateField
      DisplayLabel = 'Data Venc.'
      FieldName = 'DataVencimento'
      Required = True
    end
    object dtsContasDataComandaPrestada: TDateField
      DisplayLabel = 'Data Com.'
      FieldName = 'DataComandaPrestada'
      Required = True
    end
    object dtsContasIDComandaPrestada: TIntegerField
      DisplayLabel = 'N'#176'Com.'
      FieldName = 'IDComandaPrestada'
      Required = True
    end
    object dtsContasIDParcela: TIntegerField
      DisplayLabel = 'Parc.'
      FieldName = 'IDParcela'
    end
    object dtsContasDataRecebimento: TDateField
      FieldName = 'DataRecebimento'
    end
    object dtsContasIDMeioPagamento: TIntegerField
      FieldName = 'IDMeioPagamento'
      Required = True
    end
    object dtsContasEstado: TStringField
      FieldName = 'Estado'
      Required = True
      Size = 1
    end
  end
  object dtsSomaContas: TZMySqlQuery
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
      'select sum(contasAReceber.valor) as soma '
      'from contasAReceber, meiopagamento'
      'where ('
      '(contasAReceber.IDMeioPagamento=meiopagamento.IDMeioPagamento)'
      'and '
      '(meiopagamento.EntraEmCaixa=1)'
      'and '
      '(contasAReceber.DataHoraAbertura>:DataHora)'
      ')')
    RequestLive = False
    Left = 664
    Top = 32
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataHora'
        ParamType = ptUnknown
        Value = 37479.0634259259d
      end>
    object FloatField2: TFloatField
      FieldName = 'soma'
      currency = True
    end
  end
  object srcSomaContas: TDataSource
    DataSet = dtsSomaContas
    Left = 632
    Top = 32
  end
  object srcMeioPagamento: TDataSource
    DataSet = dtsMeioPagamento
    Left = 632
  end
  object dtsMeioPagamento: TZMySqlQuery
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    AfterOpen = dtsMeioPagamentoAfterScroll
    AfterScroll = dtsMeioPagamentoAfterScroll
    ExtraOptions = [moStoreResult]
    Macros = <>
    DataSource = srcSelf
    Sql.Strings = (
      'select meiopagamento.*, sum(contasAReceber.valor) as soma'
      'from contasAReceber, meiopagamento'
      'where ('
      '(contasAReceber.IDMeioPagamento=meiopagamento.IDMeioPagamento)'
      'and'
      '(meiopagamento.EntraEmCaixa=1)'
      'and '
      '(contasAReceber.DataHoraAbertura>:DataHora)'
      ')'
      'group by  meiopagamento.IDMeioPagamento')
    RequestLive = False
    Left = 664
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataHora'
        ParamType = ptUnknown
        Value = 37479.0634259259d
      end>
    object dtsMeioPagamentoIDMeioPagamento: TIntegerField
      FieldName = 'IDMeioPagamento'
    end
    object dtsMeioPagamentoDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Size = 50
    end
    object dtsMeioPagamentoEntraEmCaixa: TIntegerField
      FieldName = 'EntraEmCaixa'
    end
    object dtsMeioPagamentosoma: TFloatField
      DisplayLabel = 'Soma'
      FieldName = 'soma'
      currency = True
    end
  end
  object srcCaixinhas: TDataSource
    DataSet = dtsCaixinhas
    Left = 560
    Top = 64
  end
  object dtsCaixinhas: TZMySqlQuery
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
      'select sum(Valor) as soma from caixinhas'
      'where DataHora>:DataHora')
    RequestLive = False
    Left = 592
    Top = 64
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataHora'
        ParamType = ptUnknown
        Value = 37479.0634259259d
      end>
  end
end
