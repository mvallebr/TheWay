inherited frmContasAReceber: TfrmContasAReceber
  Left = 225
  Top = 171
  Width = 800
  Height = 532
  Caption = 'Contas a receber / recebimentos'
  OldCreateOrder = True
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object Gradient1: TGradient
    Left = 0
    Top = 0
    Width = 792
    Height = 500
    Align = alClient
    ColorBegin = clSilver
    ColorEnd = clWhite
    Reverse = True
    Style = gsLinearH
  end
  object lbTitulo: TLabel
    Left = 16
    Top = 1
    Width = 441
    Height = 36
    Caption = 'Contas a receber/recebimentos'
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
      Left = 8
      Top = 8
      Width = 761
      Height = 385
      ActivePage = tabParcelas
      MultiLine = True
      TabIndex = 0
      TabOrder = 0
      TabStop = False
      object tabParcelas: TTabSheet
        Caption = 'Parcelas'
        ImageIndex = 5
        object Panel12: TPanel
          Left = 0
          Top = 0
          Width = 753
          Height = 354
          Align = alClient
          Color = clWhite
          TabOrder = 0
          object Label26: TLabel
            Left = 17
            Top = 42
            Width = 3
            Height = 16
          end
          object grdContas: TDBGrid
            Left = 1
            Top = 33
            Width = 751
            Height = 320
            Align = alClient
            DataSource = srcParcelas
            FixedColor = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = 4227200
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DataComandaPrestada'
                Width = 116
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IDComandaPrestada'
                Width = 66
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IDParcela'
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DataVencimento'
                Width = 116
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DataRecebimento'
                Width = 125
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Valor'
                Width = 93
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Estado'
                PickList.Strings = (
                  'Recebida'
                  'N'#227'o recebida ainda'
                  'Inadimplente')
                ReadOnly = True
                Visible = True
              end>
          end
          object ToolBar1: TToolBar
            Left = 1
            Top = 1
            Width = 751
            AutoSize = True
            ButtonHeight = 28
            ButtonWidth = 149
            Caption = 'ToolBar1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsUnderline]
            ParentFont = False
            ShowCaptions = True
            TabOrder = 1
            object ToolButton4: TToolButton
              Left = 0
              Top = 2
              Width = 8
              Caption = 'ToolButton4'
              ImageIndex = 3
              Style = tbsSeparator
            end
            object btnRecebida: TToolButton
              Left = 8
              Top = 2
              Cursor = crHandPoint
              Hint = 'Recebida'
              Caption = 'Recebida'
              Grouped = True
              ImageIndex = 0
              ParentShowHint = False
              ShowHint = True
              OnClick = btnRecebidaClick
            end
            object btnNaoRecebida: TToolButton
              Left = 157
              Top = 2
              Cursor = crHandPoint
              Hint = 'N'#227'o recebida ainda'
              Caption = 'N'#227'o recebida ainda'
              Grouped = True
              ImageIndex = 1
              ParentShowHint = False
              ShowHint = True
              OnClick = btnNaoRecebidaClick
            end
            object btnSemFundo: TToolButton
              Left = 306
              Top = 2
              Cursor = crHandPoint
              Hint = 'Sem fundo'
              Caption = 'Sem fundo'
              Grouped = True
              ImageIndex = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = btnSemFundoClick
            end
          end
        end
      end
      object tabFiltro: TTabSheet
        Caption = 'Filtro'
        ImageIndex = 1
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 753
          Height = 57
          Align = alTop
          Color = clWhite
          TabOrder = 0
          object Label2: TLabel
            Left = 17
            Top = 42
            Width = 3
            Height = 16
          end
          object Label25: TLabel
            Left = 352
            Top = 4
            Width = 390
            Height = 49
            Alignment = taCenter
            AutoSize = False
            Caption = 
              'Escolha a configura'#231#227'o do filtro e clique em"aplicar filtro" par' +
              'a que as configura'#231#245'es fa'#231'am efeito. Para desabilitar o filtro, ' +
              'clique em "Limpar Filtro"'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object BitBtn1: TBitBtn
            Left = 8
            Top = 8
            Width = 161
            Height = 41
            Caption = 'Aplicar filtro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn1Click
            Glyph.Data = {
              76020000424D7602000000000000760000002800000020000000200000000100
              0400000000000002000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000FF
              FFFFFFFFF000000000FFF088700000FFFFFFFFFFF088700000FFF088700000FF
              FFFFFFFFF088700000FFF088700000FFFFFFFFFFF088700000FFF088700000FF
              FFFFFFFFF088700000FFF0000000000000FFF0000000000000FFF00000000000
              00FFF0000000000000FFF0880000000000FFF0088000000000FFF08807000000
              000000088070000000FFF08807000000080000088070000000FFF08807000000
              080000088070000000FFF08807000000080000088070000000FFF08807000000
              080000088070000000FFFF000700000000000000007000000FFFFF0007000000
              00000000007000000FFFFF000000000000000000000000000FFFFFFFF0888700
              00FFF088870000FFFFFFFFFFF000000000FFF000000000FFFFFFFFFFF0000000
              00FFF000000000FFFFFFFFFFF000000000FFF000000000FFFFFFFFFFFF077000
              0FFFFF0770000FFFFFFFFFFFFF0770000FFFFF0770000FFFFFFFFFFFFF077000
              0FFFFF0770000FFFFFFFFFFFFF0000000FFFFF0000000FFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
          object BitBtn2: TBitBtn
            Left = 176
            Top = 8
            Width = 161
            Height = 41
            Caption = 'Limpar filtro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BitBtn2Click
            Glyph.Data = {
              76020000424D7602000000000000760000002800000020000000200000000100
              0400000000000002000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00F00000000000
              0000000000000000000FF0FFFFFFFFFFFFFFFFFFFFFFFFFFFF0FF0F777777777
              7F770000F00000000F0FF0F77F777F777F77F000F00F0000FF0FF0FFFFFFFFFF
              FFFFFFFFFFFFFFFFFF0FF0F777777F7777777F7000000F000F0FF0F7777F7F77
              F77FFFFFF0F00F00FF0FF0FFFFFFFFFFFFFFFFFFFFFFFFFFFF0FF0F7777F7777
              7FF000000FF000000F0FF0F7F77F777FFF0D919190FF00FF0F0FF0FFFFFFFFFF
              F0D9D919190FFFFFFF0FF0F07F7777FF0DDD9D919190FF000F0FF0F00F777FF0
              DDDDD9D919190FF00F0FF0FFFFFFFFF0DDDDDD9D919190FFFF0FF0F00007FF0D
              DDDDDDD9D919190FFF0FF0F0F000FF0DDFDDDDDD9D9193000F0FF0FFFFFFFF0D
              DFFDDDDDD9D930300F0FF0F00000FF0DDFFDDDDDDD9F0303000FF0F0F000FFF0
              DDFFDDDDDDF0B030390FF0FFFFFFFFF00DDFFDDDDF0B0B039390F0F0000000FF
              00DDFDDDFCB0B0B93939F0F000F0F0FFF00DDDDFCFCB0B9B9393F077777777FF
              FF00DDFCFCFCBBB9B939F000000007000FF00FCFCFCBBBBB9B93FF0FFFFF0700
              00FF0CFCFCBBBBBBB9B9FFF0FFFF07FFFFFFF0CFCFFBBBBBBB9BFFFF0FFF0700
              0F00FF0CFFFFBBBBBBB9FFFFF0FF070F0F000FF0FFFFFBBBBBBBFFFFFF0F07FF
              FFFFFFFF0FFFFFBBBBBBFFFFFFF007FFFFFFFFFFF0FFFFFBBBBBFFFFFFFF0000
              00000000000FFFFFBBBBFFFFFFFFFFFFFFFFFFFFFFF0FFFFFBBB}
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 57
          Width = 753
          Height = 297
          Align = alClient
          Color = clWhite
          TabOrder = 1
          object GroupBox1: TGroupBox
            Left = 8
            Top = 0
            Width = 361
            Height = 97
            Caption = 'Data da comanda:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object edtDataComandaMa: TDateTimePicker
              Left = 164
              Top = 22
              Width = 186
              Height = 24
              CalAlignment = dtaLeft
              Date = 37486.1020907407
              Time = 37486.1020907407
              DateFormat = dfShort
              DateMode = dmComboBox
              Kind = dtkDate
              ParseInput = False
              TabOrder = 0
            end
            object edtDataComandaMe: TDateTimePicker
              Left = 164
              Top = 62
              Width = 186
              Height = 24
              CalAlignment = dtaLeft
              Date = 37486.1020907407
              Time = 37486.1020907407
              DateFormat = dfShort
              DateMode = dmComboBox
              Kind = dtkDate
              ParseInput = False
              TabOrder = 1
            end
            object chkDataComandaMa: TCheckBox
              Left = 16
              Top = 26
              Width = 145
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Maior ou igual a'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object chkDataComandaMe: TCheckBox
              Left = 9
              Top = 66
              Width = 153
              Height = 17
              Alignment = taLeftJustify
              Caption = 'e menor ou igual a '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
          end
          object GroupBox4: TGroupBox
            Left = 384
            Top = 1
            Width = 105
            Height = 97
            Caption = 'N'#176' comanda:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object chkNumeroComanda: TCheckBox
              Left = 13
              Top = 26
              Width = 81
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Igual a'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object edtNumeroComanda: TSpinEdit
              Left = 12
              Top = 53
              Width = 85
              Height = 26
              MaxValue = 0
              MinValue = 0
              TabOrder = 1
              Value = 1
            end
          end
          object GroupBox2: TGroupBox
            Left = 8
            Top = 112
            Width = 361
            Height = 97
            Caption = 'Data de vencimento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object edtDataVencimentoMa: TDateTimePicker
              Left = 164
              Top = 22
              Width = 186
              Height = 24
              CalAlignment = dtaLeft
              Date = 37486.1020907407
              Time = 37486.1020907407
              DateFormat = dfShort
              DateMode = dmComboBox
              Kind = dtkDate
              ParseInput = False
              TabOrder = 0
            end
            object edtDataVencimentoMe: TDateTimePicker
              Left = 164
              Top = 62
              Width = 186
              Height = 24
              CalAlignment = dtaLeft
              Date = 37486.1020907407
              Time = 37486.1020907407
              DateFormat = dfShort
              DateMode = dmComboBox
              Kind = dtkDate
              ParseInput = False
              TabOrder = 1
            end
            object chkDataVencimentoMa: TCheckBox
              Left = 16
              Top = 26
              Width = 145
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Maior ou igual a'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object chkDataVencimentoMe: TCheckBox
              Left = 9
              Top = 66
              Width = 153
              Height = 17
              Alignment = taLeftJustify
              Caption = 'e menor ou igual a '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
          end
          object GroupBox3: TGroupBox
            Left = 384
            Top = 112
            Width = 361
            Height = 97
            Caption = 'Data de recebimento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object edtDataRecebimentoMa: TDateTimePicker
              Left = 164
              Top = 22
              Width = 186
              Height = 24
              CalAlignment = dtaLeft
              Date = 37486.1020907407
              Time = 37486.1020907407
              DateFormat = dfShort
              DateMode = dmComboBox
              Kind = dtkDate
              ParseInput = False
              TabOrder = 0
            end
            object edtDataRecebimentoMe: TDateTimePicker
              Left = 164
              Top = 62
              Width = 186
              Height = 24
              CalAlignment = dtaLeft
              Date = 37486.1020907407
              Time = 37486.1020907407
              DateFormat = dfShort
              DateMode = dmComboBox
              Kind = dtkDate
              ParseInput = False
              TabOrder = 1
            end
            object chkDataRecebimentoMa: TCheckBox
              Left = 16
              Top = 26
              Width = 145
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Maior ou igual a'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object chkDataRecebimentoMe: TCheckBox
              Left = 9
              Top = 66
              Width = 153
              Height = 17
              Alignment = taLeftJustify
              Caption = 'e menor ou igual a '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
          end
          object GroupBox5: TGroupBox
            Left = 496
            Top = 1
            Width = 249
            Height = 97
            Caption = 'Estado da conta:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            object chkNaoRecebida: TCheckBox
              Left = 8
              Top = 24
              Width = 201
              Height = 17
              Caption = '(N) N'#227'o Recebida ainda'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              State = cbChecked
              TabOrder = 0
            end
            object chkRecebida: TCheckBox
              Left = 8
              Top = 48
              Width = 201
              Height = 17
              Caption = '(R) Recebida'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              State = cbChecked
              TabOrder = 1
            end
            object chkSemFundo: TCheckBox
              Left = 8
              Top = 72
              Width = 209
              Height = 17
              Caption = '(S) Sem fundo'
              Checked = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              State = cbChecked
              TabOrder = 2
            end
          end
          object GroupBox6: TGroupBox
            Left = 8
            Top = 224
            Width = 737
            Height = 57
            Caption = 'Valor da parcela:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            object chkValorMa: TCheckBox
              Left = 8
              Top = 26
              Width = 145
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Maior ou igual a'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object chkValorMe: TCheckBox
              Left = 384
              Top = 26
              Width = 153
              Height = 17
              Alignment = taLeftJustify
              Caption = 'e menor ou igual a '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object edtValorMa: TFloatSpinEdit
              Left = 166
              Top = 21
              Width = 185
              Height = 26
              Increment = 1
              TabOrder = 2
            end
            object edtValorMe: TFloatSpinEdit
              Left = 542
              Top = 21
              Width = 185
              Height = 26
              Increment = 1
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  object srcParcelas: TDataSource
    DataSet = dtsParcelas
    Left = 488
    Top = 8
  end
  object dtsParcelas: TZMySqlTable
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    AfterPost = dtsParcelasAfterPost
    AfterScroll = dtsParcelasAfterScroll
    Filtered = True
    ExtraOptions = [moStoreResult]
    TableName = 'contasareceber'
    Left = 520
    Top = 8
    object dtsParcelasDataComandaPrestada: TDateField
      DisplayLabel = 'DataCom.'
      FieldName = 'DataComandaPrestada'
      ReadOnly = True
      Required = True
    end
    object dtsParcelasIDComandaPrestada: TIntegerField
      DisplayLabel = 'N'#176'Com.'
      FieldName = 'IDComandaPrestada'
      ReadOnly = True
      Required = True
    end
    object dtsParcelasIDParcela: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'IDParcela'
      ReadOnly = True
    end
    object dtsParcelasDataVencimento: TDateField
      DisplayLabel = 'Data de Venc.'
      FieldName = 'DataVencimento'
      ReadOnly = True
      Required = True
    end
    object dtsParcelasDataRecebimento: TDateField
      DisplayLabel = 'Data de Receb.'
      FieldName = 'DataRecebimento'
    end
    object dtsParcelasValor: TFloatField
      FieldName = 'Valor'
      ReadOnly = True
      Required = True
      currency = True
    end
    object dtsParcelasIDMeioPagamento: TIntegerField
      FieldName = 'IDMeioPagamento'
      Required = True
    end
    object dtsParcelasEstado: TStringField
      FieldName = 'Estado'
      Required = True
      Size = 1
    end
  end
end
