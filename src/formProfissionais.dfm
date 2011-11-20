inherited frmProfissionais: TfrmProfissionais
  Left = 189
  Top = 108
  Width = 799
  Height = 480
  Caption = 'Cadastro de Profissionais'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  inherited Spliter: TSplitter
    Height = 413
  end
  inherited ToolBar1: TToolBar
    Width = 791
  end
  inherited Panel1: TPanel
    Height = 413
    inherited Label1: TLabel
      Caption = 'Cadastro de Profissionais'
    end
    inherited DBCtrlGrid: TDBCtrlGrid
      Height = 395
      PanelHeight = 65
      RowCount = 6
      object Label43: TLabel
        Left = 8
        Top = 8
        Width = 16
        Height = 16
        Caption = 'ID:'
        Transparent = True
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
        Transparent = True
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
      object Label44: TLabel
        Left = 8
        Top = 24
        Width = 40
        Height = 16
        Caption = 'Nome:'
      end
    end
  end
  inherited pgctl: TPageControl
    Width = 603
    Height = 413
    inherited tabCategory: TTabSheet
      Caption = 'Cargos'
      inherited DBGrid1: TDBGrid
        Width = 600
        Height = 433
        Columns = <
          item
            Expanded = False
            FieldName = 'IDCargo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Visible = True
          end>
      end
      inherited DBNavigator2: TDBNavigator
        Width = 600
        Hints.Strings = ()
      end
    end
    inherited tabList: TTabSheet
      inherited DBGridList: TDBGrid
        Width = 600
        Height = 458
        Columns = <
          item
            Expanded = False
            FieldName = 'IDCargo'
            ReadOnly = True
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
            FieldName = 'Auxiliar'
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
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 595
        Height = 382
        VertScrollBar.Position = 277
        Align = alClient
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 8
          Top = -269
          Width = 545
          Height = 169
          Caption = 'Dados pessoais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label15: TLabel
            Left = 6
            Top = 18
            Width = 37
            Height = 16
            Caption = 'Nome'
            FocusControl = edtNome
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 300
            Top = 18
            Width = 72
            Height = 16
            Caption = 'Nascimento'
            FocusControl = DBEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 422
            Top = 18
            Width = 73
            Height = 16
            Caption = 'Contrata'#231#227'o'
            FocusControl = DBEdit3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label40: TLabel
            Left = 8
            Top = 68
            Width = 20
            Height = 16
            Caption = 'RG'
            FocusControl = DBEdit4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label36: TLabel
            Left = 191
            Top = 69
            Width = 26
            Height = 16
            Caption = 'CPF'
            FocusControl = DBEdit5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 370
            Top = 71
            Width = 111
            Height = 16
            Caption = 'Senha de sistema:'
            FocusControl = DBEdit7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label65: TLabel
            Left = 9
            Top = 121
            Width = 89
            Height = 16
            Caption = 'Nacionalidade'
            FocusControl = DBEdit26
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label66: TLabel
            Left = 290
            Top = 122
            Width = 78
            Height = 16
            Caption = 'Naturalidade'
            FocusControl = DBEdit27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edtNome: TDBEdit
            Left = 6
            Top = 36
            Width = 288
            Height = 24
            DataField = 'Nome'
            DataSource = srcSelf
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 300
            Top = 36
            Width = 117
            Height = 24
            DataField = 'DataNascimento'
            DataSource = srcSelf
            MaxLength = 10
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 422
            Top = 36
            Width = 115
            Height = 24
            DataField = 'DataContratacao'
            DataSource = srcSelf
            MaxLength = 10
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 7
            Top = 86
            Width = 178
            Height = 24
            DataField = 'RG'
            DataSource = srcSelf
            TabOrder = 3
          end
          object DBEdit5: TDBEdit
            Left = 190
            Top = 87
            Width = 171
            Height = 24
            DataField = 'CPF'
            DataSource = srcSelf
            TabOrder = 4
          end
          object DBEdit7: TDBEdit
            Left = 368
            Top = 88
            Width = 169
            Height = 24
            DataField = 'Senha'
            DataSource = srcSelf
            PasswordChar = '*'
            TabOrder = 5
          end
          object DBEdit26: TDBEdit
            Left = 9
            Top = 137
            Width = 272
            Height = 24
            DataField = 'Nacionalidade'
            DataSource = srcSelf
            TabOrder = 6
          end
          object DBEdit27: TDBEdit
            Left = 291
            Top = 138
            Width = 246
            Height = 24
            DataField = 'Naturalidade'
            DataSource = srcSelf
            TabOrder = 7
          end
        end
        object GroupBox2: TGroupBox
          Left = 8
          Top = -93
          Width = 289
          Height = 240
          Caption = 'Dados profissionais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Label39: TLabel
            Left = 6
            Top = 24
            Width = 37
            Height = 16
            Caption = 'Cargo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText4: TDBText
            Left = 12
            Top = 95
            Width = 65
            Height = 17
            DataField = 'IDProfissional'
            DataSource = srcSelf
          end
          object Label38: TLabel
            Left = 11
            Top = 74
            Width = 83
            Height = 16
            Caption = 'IDProfissional'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label55: TLabel
            Left = 8
            Top = 175
            Width = 79
            Height = 16
            Caption = 'Dia do Pagto'
            FocusControl = DBEdit17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label56: TLabel
            Left = 142
            Top = 176
            Width = 91
            Height = 16
            Caption = 'Tipo Dia Pagto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Label60: TLabel
            Left = 9
            Top = 122
            Width = 71
            Height = 16
            Caption = 'Sal'#225'rio Fixo'
            FocusControl = DBEdit22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object cboCargo: TDBLookupComboBox
            Left = 7
            Top = 42
            Width = 130
            Height = 24
            DataField = 'IDCargoProfissional'
            DataSource = srcSelf
            KeyField = 'IDCargo'
            ListField = 'Descricao'
            ListSource = srcCategory
            TabOrder = 0
          end
          object DBchkAuxiliar: TDBCheckBox
            Left = 145
            Top = 36
            Width = 97
            Height = 17
            Caption = 'Auxiliar'
            DataField = 'Auxiliar'
            DataSource = srcSelf
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnClick = DBchkAuxiliarClick
          end
          object DBCheckBox12: TDBCheckBox
            Left = 145
            Top = 119
            Width = 128
            Height = 17
            Caption = 'Presta Servi'#231'o'
            DataField = 'PodePrestarServico'
            DataSource = srcSelf
            TabOrder = 5
            ValueChecked = '1'
            ValueUnchecked = '0'
            Visible = False
          end
          object DBCheckBox14: TDBCheckBox
            Left = 145
            Top = 145
            Width = 112
            Height = 17
            Caption = 'Em Puni'#231#227'o'
            DataField = 'EmPunicaoAtualmente'
            DataSource = srcSelf
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox11: TDBCheckBox
            Left = 145
            Top = 95
            Width = 128
            Height = 17
            Caption = 'Vende Produto'
            DataField = 'PodeVenderProduto'
            DataSource = srcSelf
            TabOrder = 4
            ValueChecked = '1'
            ValueUnchecked = '0'
            Visible = False
          end
          object DBCheckBox5: TDBCheckBox
            Left = 146
            Top = 68
            Width = 97
            Height = 17
            Caption = 'Contratado'
            DataField = 'ContratadoAtualmente'
            DataSource = srcSelf
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBEdit17: TDBEdit
            Left = 8
            Top = 193
            Width = 129
            Height = 24
            DataField = 'DiaPagamento'
            DataSource = srcSelf
            TabOrder = 7
          end
          object DBComboBox1: TDBComboBox
            Left = 144
            Top = 193
            Width = 137
            Height = 24
            DataField = 'TipoDiaPagamento'
            DataSource = srcSelf
            ItemHeight = 16
            Items.Strings = (
              'U - '#218'til'
              'M - M'#234's')
            TabOrder = 8
            Visible = False
          end
          object DBEdit22: TDBEdit
            Left = 9
            Top = 138
            Width = 128
            Height = 24
            DataField = 'SalarioFixo'
            DataSource = srcSelf
            MaxLength = 10
            TabOrder = 1
          end
        end
        object GroupBox3: TGroupBox
          Left = 300
          Top = -23
          Width = 257
          Height = 170
          Caption = 'Fam'#237'lia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          object Label61: TLabel
            Left = 9
            Top = 22
            Width = 79
            Height = 16
            Caption = 'Nome do Pai'
            FocusControl = DBEdit23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label63: TLabel
            Left = 9
            Top = 69
            Width = 71
            Height = 16
            Caption = 'Estado Civil'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label64: TLabel
            Left = 162
            Top = 71
            Width = 36
            Height = 16
            Caption = 'Filhos'
            FocusControl = DBEdit25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label62: TLabel
            Left = 11
            Top = 118
            Width = 86
            Height = 16
            Caption = 'Nome da M'#227'e'
            FocusControl = DBEdit24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit23: TDBEdit
            Left = 9
            Top = 40
            Width = 233
            Height = 24
            DataField = 'NomePai'
            DataSource = srcSelf
            TabOrder = 0
          end
          object DBComboBox4: TDBComboBox
            Left = 10
            Top = 84
            Width = 145
            Height = 24
            DataField = 'EstadoCivil'
            DataSource = srcSelf
            ItemHeight = 16
            Items.Strings = (
              'Solteiro(a)'
              'Casado(a)'
              'Separado(a)'
              'Divorciado(a)'
              'Disquitado(a)'
              'Vi'#250'vo(a)')
            TabOrder = 1
          end
          object DBEdit25: TDBEdit
            Left = 162
            Top = 86
            Width = 79
            Height = 24
            DataField = 'NFilhos'
            DataSource = srcSelf
            TabOrder = 2
          end
          object DBEdit24: TDBEdit
            Left = 11
            Top = 136
            Width = 230
            Height = 24
            DataField = 'NomeMae'
            DataSource = srcSelf
            TabOrder = 3
          end
        end
        object GroupBox4: TGroupBox
          Left = 8
          Top = 148
          Width = 549
          Height = 257
          Caption = 'Contato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          object Label41: TLabel
            Left = 6
            Top = 19
            Width = 59
            Height = 16
            Caption = 'Endere'#231'o'
            FocusControl = DBEdit6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label45: TLabel
            Left = 7
            Top = 65
            Width = 44
            Height = 16
            Caption = 'Cidade'
            FocusControl = DBEdit8
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 228
            Top = 64
            Width = 43
            Height = 16
            Caption = 'Estado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 287
            Top = 64
            Width = 27
            Height = 16
            Caption = 'CEP'
            FocusControl = DBEdit9
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 403
            Top = 66
            Width = 27
            Height = 16
            Caption = 'Pa'#237's'
            FocusControl = DBEdit10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel
            Left = 6
            Top = 110
            Width = 61
            Height = 16
            Caption = 'Telefone1'
            FocusControl = DBEdit12
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 286
            Top = 110
            Width = 61
            Height = 16
            Caption = 'Telefone2'
            FocusControl = DBEdit11
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label51: TLabel
            Left = 6
            Top = 157
            Width = 22
            Height = 16
            Caption = 'Fax'
            FocusControl = DBEdit13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label52: TLabel
            Left = 286
            Top = 157
            Width = 34
            Height = 16
            Caption = 'Email'
            FocusControl = DBEdit14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label53: TLabel
            Left = 286
            Top = 204
            Width = 37
            Height = 16
            Caption = 'Pager'
            FocusControl = DBEdit15
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label54: TLabel
            Left = 6
            Top = 205
            Width = 42
            Height = 16
            Caption = 'Celular'
            FocusControl = DBEdit16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit6: TDBEdit
            Left = 6
            Top = 37
            Width = 539
            Height = 24
            DataField = 'Endereco'
            DataSource = srcSelf
            TabOrder = 0
          end
          object DBEdit8: TDBEdit
            Left = 8
            Top = 83
            Width = 217
            Height = 24
            DataField = 'Cidade'
            DataSource = srcSelf
            TabOrder = 1
          end
          object DBComboBox3: TDBComboBox
            Left = 228
            Top = 82
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
            TabOrder = 2
          end
          object DBEdit9: TDBEdit
            Left = 287
            Top = 82
            Width = 106
            Height = 24
            DataField = 'CEP'
            DataSource = srcSelf
            TabOrder = 3
          end
          object DBEdit10: TDBEdit
            Left = 402
            Top = 82
            Width = 143
            Height = 24
            DataField = 'Pais'
            DataSource = srcSelf
            TabOrder = 4
          end
          object DBEdit12: TDBEdit
            Left = 7
            Top = 128
            Width = 274
            Height = 24
            DataField = 'Telefone1'
            DataSource = srcSelf
            TabOrder = 5
          end
          object DBEdit11: TDBEdit
            Left = 286
            Top = 128
            Width = 259
            Height = 24
            DataField = 'Telefone2'
            DataSource = srcSelf
            TabOrder = 6
          end
          object DBEdit13: TDBEdit
            Left = 7
            Top = 175
            Width = 274
            Height = 24
            DataField = 'Fax'
            DataSource = srcSelf
            TabOrder = 7
          end
          object DBEdit14: TDBEdit
            Left = 286
            Top = 175
            Width = 259
            Height = 24
            DataField = 'Email'
            DataSource = srcSelf
            TabOrder = 8
          end
          object DBEdit15: TDBEdit
            Left = 286
            Top = 222
            Width = 259
            Height = 24
            DataField = 'Pager'
            DataSource = srcSelf
            TabOrder = 10
          end
          object DBEdit16: TDBEdit
            Left = 7
            Top = 223
            Width = 274
            Height = 24
            DataField = 'Celular'
            DataSource = srcSelf
            TabOrder = 9
          end
        end
        object GroupBox5: TGroupBox
          Left = 300
          Top = -93
          Width = 257
          Height = 70
          Caption = 'Conta banc'#225'ria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object Label57: TLabel
            Left = 6
            Top = 20
            Width = 39
            Height = 16
            Caption = 'Banco'
            FocusControl = DBEdit19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label59: TLabel
            Left = 159
            Top = 21
            Width = 89
            Height = 16
            Caption = 'Conta Corrente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label58: TLabel
            Left = 85
            Top = 20
            Width = 50
            Height = 16
            Caption = 'Ag'#234'ncia'
            FocusControl = DBEdit20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit19: TDBEdit
            Left = 6
            Top = 38
            Width = 75
            Height = 24
            DataField = 'Banco'
            DataSource = srcSelf
            TabOrder = 0
          end
          object DBEdit21: TDBEdit
            Left = 160
            Top = 38
            Width = 81
            Height = 24
            DataField = 'Conta'
            DataSource = srcSelf
            TabOrder = 2
          end
          object DBEdit20: TDBEdit
            Left = 85
            Top = 38
            Width = 68
            Height = 24
            DataField = 'Agencia'
            DataSource = srcSelf
            TabOrder = 1
          end
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Habilidades'
      ImageIndex = 3
      TabVisible = False
      object TWDBRel1: TTWDBRel
        Left = 0
        Top = 0
        Width = 600
        Height = 479
        Align = alClient
        TabOrder = 0
        tablename1 = 'servicos'
        MasterFields.Strings = (
          'IDProfissional')
        tablenameRel = 'relservicosprofissionais'
        RelFields.Strings = (
          'IDServico')
        ShowFields1.Strings = (
          'Descricao'
          'ValorMin'
          'ValorMax')
        ShowFields2.Strings = (
          'Descricao'
          'ValorMin'
          'ValorMax')
        ZMysqlDatabase = DMMain.Database
        Active = False
        label1 = ' Servi'#231'os que o profissional '#233' capaz de prestar:'
        label2 = ' Servi'#231'os que o profissional N'#195'O '#233' capaz de prestar:'
        MasterSource = srcSelf
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Servi'#231'os prestados'
      ImageIndex = 4
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 595
        Height = 382
        Align = alClient
        DataSource = srcServicosPrestados
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DataComanda'
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDComanda'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDServico'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValorCobrado'
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Turnos efetuados'
      ImageIndex = 5
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 595
        Height = 382
        Align = alClient
        DataSource = srcTurnosEfetuados
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DataChegada'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HoraChegada'
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DataSaida'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HoraSaida'
            Width = 94
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Lojas'
      ImageIndex = 6
      TabVisible = False
      object TWDBRel4: TTWDBRel
        Left = 0
        Top = 0
        Width = 600
        Height = 479
        Align = alClient
        TabOrder = 0
        tablename1 = 'lojas'
        MasterFields.Strings = (
          'IDProfissional')
        tablenameRel = 'relprofissionaislojas'
        RelFields.Strings = (
          'IDLoja')
        ShowFields1.Strings = (
          'Descricao'
          'Endereco'
          'Telefone1')
        ShowFields2.Strings = (
          'Descricao'
          'Endereco'
          'Telefone1')
        ZMysqlDatabase = DMMain.Database
        Active = False
        label1 = 'Lojas nas quais o profissional trabalha:'
        label2 = 'Lojas nas quais o profissional N'#195'O trabalha:'
        MasterSource = srcSelf
      end
    end
    object tabProfissionais: TTabSheet
      Caption = 'Profissionais'
      ImageIndex = 7
      object TWDBRel2: TTWDBRel
        Left = 0
        Top = 0
        Width = 595
        Height = 382
        Align = alClient
        TabOrder = 0
        tablename1 = 'profissionais'
        MasterFields.Strings = (
          'IDProfissional=IDAuxiliar')
        tablenameRel = 'relprofissionalauxiliar'
        RelFields.Strings = (
          'IDProfissional')
        ShowFields1.Strings = (
          'IDProfissional'
          'Nome')
        ShowFields2.Strings = (
          'IDProfissional'
          'Nome')
        OrderBy1.Strings = (
          'Nome')
        OrderBy2.Strings = (
          'Nome')
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
    object tabAuxiliar: TTabSheet
      Caption = 'Auxiliares'
      ImageIndex = 8
      object TWDBRel3: TTWDBRel
        Left = 0
        Top = 0
        Width = 595
        Height = 382
        Align = alClient
        TabOrder = 0
        tablename1 = 'profissionais'
        MasterFields.Strings = (
          'IDProfissional')
        tablenameRel = 'relprofissionalauxiliar'
        RelFields.Strings = (
          'IDProfissional=IDAuxiliar')
        ShowFields1.Strings = (
          'IDProfissional'
          'Nome')
        ShowFields2.Strings = (
          'IDProfissional'
          'Nome')
        OrderBy1.Strings = (
          'Nome')
        OrderBy2.Strings = (
          'Nome')
        Filter1.Strings = (
          'Auxiliar=1')
        Filter2.Strings = (
          'Auxiliar=1')
        ZMysqlDatabase = DMMain.Database
        Active = False
        label1 = ' Auxiliares que trabalham para esse profissional:'
        label2 = ' Auxiliares que N'#195'O trabalham para esse profissional:'
        MasterSource = srcSelf
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Desc. Produtos'
      ImageIndex = 9
      TabVisible = False
    end
    object TabSheet7: TTabSheet
      Caption = 'Desc. Servi'#231'os'
      ImageIndex = 10
      TabVisible = False
    end
  end
  inherited dtsSelf: TZMySqlTable
    IndexFieldNames = 'Nome'
    AfterInsert = dtsSelfAfterInsert
    AfterScroll = dtsSelfAfterScroll
    TableName = 'profissionais'
    Active = True
    object dtsSelfIDProfissional: TIntegerField
      FieldName = 'IDProfissional'
      ReadOnly = True
    end
    object dtsSelfIDCargoProfissional: TIntegerField
      FieldName = 'IDCargoProfissional'
      LookupDataSet = dtsCategory
      LookupKeyFields = 'Descricao'
      LookupResultField = 'IDCargo'
      KeyFields = 'IDCargoProfissional'
      Required = True
    end
    object dtsSelfNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object dtsSelfDataNascimento: TDateField
      FieldName = 'DataNascimento'
    end
    object dtsSelfEndereco: TStringField
      FieldName = 'Endereco'
      Size = 70
    end
    object dtsSelfCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object dtsSelfEstado: TStringField
      FieldName = 'Estado'
      Size = 2
    end
    object dtsSelfCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object dtsSelfTelefone1: TStringField
      FieldName = 'Telefone1'
      Size = 30
    end
    object dtsSelfTelefone2: TStringField
      FieldName = 'Telefone2'
      Size = 30
    end
    object dtsSelfFax: TStringField
      FieldName = 'Fax'
      Size = 30
    end
    object dtsSelfEmail: TStringField
      FieldName = 'Email'
      Size = 70
    end
    object dtsSelfCelular: TStringField
      FieldName = 'Celular'
      Size = 30
    end
    object dtsSelfPager: TStringField
      FieldName = 'Pager'
      Size = 30
    end
    object dtsSelfRG: TStringField
      FieldName = 'RG'
    end
    object dtsSelfCPF: TStringField
      FieldName = 'CPF'
    end
    object dtsSelfBanco: TStringField
      FieldName = 'Banco'
      Size = 50
    end
    object dtsSelfConta: TStringField
      FieldName = 'Conta'
      Size = 10
    end
    object dtsSelfAgencia: TStringField
      FieldName = 'Agencia'
      Size = 4
    end
    object dtsSelfNomePai: TStringField
      FieldName = 'NomePai'
      Size = 50
    end
    object dtsSelfNomeMae: TStringField
      FieldName = 'NomeMae'
      Size = 50
    end
    object dtsSelfEstadoCivil: TStringField
      FieldName = 'EstadoCivil'
      Size = 50
    end
    object dtsSelfNFilhos: TIntegerField
      FieldName = 'NFilhos'
    end
    object dtsSelfContratadoAtualmente: TIntegerField
      FieldName = 'ContratadoAtualmente'
    end
    object dtsSelfSalarioFixo: TFloatField
      FieldName = 'SalarioFixo'
    end
    object dtsSelfDataContratacao: TDateField
      FieldName = 'DataContratacao'
    end
    object dtsSelfPais: TStringField
      FieldName = 'Pais'
      Size = 50
    end
    object dtsSelfNacionalidade: TStringField
      FieldName = 'Nacionalidade'
      Size = 50
    end
    object dtsSelfNaturalidade: TStringField
      FieldName = 'Naturalidade'
      Size = 50
    end
    object dtsSelfDiaPagamento: TIntegerField
      FieldName = 'DiaPagamento'
    end
    object dtsSelfTipoDiaPagamento: TStringField
      FieldName = 'TipoDiaPagamento'
      Size = 1
    end
    object dtsSelfAuxiliar: TIntegerField
      FieldName = 'Auxiliar'
    end
    object dtsSelfSenha: TStringField
      FieldName = 'Senha'
      Size = 50
    end
    object dtsSelfEmPunicaoAtualmente: TIntegerField
      FieldName = 'EmPunicaoAtualmente'
    end
    object dtsSelfPorcSalarioPagaPeloSalao: TFloatField
      FieldName = 'PorcSalarioPagaPeloSalao'
    end
    object dtsSelfPodeVenderProduto: TIntegerField
      FieldName = 'PodeVenderProduto'
    end
    object dtsSelfPodePrestarServico: TIntegerField
      FieldName = 'PodePrestarServico'
    end
    object dtsSelfGrupoSistema: TIntegerField
      FieldName = 'GrupoSistema'
    end
  end
  inherited dtsCategory: TZMySqlTable
    TableName = 'cargos'
    object dtsCategoryIDCargo: TIntegerField
      FieldName = 'IDCargo'
      ReadOnly = True
    end
    object dtsCategoryDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
  end
  object srcServicosPrestados: TDataSource
    DataSet = dtsServicosPrestados
    Left = 64
    Top = 264
  end
  object dtsServicosPrestados: TZMySqlQuery
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
      'select * from servicosprestados '
      'where'
      '('
      '(IDProfissional=:IDProfissional)'
      ')'
      'order by DataComanda')
    RequestLive = False
    Left = 32
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDProfissional'
        ParamType = ptUnknown
        Value = 3
      end>
    object dtsServicosPrestadosDataComanda: TDateField
      DisplayWidth = 16
      FieldName = 'DataComanda'
      Required = True
    end
    object dtsServicosPrestadosIDComanda: TIntegerField
      DisplayWidth = 15
      FieldName = 'IDComanda'
      Required = True
    end
    object dtsServicosPrestadosIDServico: TIntegerField
      DisplayWidth = 12
      FieldName = 'IDServico'
      Required = True
    end
    object dtsServicosPrestadosValorCobrado: TFloatField
      DisplayWidth = 14
      FieldName = 'ValorCobrado'
      Required = True
    end
    object dtsServicosPrestadosIDProfissional: TIntegerField
      DisplayWidth = 12
      FieldName = 'IDProfissional'
      Required = True
    end
  end
  object dtsTurnosEfetuados: TZMySqlQuery
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
      'select * from turnosEfetuados '
      'where'
      '('
      '(IDProfissional=:IDProfissional)'
      ')'
      'order by DataChegada')
    RequestLive = False
    Left = 32
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDProfissional'
        ParamType = ptUnknown
        Value = 3
      end>
    object dtsTurnosEfetuadosIDProfissional: TIntegerField
      FieldName = 'IDProfissional'
      Required = True
    end
    object dtsTurnosEfetuadosDataChegada: TDateField
      FieldName = 'DataChegada'
      Required = True
    end
    object dtsTurnosEfetuadosHoraChegada: TTimeField
      FieldName = 'HoraChegada'
      Required = True
    end
    object dtsTurnosEfetuadosDataSaida: TDateField
      FieldName = 'DataSaida'
      Required = True
    end
    object dtsTurnosEfetuadosHoraSaida: TTimeField
      FieldName = 'HoraSaida'
      Required = True
    end
    object dtsTurnosEfetuadosIDLoja: TIntegerField
      FieldName = 'IDLoja'
      Required = True
    end
  end
  object srcTurnosEfetuados: TDataSource
    DataSet = dtsTurnosEfetuados
    Left = 64
    Top = 296
  end
end
