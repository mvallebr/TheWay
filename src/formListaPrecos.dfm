inherited frmListaPrecos: TfrmListaPrecos
  Left = 190
  Top = 185
  Width = 802
  Height = 487
  Caption = 'Atualizar lista de pre'#231'os de produtos'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 120
  TextHeight = 16
  object Gradient1: TGradient
    Left = 0
    Top = 0
    Width = 794
    Height = 454
    Align = alClient
    ColorBegin = clSilver
    ColorEnd = clWhite
    Reverse = True
    Style = gsLinearH
  end
  object lbTitulo: TLabel
    Left = 16
    Top = 1
    Width = 343
    Height = 36
    Caption = 'Atualizar lista de pre'#231'os'
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
      ActivePage = tabAdicionar
      MultiLine = True
      TabIndex = 1
      TabOrder = 0
      TabStop = False
      object tabPreco: TTabSheet
        Caption = 'Pre'#231'o'
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
          object panelDetalhes: TPanel
            Left = 1
            Top = 97
            Width = 751
            Height = 256
            Align = alClient
            BevelInner = bvLowered
            Color = clWhite
            TabOrder = 0
            object Label1: TLabel
              Left = 16
              Top = 6
              Width = 86
              Height = 16
              Caption = 'N'#176' de Produto:'
            end
            object Label4: TLabel
              Left = 208
              Top = 6
              Width = 130
              Height = 16
              Caption = 'Categoria do produto:'
            end
            object Label5: TLabel
              Left = 16
              Top = 72
              Width = 65
              Height = 16
              Caption = 'Descri'#231#227'o:'
            end
            object Label6: TLabel
              Left = 16
              Top = 128
              Width = 93
              Height = 16
              Caption = 'Peso/Unidade:'
            end
            object Label7: TLabel
              Left = 208
              Top = 128
              Width = 41
              Height = 16
              Caption = 'Marca:'
            end
            object DBText1: TDBText
              Left = 16
              Top = 24
              Width = 65
              Height = 17
              DataField = 'IDProduto'
              DataSource = srcProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object DBText2: TDBText
              Left = 208
              Top = 24
              Width = 217
              Height = 17
              DataField = 'Descricao'
              DataSource = srcCategory
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object DBText3: TDBText
              Left = 16
              Top = 88
              Width = 369
              Height = 17
              DataField = 'Descricao'
              DataSource = srcProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object DBText4: TDBText
              Left = 16
              Top = 144
              Width = 177
              Height = 17
              DataField = 'PesoOuUnidade'
              DataSource = srcProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object DBText5: TDBText
              Left = 208
              Top = 144
              Width = 177
              Height = 17
              DataField = 'Marca'
              DataSource = srcProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object imgFoto1: TZDbImage
              Left = 528
              Top = 7
              Width = 209
              Height = 170
              Hint = 
                'Duplo clique na imagem para escolher um arquivo de imagem para o' +
                ' produto'
              BorderStyle = bsNone
              DataField = 'Foto'
              DataSource = srcProdutos
              ParentShowHint = False
              ShowHint = True
              Stretch = True
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 1
            Top = 1
            Width = 751
            Height = 96
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 1
            object lbLegenda: TLabel
              Left = 16
              Top = 16
              Width = 326
              Height = 20
              Caption = 'Passe o c'#243'digo de barras pelo produto:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lbLegenda2: TLabel
              Left = 416
              Top = 0
              Width = 329
              Height = 33
              AutoSize = False
              Caption = 'Legenda 2'
              Transparent = True
              WordWrap = True
            end
            object edtCodigo: TEdit
              Left = 16
              Top = 40
              Width = 377
              Height = 28
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 13
              ParentFont = False
              TabOrder = 0
              OnChange = edtCodigoChange
              OnEnter = edtCodigoEnter
              OnKeyDown = edtCodigoKeyDown
            end
            object edtValor: TDBEdit
              Left = 416
              Top = 40
              Width = 201
              Height = 28
              DataField = 'ValorCusto'
              DataSource = srcProdutos
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnKeyDown = edtValorKeyDown
            end
          end
        end
      end
      object tabAdicionar: TTabSheet
        Caption = 'Cadastrar novo'
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
              'Preencha os campos abaixo (use <TAB> para movimentar por entre o' +
              's campos) e tecle <ENTER> para cadastrar o produto. <ESC> cancel' +
              'a.'
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
            Caption = 'Adicionar'
            Default = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
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
          object BitBtn2: TBitBtn
            Left = 176
            Top = 8
            Width = 161
            Height = 41
            Cancel = True
            Caption = 'Cancelar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BitBtn2Click
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333000033338833333333333333333F333333333333
              0000333911833333983333333388F333333F3333000033391118333911833333
              38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
              911118111118333338F3338F833338F3000033333911111111833333338F3338
              3333F8330000333333911111183333333338F333333F83330000333333311111
              8333333333338F3333383333000033333339111183333333333338F333833333
              00003333339111118333333333333833338F3333000033333911181118333333
              33338333338F333300003333911183911183333333383338F338F33300003333
              9118333911183333338F33838F338F33000033333913333391113333338FF833
              38F338F300003333333333333919333333388333338FFF830000333333333333
              3333333333333333333888330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
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
          object Label3: TLabel
            Left = 8
            Top = 6
            Width = 86
            Height = 16
            Caption = 'N'#176' de Produto:'
            FocusControl = EditIDProduto
          end
          object Label8: TLabel
            Left = 152
            Top = 6
            Width = 130
            Height = 16
            Caption = 'Categoria do produto:'
          end
          object Label9: TLabel
            Left = 431
            Top = 6
            Width = 30
            Height = 16
            Alignment = taRightJustify
            Caption = 'Foto:'
          end
          object Label10: TLabel
            Left = 8
            Top = 72
            Width = 65
            Height = 16
            Caption = 'Descri'#231#227'o:'
            FocusControl = edtDescricao
          end
          object Label11: TLabel
            Left = 8
            Top = 192
            Width = 93
            Height = 16
            Caption = 'Peso/Unidade:'
            FocusControl = DBEdit2
          end
          object Label12: TLabel
            Left = 160
            Top = 192
            Width = 41
            Height = 16
            Caption = 'Marca:'
            FocusControl = DBEdit3
          end
          object Label13: TLabel
            Left = 8
            Top = 136
            Width = 213
            Height = 16
            Caption = 'Valor de custo (da nota de compra):'
            FocusControl = edtValorCusto
          end
          object Label14: TLabel
            Left = 8
            Top = 248
            Width = 229
            Height = 16
            Caption = 'N'#250'mero de c'#243'digo de barras (EAN13):'
            FocusControl = edtCodBarras
          end
          object EditIDProduto: TDBEdit
            Left = 8
            Top = 24
            Width = 94
            Height = 24
            TabStop = False
            DataField = 'IDProduto'
            DataSource = srcProdutos
            ReadOnly = True
            TabOrder = 7
          end
          object edtCategoria: TDBLookupComboBox
            Left = 152
            Top = 24
            Width = 145
            Height = 24
            DataField = 'IDCategoriaProduto'
            DataSource = srcProdutos
            KeyField = 'IDCategoriaProduto'
            ListField = 'Descricao'
            ListSource = srcCategory
            TabOrder = 0
          end
          object imgFoto: TZDbImage
            Left = 464
            Top = 8
            Width = 281
            Height = 281
            Hint = 
              'Duplo clique na imagem para escolher um arquivo de imagem para o' +
              ' produto'
            DataField = 'Foto'
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            TabOrder = 6
            OnDblClick = imgFotoDblClick
            OnKeyUp = imgFotoKeyUp
          end
          object edtDescricao: TDBEdit
            Left = 8
            Top = 88
            Width = 289
            Height = 24
            DataField = 'Descricao'
            DataSource = srcProdutos
            TabOrder = 1
          end
          object DBEdit2: TDBEdit
            Left = 8
            Top = 208
            Width = 137
            Height = 24
            DataField = 'PesoOuUnidade'
            DataSource = srcProdutos
            TabOrder = 3
          end
          object DBEdit3: TDBEdit
            Left = 160
            Top = 208
            Width = 137
            Height = 24
            DataField = 'Marca'
            DataSource = srcProdutos
            TabOrder = 4
          end
          object edtValorCusto: TDBEdit
            Left = 8
            Top = 152
            Width = 289
            Height = 24
            DataField = 'ValorCusto'
            DataSource = srcProdutos
            TabOrder = 2
          end
          object edtCodBarras: TDBEdit
            Left = 8
            Top = 264
            Width = 289
            Height = 24
            DataField = 'CodBarras'
            DataSource = srcProdutos
            TabOrder = 5
            OnEnter = edtCodBarrasEnter
          end
        end
      end
    end
  end
  object srcProdutos: TDataSource
    DataSet = dtsProdutos
    Left = 488
    Top = 8
  end
  object dtsProdutos: TZMySqlTable
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    BeforePost = dtsProdutosBeforePost
    AfterScroll = dtsProdutosAfterScroll
    Filtered = True
    ExtraOptions = [moStoreResult]
    TableName = 'produtos'
    Active = True
    Left = 520
    Top = 8
    object dtsProdutosIDProduto: TIntegerField
      FieldName = 'IDProduto'
    end
    object dtsProdutosIDCategoriaProduto: TIntegerField
      FieldName = 'IDCategoriaProduto'
      ReadOnly = True
    end
    object dtsProdutosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object dtsProdutosPesoOuUnidade: TStringField
      FieldName = 'PesoOuUnidade'
      Size = 50
    end
    object dtsProdutosMarca: TStringField
      FieldName = 'Marca'
      Size = 50
    end
    object dtsProdutosDataUltimaAlteracao: TDateField
      FieldName = 'DataUltimaAlteracao'
    end
    object dtsProdutosValorCusto: TFloatField
      FieldName = 'ValorCusto'
      currency = True
    end
    object dtsProdutosValorRevenda: TFloatField
      FieldName = 'ValorRevenda'
    end
    object dtsProdutosValorRevendaFuncionario: TFloatField
      FieldName = 'ValorRevendaFuncionario'
    end
    object dtsProdutosFoto: TBlobField
      FieldName = 'Foto'
    end
    object dtsProdutosCodBarras: TStringField
      FieldName = 'CodBarras'
      Size = 50
    end
    object dtsProdutosComissaoPercentualProf: TFloatField
      FieldName = 'ComissaoPercentualProf'
    end
  end
  object dtsCategory: TZMySqlTable
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkFields = 'IDCategoriaProduto=IDCategoriaProduto'
    LinkOptions = [loAlwaysResync]
    MasterSource = srcProdutos
    Constraints = <>
    ExtraOptions = [moStoreResult]
    TableName = 'categoriasprodutos'
    Active = True
    Left = 520
    Top = 40
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
  object srcCategory: TDataSource
    DataSet = dtsCategory
    Left = 488
    Top = 40
  end
  object dlgFoto: TOpenPictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Options = [ofReadOnly, ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Title = 'Foto de produto'
    Left = 480
    Top = 8
  end
end
