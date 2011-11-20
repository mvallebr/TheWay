inherited frmFecharComanda: TfrmFecharComanda
  Left = 203
  Top = 215
  Width = 800
  Height = 481
  Caption = 'Fechar comanda'
  OldCreateOrder = True
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 120
  TextHeight = 16
  object Gradient1: TGradient
    Left = 0
    Top = 0
    Width = 792
    Height = 449
    Align = alClient
    ColorBegin = clSilver
    ColorEnd = clWhite
    Reverse = True
    Style = gsLinearH
  end
  object lbTitulo: TLabel
    Left = 16
    Top = 1
    Width = 236
    Height = 36
    Caption = 'Fechar comanda'
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
      ActivePage = tabConcluir
      MultiLine = True
      TabIndex = 5
      TabOrder = 0
      TabStop = False
      object tabEscolheComanda: TTabSheet
        Caption = 'tabEscolheComanda'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 753
          Height = 354
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object grdComandas: TDBGrid
            Left = 0
            Top = 65
            Width = 753
            Height = 289
            Align = alClient
            DataSource = srcComandas
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -14
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DataAbertura'
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HoraAbertura'
                Width = 89
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IDCliente'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NomeCliente'
                Width = 459
                Visible = True
              end>
          end
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 753
            Height = 65
            Align = alTop
            Color = clWhite
            TabOrder = 1
            object lbEscolheComanda: TLabel
              Left = 4
              Top = 3
              Width = 680
              Height = 16
              Caption = 
                'Escolha a comanda a ser fechada pela lista ou passe o c'#243'digo de ' +
                'barras no crach'#225' de comanda da cliente:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
            end
            object Label3: TLabel
              Left = 25
              Top = 34
              Width = 62
              Height = 16
              Caption = 'Comanda:'
            end
            object edtComanda: TEdit
              Left = 97
              Top = 31
              Width = 248
              Height = 24
              MaxLength = 13
              TabOrder = 0
              OnKeyUp = edtComandaKeyUp
            end
          end
        end
      end
      object tabConfirma: TTabSheet
        Caption = 'tabConfirma'
        ImageIndex = 1
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 753
          Height = 354
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object grdConsumo: TDBGrid
            Left = 0
            Top = 57
            Width = 753
            Height = 256
            Align = alClient
            DataSource = srcConsumo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 10485760
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -20
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnKeyDown = grdConsumoKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'Descricao'
                Width = 447
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtd'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Preco'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IDProfissional'
                Width = 61
                Visible = True
              end>
          end
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 753
            Height = 57
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 1
            object DBText1: TDBText
              Left = 125
              Top = 8
              Width = 76
              Height = 17
              DataField = 'DataAbertura'
              DataSource = srcComandas
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object DBText2: TDBText
              Left = 72
              Top = 8
              Width = 41
              Height = 17
              Alignment = taRightJustify
              DataField = 'IDComanda'
              DataSource = srcComandas
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label4: TLabel
              Left = 8
              Top = 8
              Width = 62
              Height = 16
              Caption = 'Comanda:'
              Transparent = True
            end
            object Label5: TLabel
              Left = 116
              Top = 7
              Width = 5
              Height = 18
              Caption = '-'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 24
              Top = 32
              Width = 44
              Height = 16
              Caption = 'Cliente:'
            end
            object DBText3: TDBText
              Left = 72
              Top = 32
              Width = 41
              Height = 17
              Alignment = taRightJustify
              DataField = 'IDCliente'
              DataSource = srcComandas
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label7: TLabel
              Left = 116
              Top = 31
              Width = 5
              Height = 18
              Caption = '-'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
            end
            object DBText4: TDBText
              Left = 125
              Top = 31
              Width = 268
              Height = 17
              DataField = 'NomeCliente'
              DataSource = srcComandas
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object btnBuscar: TBitBtn
              Left = 400
              Top = 8
              Width = 193
              Height = 17
              Caption = 'Buscar por nome <F6>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TabStop = False
              OnClick = btnBuscarClick
            end
            object btnCadastrarCliente: TBitBtn
              Left = 400
              Top = 32
              Width = 193
              Height = 17
              Caption = 'Cadastrar cliente <F7>'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              TabStop = False
              OnClick = btnCadastrarClienteClick
            end
            object btnPagar1: TBitBtn
              Left = 600
              Top = 8
              Width = 145
              Height = 41
              Hint = 'Clique nesse bot'#227'o para escolher a forma de pagamento e pagar'
              Caption = 'Pr'#243'ximo'
              Default = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
              TabStop = False
              OnClick = btnPagar1Click
              Glyph.Data = {
                76020000424D7602000000000000760000002800000020000000200000000100
                0400000000000002000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFFFFFFFFFF
                FFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFFF
                FFFFFFF00000000FFFFF7700000000000000000000000000FFFF777000000000
                00000000000000000FFF777700000000000000000000000000FF777770000000
                0000000000000000000F77777700000000000000000000000000777778888888
                888888888888888888887777888888888888888888888888888F777888888888
                888888888888888888FF77888888888888888888888888888FFF788888888888
                8888888888888888FFFFFFFFFFFFFFFFFFFFFFF88888888FFFFFFFFFFFFFFFFF
                FFFFFFF8888888FFFFFFFFFFFFFFFFFFFFFFFFF888888FFFFFFFFFFFFFFFFFFF
                FFFFFFF88888FFFFFFFFFFFFFFFFFFFFFFFFFFF8888FFFFFFFFFFFFFFFFFFFFF
                FFFFFFF888FFFFFFFFFFFFFFFFFFFFFFFFFFFFF88FFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
          end
          object Panel6: TPanel
            Left = 0
            Top = 313
            Width = 753
            Height = 41
            Align = alBottom
            Color = clWhite
            TabOrder = 2
            object Label8: TLabel
              Left = 316
              Top = 0
              Width = 182
              Height = 36
              Alignment = taRightJustify
              Caption = 'Total a pagar:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -31
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object DBText5: TDBText
              Left = 517
              Top = 0
              Width = 169
              Height = 41
              Alignment = taRightJustify
              DataField = 'valor'
              DataSource = srcTotal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -31
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
          end
        end
      end
      object tabFormaPagamento: TTabSheet
        Caption = 'tabFormaPagamento'
        ImageIndex = 2
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 753
          Height = 354
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 753
            Height = 57
            Align = alTop
            Color = clWhite
            TabOrder = 0
            object Label9: TLabel
              Left = 6
              Top = 11
              Width = 291
              Height = 32
              Alignment = taCenter
              Caption = 
                'Por favor, escolha a forma de pagamento usando as setas do tecla' +
                'do:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
            end
            object Label10: TLabel
              Left = 17
              Top = 42
              Width = 3
              Height = 16
            end
            object DBText6: TDBText
              Left = 312
              Top = 8
              Width = 281
              Height = 30
              DataField = 'Descricao'
              DataSource = srcFormasPagamento
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Arial'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object BitBtn2: TBitBtn
              Left = 600
              Top = 8
              Width = 145
              Height = 41
              Hint = 'Clique nesse bot'#227'o para escolher a forma de pagamento e pagar'
              Caption = 'Pr'#243'ximo'
              Default = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              TabStop = False
              OnClick = BitBtn2Click
              Glyph.Data = {
                76020000424D7602000000000000760000002800000020000000200000000100
                0400000000000002000000000000000000001000000000000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFFFFFFFFFF
                FFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFFF
                FFFFFFF00000000FFFFF7700000000000000000000000000FFFF777000000000
                00000000000000000FFF777700000000000000000000000000FF777770000000
                0000000000000000000F77777700000000000000000000000000777778888888
                888888888888888888887777888888888888888888888888888F777888888888
                888888888888888888FF77888888888888888888888888888FFF788888888888
                8888888888888888FFFFFFFFFFFFFFFFFFFFFFF88888888FFFFFFFFFFFFFFFFF
                FFFFFFF8888888FFFFFFFFFFFFFFFFFFFFFFFFF888888FFFFFFFFFFFFFFFFFFF
                FFFFFFF88888FFFFFFFFFFFFFFFFFFFFFFFFFFF8888FFFFFFFFFFFFFFFFFFFFF
                FFFFFFF888FFFFFFFFFFFFFFFFFFFFFFFFFFFFF88FFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
          end
          object Panel9: TPanel
            Left = 0
            Top = 57
            Width = 753
            Height = 297
            Align = alClient
            TabOrder = 1
            object DBGrid2: TDBGrid
              Left = 281
              Top = 1
              Width = 471
              Height = 295
              TabStop = False
              Align = alClient
              DataSource = srcPrestacoes
              Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -14
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Descricao'
                  Width = 321
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MeioDePagamento'
                  Width = 139
                  Visible = True
                end>
            end
            object DBGrid3: TDBGrid
              Left = 1
              Top = 1
              Width = 280
              Height = 295
              Align = alLeft
              DataSource = srcFormasPagamento
              Options = [dgTitles, dgIndicator, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -14
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Descricao'
                  Visible = True
                end>
            end
          end
        end
      end
      object tabDataPrestacoes: TTabSheet
        Caption = 'tabDataPrestacoes'
        ImageIndex = 3
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 753
          Height = 57
          Align = alTop
          Color = clWhite
          TabOrder = 1
          object Label11: TLabel
            Left = 6
            Top = 8
            Width = 469
            Height = 16
            Alignment = taCenter
            Caption = 
              'Por favor, determine a data de pagamento das presta'#231#245'es a seguir' +
              ':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object Label12: TLabel
            Left = 17
            Top = 42
            Width = 3
            Height = 16
          end
          object BitBtn1: TBitBtn
            Left = 600
            Top = 8
            Width = 145
            Height = 41
            Hint = 'Clique nesse bot'#227'o para escolher a forma de pagamento e pagar'
            Caption = 'Pr'#243'ximo'
            Default = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = False
            OnClick = BitBtn1Click
            Glyph.Data = {
              76020000424D7602000000000000760000002800000020000000200000000100
              0400000000000002000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFFFFFFFFFF
              FFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFFF
              FFFFFFF00000000FFFFF7700000000000000000000000000FFFF777000000000
              00000000000000000FFF777700000000000000000000000000FF777770000000
              0000000000000000000F77777700000000000000000000000000777778888888
              888888888888888888887777888888888888888888888888888F777888888888
              888888888888888888FF77888888888888888888888888888FFF788888888888
              8888888888888888FFFFFFFFFFFFFFFFFFFFFFF88888888FFFFFFFFFFFFFFFFF
              FFFFFFF8888888FFFFFFFFFFFFFFFFFFFFFFFFF888888FFFFFFFFFFFFFFFFFFF
              FFFFFFF88888FFFFFFFFFFFFFFFFFFFFFFFFFFF8888FFFFFFFFFFFFFFFFFFFFF
              FFFFFFF888FFFFFFFFFFFFFFFFFFFFFFFFFFFFF88FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
        end
        object DBCtrlGrid1: TDBCtrlGrid
          Left = 0
          Top = 57
          Width = 753
          Height = 297
          Align = alClient
          AllowDelete = False
          AllowInsert = False
          ColCount = 1
          Color = clWhite
          DataSource = srcSemData
          PanelBorder = gbNone
          PanelHeight = 42
          PanelWidth = 733
          ParentColor = False
          TabOrder = 0
          RowCount = 7
          SelectedColor = clSkyBlue
          object DBText7: TDBText
            Left = 72
            Top = 8
            Width = 73
            Height = 17
            Alignment = taRightJustify
            DataField = 'DataComanda'
            DataSource = srcSemData
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText8: TDBText
            Left = 152
            Top = 8
            Width = 41
            Height = 17
            DataField = 'IDComanda'
            DataSource = srcSemData
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 144
            Top = 8
            Width = 4
            Height = 16
            Caption = '-'
          end
          object DBText9: TDBText
            Left = 256
            Top = 8
            Width = 25
            Height = 17
            DataField = 'IDParcela'
            DataSource = srcSemData
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 8
            Top = 8
            Width = 62
            Height = 16
            Caption = 'Comanda:'
          end
          object Label17: TLabel
            Left = 200
            Top = 8
            Width = 50
            Height = 16
            Caption = 'Parcela:'
          end
          object Label18: TLabel
            Left = 456
            Top = 8
            Width = 35
            Height = 16
            Caption = 'Valor:'
          end
          object Label19: TLabel
            Left = 288
            Top = 8
            Width = 74
            Height = 16
            Caption = 'Vencimento:'
          end
          object DBText10: TDBText
            Left = 496
            Top = 8
            Width = 73
            Height = 17
            DataField = 'Valor'
            DataSource = srcSemData
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText20: TDBText
            Left = 608
            Top = 8
            Width = 121
            Height = 17
            DataField = 'MeioDePagamento'
            DataSource = srcSemData
          end
          object Label32: TLabel
            Left = 568
            Top = 8
            Width = 33
            Height = 16
            Caption = 'Meio:'
          end
          object edtVencimento: TDBEdit
            Left = 362
            Top = 3
            Width = 80
            Height = 24
            DataField = 'DataVencimento'
            DataSource = srcSemData
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      object tabValorPrestacoes: TTabSheet
        Caption = 'tabValorPrestacoes'
        ImageIndex = 4
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 753
          Height = 57
          Align = alTop
          Color = clWhite
          TabOrder = 1
          object Label13: TLabel
            Left = 6
            Top = 8
            Width = 369
            Height = 16
            Alignment = taCenter
            Caption = 'Por favor, determine o valor das presta'#231#245'es a seguir:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object Label14: TLabel
            Left = 17
            Top = 42
            Width = 3
            Height = 16
          end
          object BitBtn3: TBitBtn
            Left = 600
            Top = 8
            Width = 145
            Height = 41
            Hint = 'Clique nesse bot'#227'o para escolher a forma de pagamento e pagar'
            Caption = 'Pr'#243'ximo'
            Default = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = False
            OnClick = BitBtn3Click
            Glyph.Data = {
              76020000424D7602000000000000760000002800000020000000200000000100
              0400000000000002000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFFFFFFFFFF
              FFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFFF
              FFFFFFF00000000FFFFF7700000000000000000000000000FFFF777000000000
              00000000000000000FFF777700000000000000000000000000FF777770000000
              0000000000000000000F77777700000000000000000000000000777778888888
              888888888888888888887777888888888888888888888888888F777888888888
              888888888888888888FF77888888888888888888888888888FFF788888888888
              8888888888888888FFFFFFFFFFFFFFFFFFFFFFF88888888FFFFFFFFFFFFFFFFF
              FFFFFFF8888888FFFFFFFFFFFFFFFFFFFFFFFFF888888FFFFFFFFFFFFFFFFFFF
              FFFFFFF88888FFFFFFFFFFFFFFFFFFFFFFFFFFF8888FFFFFFFFFFFFFFFFFFFFF
              FFFFFFF888FFFFFFFFFFFFFFFFFFFFFFFFFFFFF88FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
        end
        object DBCtrlGrid2: TDBCtrlGrid
          Left = 0
          Top = 57
          Width = 753
          Height = 297
          Align = alClient
          AllowDelete = False
          AllowInsert = False
          ColCount = 1
          Color = clWhite
          DataSource = srcSemValor
          PanelBorder = gbNone
          PanelHeight = 42
          PanelWidth = 733
          ParentColor = False
          TabOrder = 0
          RowCount = 7
          SelectedColor = clSkyBlue
          object DBText11: TDBText
            Left = 72
            Top = 8
            Width = 73
            Height = 17
            Alignment = taRightJustify
            DataField = 'DataComanda'
            DataSource = srcSemValor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText12: TDBText
            Left = 160
            Top = 8
            Width = 33
            Height = 17
            DataField = 'IDComanda'
            DataSource = srcSemValor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label20: TLabel
            Left = 152
            Top = 8
            Width = 4
            Height = 16
            Caption = '-'
          end
          object DBText13: TDBText
            Left = 256
            Top = 8
            Width = 33
            Height = 17
            DataField = 'IDParcela'
            DataSource = srcSemValor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 8
            Top = 8
            Width = 62
            Height = 16
            Caption = 'Comanda:'
          end
          object Label22: TLabel
            Left = 200
            Top = 8
            Width = 50
            Height = 16
            Caption = 'Parcela:'
          end
          object Label23: TLabel
            Left = 440
            Top = 8
            Width = 35
            Height = 16
            Caption = 'Valor:'
          end
          object Label24: TLabel
            Left = 296
            Top = 8
            Width = 74
            Height = 16
            Caption = 'Vencimento:'
          end
          object DBText14: TDBText
            Left = 370
            Top = 8
            Width = 73
            Height = 17
            DataField = 'DataVencimento'
            DataSource = srcSemValor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label31: TLabel
            Left = 568
            Top = 8
            Width = 33
            Height = 16
            Caption = 'Meio:'
          end
          object DBText19: TDBText
            Left = 608
            Top = 8
            Width = 121
            Height = 17
            DataField = 'MeioDePagamento'
            DataSource = srcSemValor
          end
          object edtValor: TDBEdit
            Left = 475
            Top = 3
            Width = 86
            Height = 24
            DataField = 'Valor'
            DataSource = srcSemValor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      object tabConcluir: TTabSheet
        Caption = 'tabConcluir'
        ImageIndex = 5
        object Panel12: TPanel
          Left = 0
          Top = 0
          Width = 753
          Height = 57
          Align = alTop
          Color = clWhite
          TabOrder = 0
          object Label25: TLabel
            Left = 200
            Top = 8
            Width = 390
            Height = 32
            Alignment = taCenter
            Caption = 
              'Clique em "Concluir" para terminar de fechar a comanda ou pressi' +
              'one <ESC> para cancelar fechamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object Label26: TLabel
            Left = 17
            Top = 42
            Width = 3
            Height = 16
          end
          object Label27: TLabel
            Left = 0
            Top = 8
            Width = 62
            Height = 16
            Caption = 'Comanda:'
            Transparent = True
          end
          object DBText15: TDBText
            Left = 64
            Top = 8
            Width = 41
            Height = 17
            Alignment = taRightJustify
            DataField = 'IDComanda'
            DataSource = srcComandas
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label28: TLabel
            Left = 108
            Top = 7
            Width = 5
            Height = 18
            Caption = '-'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBText16: TDBText
            Left = 117
            Top = 8
            Width = 76
            Height = 17
            DataField = 'DataAbertura'
            DataSource = srcComandas
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label29: TLabel
            Left = 16
            Top = 38
            Width = 44
            Height = 16
            Caption = 'Cliente:'
          end
          object DBText17: TDBText
            Left = 117
            Top = 37
            Width = 268
            Height = 17
            DataField = 'NomeCliente'
            DataSource = srcComandas
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label30: TLabel
            Left = 108
            Top = 37
            Width = 5
            Height = 18
            Caption = '-'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object DBText18: TDBText
            Left = 64
            Top = 38
            Width = 41
            Height = 17
            Alignment = taRightJustify
            DataField = 'IDCliente'
            DataSource = srcComandas
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object BitBtn4: TBitBtn
            Left = 600
            Top = 8
            Width = 145
            Height = 41
            Hint = 'Clique nesse bot'#227'o para escolher a forma de pagamento e pagar'
            Caption = 'Concluir'
            Default = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            TabStop = False
            OnClick = BitBtn4Click
            Glyph.Data = {
              76020000424D7602000000000000760000002800000020000000200000000100
              0400000000000002000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF00000FFFFFFFFFFFFFFFFFFFF
              FFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFFF
              FFFFFFF00000000FFFFF7700000000000000000000000000FFFF777000000000
              00000000000000000FFF777700000000000000000000000000FF777770000000
              0000000000000000000F77777700000000000000000000000000777778888888
              888888888888888888887777888888888888888888888888888F777888888888
              888888888888888888FF77888888888888888888888888888FFF788888888888
              8888888888888888FFFFFFFFFFFFFFFFFFFFFFF88888888FFFFFFFFFFFFFFFFF
              FFFFFFF8888888FFFFFFFFFFFFFFFFFFFFFFFFF888888FFFFFFFFFFFFFFFFFFF
              FFFFFFF88888FFFFFFFFFFFFFFFFFFFFFFFFFFF8888FFFFFFFFFFFFFFFFFFFFF
              FFFFFFF888FFFFFFFFFFFFFFFFFFFFFFFFFFFFF88FFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          end
        end
        object panelParcelas: TPanel
          Left = 0
          Top = 195
          Width = 753
          Height = 159
          Align = alClient
          Color = clWhite
          TabOrder = 1
          object gradeParcelas: TDBGrid
            Left = 1
            Top = 1
            Width = 751
            Height = 157
            Align = alClient
            DataSource = srcParcelas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'IDParcela'
                Width = 155
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DataVencimento'
                Width = 206
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Valor'
                Width = 169
                Visible = True
              end>
          end
        end
        object panelParcela: TPanel
          Left = 0
          Top = 57
          Width = 753
          Height = 138
          Align = alTop
          Color = clWhite
          TabOrder = 2
          object Bevel2: TBevel
            Left = 8
            Top = 16
            Width = 345
            Height = 97
          end
          object Bevel1: TBevel
            Left = 360
            Top = 16
            Width = 385
            Height = 97
          end
          object DBText21: TDBText
            Left = 120
            Top = 32
            Width = 97
            Height = 25
            AutoSize = True
            DataField = 'DataVencimento'
            DataSource = srcParcelas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -20
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label1: TLabel
            Left = 21
            Top = 32
            Width = 93
            Height = 20
            Alignment = taRightJustify
            Caption = 'Vencimento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label2: TLabel
            Left = 70
            Top = 80
            Width = 44
            Height = 20
            Alignment = taRightJustify
            Caption = 'Valor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object DBText22: TDBText
            Left = 120
            Top = 80
            Width = 97
            Height = 25
            AutoSize = True
            DataField = 'Valor'
            DataSource = srcParcelas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -20
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label33: TLabel
            Left = 366
            Top = 32
            Width = 108
            Height = 20
            Alignment = taRightJustify
            Caption = 'Valor cobrado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label34: TLabel
            Left = 426
            Top = 80
            Width = 48
            Height = 20
            Alignment = taRightJustify
            Caption = 'Troco:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -17
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lbTroco: TLabel
            Left = 480
            Top = 80
            Width = 31
            Height = 25
            Caption = '0,0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -20
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtValorCobrado: TFloatSpinEdit
            Left = 480
            Top = 32
            Width = 241
            Height = 36
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Increment = 1
            ParentFont = False
            TabOrder = 0
            Value = 0.1
            OnChange = edtValorCobradoChange
          end
        end
      end
    end
  end
  object srcComandas: TDataSource
    DataSet = dtsComandas
    Left = 496
  end
  object dtsComandas: TZMySqlQuery
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
      'select * from comandas '
      'where IDLoja=1')
    RequestLive = True
    Left = 528
    object dtsComandasDataAbertura: TDateField
      FieldName = 'DataAbertura'
      Required = True
    end
    object dtsComandasHoraAbertura: TTimeField
      FieldName = 'HoraAbertura'
      Required = True
    end
    object dtsComandasIDComanda: TIntegerField
      FieldName = 'IDComanda'
    end
    object dtsComandasIDCliente: TIntegerField
      FieldName = 'IDCliente'
    end
    object dtsComandasNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Required = True
      Size = 50
    end
    object dtsComandasIDLoja: TIntegerField
      FieldName = 'IDLoja'
      Required = True
    end
    object dtsComandasIDCracha: TIntegerField
      FieldName = 'IDCracha'
      Required = True
    end
    object dtsComandasE_Cliente: TIntegerField
      FieldName = 'E_Cliente'
    end
    object dtsComandasIDProfissional: TIntegerField
      FieldName = 'IDProfissional'
    end
  end
  object dtsConsumo: TZMySqlQuery
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    ExtraOptions = [moStoreResult]
    Macros = <>
    DataSource = srcComandas
    Sql.Strings = (
      'select'
      'servicosComandas.IDComanda as IDComanda,'
      'servicosComandas.DataComanda as DataComanda,'
      'servicosComandas.IDServico as ID1,'
      'servicosComandas.IDServicoComanda as ID3,'
      'servicos.Descricao as Descricao,'
      'servicos.IDServico as ID2,'
      'servicosComandas.ValorCobrado as Preco,'
      'servicosComandas.IDProfissional as IDProfissional,'
      '1 as qtd,'
      '0 as e_produto'
      'from servicosComandas, servicos where'
      'DataComanda=:DataAbertura'
      'and IDComanda=:IDComanda'
      'and servicosComandas.IDServico=servicos.IDServico'
      'union'
      'select produtosComandas.IDComanda as IDComanda,'
      'produtosComandas.DataComanda as DataComanda,'
      'produtosComandas.IDProduto as ID1,'
      '0 as ID3,'
      'produtos.Descricao as Descricao,'
      'produtos.IDProduto as ID2,'
      'produtosComandas.Preco as Preco,'
      'produtosComandas.IDProfissional as IDProfissional,'
      'produtosComandas.Qtd as qtd,'
      '1 as e_produto'
      'from produtosComandas, produtos where'
      'DataComanda=:DataAbertura'
      'and IDComanda=:IDComanda'
      'and produtosComandas.IDProduto=produtos.IDProduto')
    RequestLive = True
    Left = 448
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataAbertura'
        ParamType = ptUnknown
        Value = 37484d
      end
      item
        DataType = ftInteger
        Name = 'IDComanda'
        ParamType = ptUnknown
        Value = 1
      end>
    object dtsConsumoDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 56
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
    object dtsConsumoqtd: TLargeintField
      DisplayLabel = 'Qtd'
      DisplayWidth = 7
      FieldName = 'qtd'
    end
    object dtsConsumoPreco: TFloatField
      DisplayLabel = 'SubTotal'
      DisplayWidth = 11
      FieldName = 'Preco'
      Required = True
      currency = True
    end
    object dtsConsumoIDComanda: TIntegerField
      FieldName = 'IDComanda'
      Required = True
    end
    object dtsConsumoDataComanda: TDateField
      FieldName = 'DataComanda'
      Required = True
    end
    object dtsConsumoID1: TIntegerField
      FieldName = 'ID1'
      Required = True
    end
    object dtsConsumoID2: TIntegerField
      FieldName = 'ID2'
    end
    object dtsConsumoe_produto: TLargeintField
      FieldName = 'e_produto'
    end
    object dtsConsumoID3: TIntegerField
      FieldName = 'ID3'
    end
    object dtsConsumoIDProfissional: TIntegerField
      DisplayLabel = 'Prof.'
      FieldName = 'IDProfissional'
      Required = True
    end
  end
  object srcConsumo: TDataSource
    DataSet = dtsConsumo
    Left = 416
  end
  object srcTotal: TDataSource
    DataSet = dtsTotal
    Left = 416
    Top = 32
  end
  object dtsTotal: TZMySqlQuery
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    ExtraOptions = [moStoreResult]
    Macros = <>
    DataSource = srcComandas
    Sql.Strings = (
      'select'
      '(sum(servicosComandas.ValorCobrado)) as valor'
      'from servicosComandas, servicos'
      'where'
      '(servicosComandas.DataComanda=:DataAbertura'
      'and  servicosComandas.IDComanda=:IDComanda'
      'and servicosComandas.IDServico=servicos.IDServico)')
    RequestLive = False
    Left = 448
    Top = 32
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataAbertura'
        ParamType = ptUnknown
        Value = 37475d
      end
      item
        DataType = ftInteger
        Name = 'IDComanda'
        ParamType = ptUnknown
        Value = 1
      end>
    object dtsTotalvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      currency = True
    end
  end
  object srcFormasPagamento: TDataSource
    DataSet = dtsFormasPagamento
    Left = 568
  end
  object dtsFormasPagamento: TZMySqlQuery
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
      'select * from formasPagamento')
    RequestLive = False
    Left = 600
    object dtsFormasPagamentoIDFormaPagamento: TIntegerField
      FieldName = 'IDFormaPagamento'
    end
    object dtsFormasPagamentoDescricao: TStringField
      DisplayLabel = 'Forma de pagamento:'
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
  end
  object dtsPrestacoes: TZMySqlQuery
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    ExtraOptions = [moStoreResult]
    Macros = <>
    DataSource = srcFormasPagamento
    Sql.Strings = (
      'select prestacoes.*, relFormasPagamentoPrestacoes.*, '
      'meiopagamento.Descricao as MeioDePagamento '
      'from prestacoes, relFormasPagamentoPrestacoes, meiopagamento '
      'where'
      
        '(relFormasPagamentoPrestacoes.IDPrestacao=prestacoes.IDPrestacao' +
        ')'
      'and '
      
        '(relFormasPagamentoPrestacoes.IDFormaPagamento=:IDFormaPagamento' +
        ')'
      'and (prestacoes.IDMeioPagamento=meiopagamento.IDMeioPagamento)')
    RequestLive = False
    Left = 600
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDFormaPagamento'
        ParamType = ptUnknown
        Value = 1
      end>
    object dtsPrestacoesIDPrestacao: TIntegerField
      DisplayLabel = 'Presta'#231#245'es:'
      FieldName = 'IDPrestacao'
    end
    object dtsPrestacoesDescricao: TStringField
      DisplayLabel = 'Parcelas:'
      DisplayWidth = 30
      FieldName = 'Descricao'
      Size = 50
    end
    object dtsPrestacoesPorcentagemDoValor: TFloatField
      FieldName = 'PorcentagemDoValor'
    end
    object dtsPrestacoesDiasAposNegocio: TIntegerField
      FieldName = 'DiasAposNegocio'
      Required = True
    end
    object dtsPrestacoesIDMeioPagamento: TIntegerField
      FieldName = 'IDMeioPagamento'
    end
    object dtsPrestacoesIDFormaPagamento: TIntegerField
      FieldName = 'IDFormaPagamento'
      Required = True
    end
    object dtsPrestacoesIDPrestacao_1: TIntegerField
      FieldName = 'IDPrestacao_1'
      Required = True
    end
    object dtsPrestacoesMeioDePagamento: TStringField
      DisplayLabel = 'Meio de pagamento'
      FieldName = 'MeioDePagamento'
      Size = 50
    end
  end
  object srcPrestacoes: TDataSource
    DataSet = dtsPrestacoes
    Left = 568
    Top = 32
  end
  object dtsSemData: TZMySqlQuery
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    ExtraOptions = [moStoreResult]
    Macros = <>
    DataSource = srcComandas
    Sql.Strings = (
      
        'select parcelasComandas.* , meiopagamento.Descricao as MeioDePag' +
        'amento '
      'from parcelasComandas, meiopagamento'
      'where '
      '(DataComanda=:DataAbertura)'
      'and (IDComanda=:IDComanda)'
      'and (SemData=1)'
      
        'and (meiopagamento.IDMeioPagamento=parcelasComandas.IDMeioPagame' +
        'nto)')
    RequestLive = True
    Left = 680
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataAbertura'
        ParamType = ptUnknown
        Value = 37475d
      end
      item
        DataType = ftInteger
        Name = 'IDComanda'
        ParamType = ptUnknown
        Value = 1
      end>
    object dtsSemDataDataComanda: TDateField
      FieldName = 'DataComanda'
      Required = True
    end
    object dtsSemDataIDComanda: TIntegerField
      FieldName = 'IDComanda'
      Required = True
    end
    object dtsSemDataIDParcela: TIntegerField
      FieldName = 'IDParcela'
    end
    object dtsSemDataDataVencimento: TDateField
      FieldName = 'DataVencimento'
      Required = True
    end
    object dtsSemDataValor: TFloatField
      FieldName = 'Valor'
      Required = True
      currency = True
    end
    object dtsSemDataSemData: TIntegerField
      FieldName = 'SemData'
    end
    object dtsSemDataSemValor: TIntegerField
      FieldName = 'SemValor'
    end
    object dtsSemDataIDMeioPagamento: TIntegerField
      FieldName = 'IDMeioPagamento'
    end
    object dtsSemDataMeioDePagamento: TStringField
      FieldName = 'MeioDePagamento'
      Size = 50
    end
  end
  object srcSemData: TDataSource
    DataSet = dtsSemData
    Left = 648
  end
  object dtsSemValor: TZMySqlQuery
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    ExtraOptions = [moStoreResult]
    Macros = <>
    DataSource = srcComandas
    Sql.Strings = (
      
        'select parcelasComandas.* , meiopagamento.Descricao as MeioDePag' +
        'amento '
      'from parcelasComandas, meiopagamento'
      'where '
      '(DataComanda=:DataAbertura)'
      'and (IDComanda=:IDComanda)'
      'and (SemValor=1)'
      
        'and (meiopagamento.IDMeioPagamento=parcelasComandas.IDMeioPagame' +
        'nto)')
    RequestLive = True
    Left = 680
    Top = 32
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataAbertura'
        ParamType = ptUnknown
        Value = 37475d
      end
      item
        DataType = ftInteger
        Name = 'IDComanda'
        ParamType = ptUnknown
        Value = 1
      end>
    object dtsSemValorDataComanda: TDateField
      FieldName = 'DataComanda'
      Required = True
    end
    object dtsSemValorIDComanda: TIntegerField
      FieldName = 'IDComanda'
      Required = True
    end
    object dtsSemValorIDParcela: TIntegerField
      FieldName = 'IDParcela'
    end
    object dtsSemValorDataVencimento: TDateField
      FieldName = 'DataVencimento'
    end
    object dtsSemValorValor: TFloatField
      FieldName = 'Valor'
      currency = True
    end
    object dtsSemValorSemData: TIntegerField
      FieldName = 'SemData'
    end
    object dtsSemValorSemValor: TIntegerField
      FieldName = 'SemValor'
    end
    object dtsSemValorIDMeioPagamento: TIntegerField
      FieldName = 'IDMeioPagamento'
    end
    object dtsSemValorMeioDePagamento: TStringField
      FieldName = 'MeioDePagamento'
      Size = 50
    end
  end
  object srcSemValor: TDataSource
    DataSet = dtsSemValor
    Left = 648
    Top = 32
  end
  object srcParcelas: TDataSource
    DataSet = dtsParcelas
    Left = 728
  end
  object dtsParcelas: TZMySqlQuery
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    AfterOpen = dtsParcelasAfterOpen
    ExtraOptions = [moStoreResult]
    Macros = <>
    DataSource = srcComandas
    Sql.Strings = (
      
        'select parcelasComandas.* , meiopagamento.Descricao as MeioDePag' +
        'amento '
      'from parcelasComandas, meiopagamento'
      'where '
      '(DataComanda=:DataAbertura)'
      'and (IDComanda=:IDComanda)'
      
        'and (meiopagamento.IDMeioPagamento=parcelasComandas.IDMeioPagame' +
        'nto)')
    RequestLive = False
    Left = 760
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataAbertura'
        ParamType = ptUnknown
        Value = 37475d
      end
      item
        DataType = ftInteger
        Name = 'IDComanda'
        ParamType = ptUnknown
        Value = 1
      end>
    object DateField1: TDateField
      FieldName = 'DataComanda'
      Required = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'IDComanda'
      Required = True
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'IDParcela'
    end
    object DateField2: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'DataVencimento'
    end
    object FloatField1: TFloatField
      FieldName = 'Valor'
      currency = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'SemData'
    end
    object IntegerField4: TIntegerField
      FieldName = 'SemValor'
    end
  end
end
