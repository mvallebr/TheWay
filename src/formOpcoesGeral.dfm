inherited frmOpcoesGeral: TfrmOpcoesGeral
  Left = 232
  Top = 208
  Width = 560
  Height = 351
  Caption = 'Op'#231#245'es gerais'
  OldCreateOrder = True
  WindowState = wsNormal
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 552
    Height = 272
    ActivePage = TabSheet6
    Align = alClient
    TabIndex = 5
    TabOrder = 0
    object tabLoja: TTabSheet
      Caption = 'Loja'
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 225
        Height = 16
        Caption = 'Em qual loja o sistema est'#225' rodando?'
        Transparent = True
      end
      object edtLoja: TSpinEdit
        Left = 256
        Top = 8
        Width = 121
        Height = 26
        Enabled = False
        MaxValue = 0
        MinValue = 0
        TabOrder = 0
        Value = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Auxiliares'
      ImageIndex = 1
      object chkAuxiliarPodeVenderProduto: TCheckBox
        Left = 8
        Top = 8
        Width = 385
        Height = 17
        Caption = 'Auxiliar pode vender produto'
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Estoque'
      ImageIndex = 2
      object chkPermiteVendaSemEstoque: TCheckBox
        Left = 8
        Top = 16
        Width = 401
        Height = 25
        Caption = 'Permitir venda de produtos que n'#227'o existem em estoque'
        TabOrder = 0
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Vendas'
      ImageIndex = 3
      object GroupBox1: TGroupBox
        Left = 8
        Top = 16
        Width = 401
        Height = 161
        Caption = 'Porcentagens (%) nas vendas para:'
        TabOrder = 0
        object Label2: TLabel
          Left = 53
          Top = 28
          Width = 80
          Height = 16
          Alignment = taRightJustify
          Caption = 'N'#227'o Clientes:'
          Transparent = True
        end
        object Label3: TLabel
          Left = 82
          Top = 60
          Width = 51
          Height = 16
          Alignment = taRightJustify
          Caption = 'Clientes:'
          Transparent = True
        end
        object Label4: TLabel
          Left = 53
          Top = 92
          Width = 80
          Height = 16
          Alignment = taRightJustify
          Caption = 'Profissionais:'
          Transparent = True
        end
        object Label5: TLabel
          Left = 29
          Top = 124
          Width = 104
          Height = 16
          Alignment = taRightJustify
          Caption = 'Uso em servi'#231'os:'
          Transparent = True
        end
        object edtPorcNClientes: TFloatSpinEdit
          Left = 136
          Top = 24
          Width = 257
          Height = 26
          Increment = 1
          TabOrder = 0
          Value = 170
        end
        object edtPorcClientes: TFloatSpinEdit
          Left = 136
          Top = 56
          Width = 257
          Height = 26
          Increment = 1
          TabOrder = 1
          Value = 150
        end
        object edtPorcProfissionais: TFloatSpinEdit
          Left = 136
          Top = 88
          Width = 257
          Height = 26
          Increment = 1
          TabOrder = 2
          Value = 120
        end
        object edtPorcUsoServico: TFloatSpinEdit
          Left = 136
          Top = 120
          Width = 257
          Height = 26
          Increment = 1
          TabOrder = 3
          Value = 50
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Servi'#231'os'
      ImageIndex = 4
      object Label6: TLabel
        Left = 7
        Top = 4
        Width = 384
        Height = 32
        Caption = 
          'Porcentagem (%) que o auxiliar ganha por ajudar em um servi'#231'o (e' +
          'm cima do pre'#231'o total do servi'#231'o):'
        Transparent = True
        WordWrap = True
      end
      object edtPorcentagemAuxiliar: TFloatSpinEdit
        Left = 8
        Top = 56
        Width = 257
        Height = 26
        Increment = 1
        MaxValue = 100
        TabOrder = 0
        Value = 5
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Sistema'
      ImageIndex = 5
      object Label7: TLabel
        Left = 16
        Top = 12
        Width = 211
        Height = 16
        Caption = 'Senha do administrador (usu'#225'rio 0):'
      end
      object edtSenhaAdmin: TEdit
        Left = 232
        Top = 8
        Width = 177
        Height = 24
        PasswordChar = '*'
        TabOrder = 0
        Text = '123'
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 64
        Width = 401
        Height = 177
        Caption = 'Rede'
        TabOrder = 1
        object Label8: TLabel
          Left = 16
          Top = 24
          Width = 133
          Height = 16
          Alignment = taRightJustify
          Caption = 'IP do servidor MySQL:'
        end
        object Label9: TLabel
          Left = 84
          Top = 56
          Width = 65
          Height = 16
          Alignment = taRightJustify
          Caption = 'Porta TCP:'
        end
        object Label10: TLabel
          Left = 29
          Top = 88
          Width = 120
          Height = 16
          Alignment = taRightJustify
          Caption = 'Nome da database:'
        end
        object Label11: TLabel
          Left = 117
          Top = 120
          Width = 32
          Height = 16
          Alignment = taRightJustify
          Caption = 'login:'
        end
        object Label12: TLabel
          Left = 107
          Top = 152
          Width = 42
          Height = 16
          Alignment = taRightJustify
          Caption = 'Senha:'
        end
        object edtDBServer: TEdit
          Left = 160
          Top = 16
          Width = 225
          Height = 24
          TabOrder = 0
          Text = 'localhost'
        end
        object edtPorta: TSpinEdit
          Left = 160
          Top = 48
          Width = 225
          Height = 26
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 3360
        end
        object edtDBName: TEdit
          Left = 160
          Top = 80
          Width = 225
          Height = 24
          TabOrder = 2
          Text = 'TheWay'
        end
        object edtdblogin: TEdit
          Left = 160
          Top = 112
          Width = 225
          Height = 24
          Enabled = False
          TabOrder = 3
          Text = 'dbadmin'
        end
        object edtDBPasswd: TEdit
          Left = 160
          Top = 144
          Width = 225
          Height = 24
          Enabled = False
          PasswordChar = '*'
          TabOrder = 4
          Text = 'dbtheway'
        end
      end
      object chkSubstExplorer: TCheckBox
        Left = 16
        Top = 40
        Width = 393
        Height = 17
        Caption = 'Substituir Windows Explorer pelo TheWay'
        TabOrder = 2
      end
    end
    object tabDescontos: TTabSheet
      Caption = 'Descontos'
      ImageIndex = 6
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 544
        Height = 241
        Align = alClient
        Caption = 
          'Desconto percentual (%) na venda de produtos para cada dia da se' +
          'mana:'
        TabOrder = 0
        object Label13: TLabel
          Left = 24
          Top = 40
          Width = 58
          Height = 16
          Alignment = taRightJustify
          Caption = 'Domingo:'
          Transparent = True
        end
        object Label14: TLabel
          Left = 24
          Top = 80
          Width = 58
          Height = 16
          Alignment = taRightJustify
          Caption = 'Segunda:'
          Transparent = True
        end
        object Label15: TLabel
          Left = 43
          Top = 120
          Width = 39
          Height = 16
          Alignment = taRightJustify
          Caption = 'Ter'#231'a:'
          Transparent = True
        end
        object Label16: TLabel
          Left = 39
          Top = 160
          Width = 43
          Height = 16
          Alignment = taRightJustify
          Caption = 'Quarta:'
          Transparent = True
        end
        object Label17: TLabel
          Left = 273
          Top = 40
          Width = 41
          Height = 16
          Alignment = taRightJustify
          Caption = 'Quinta:'
          Transparent = True
        end
        object Label18: TLabel
          Left = 277
          Top = 80
          Width = 37
          Height = 16
          Alignment = taRightJustify
          Caption = 'Sexta:'
          Transparent = True
        end
        object Label19: TLabel
          Left = 262
          Top = 120
          Width = 52
          Height = 16
          Alignment = taRightJustify
          Caption = 'S'#225'bado:'
          Transparent = True
        end
        object Label20: TLabel
          Left = 264
          Top = 152
          Width = 209
          Height = 65
          AutoSize = False
          Caption = 
            'Observa'#231#227'o: Estes descontos s'#227'o v'#225'lidos apenas para venda para c' +
            'lientes e n'#227'o clientes'
          Transparent = True
          WordWrap = True
        end
        object edtDomingo: TFloatSpinEdit
          Left = 88
          Top = 32
          Width = 153
          Height = 26
          Increment = 1
          MaxValue = 100
          TabOrder = 0
        end
        object edtSegunda: TFloatSpinEdit
          Left = 88
          Top = 72
          Width = 153
          Height = 26
          Increment = 1
          MaxValue = 100
          TabOrder = 1
        end
        object edtTerca: TFloatSpinEdit
          Left = 88
          Top = 112
          Width = 153
          Height = 26
          Increment = 1
          MaxValue = 100
          TabOrder = 2
        end
        object edtQuarta: TFloatSpinEdit
          Left = 88
          Top = 152
          Width = 153
          Height = 26
          Increment = 1
          MaxValue = 100
          TabOrder = 3
        end
        object edtQuinta: TFloatSpinEdit
          Left = 320
          Top = 32
          Width = 153
          Height = 26
          Increment = 1
          MaxValue = 100
          TabOrder = 4
        end
        object edtSexta: TFloatSpinEdit
          Left = 320
          Top = 72
          Width = 153
          Height = 26
          Increment = 1
          MaxValue = 100
          TabOrder = 5
        end
        object edtSabado: TFloatSpinEdit
          Left = 320
          Top = 112
          Width = 153
          Height = 26
          Increment = 1
          MaxValue = 100
          TabOrder = 6
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 272
    Width = 552
    Height = 47
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 224
      Top = 8
      Width = 153
      Height = 33
      Caption = 'OK'
      Default = True
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
      Left = 392
      Top = 8
      Width = 153
      Height = 33
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 8
      Width = 153
      Height = 33
      Caption = 'Voltar para o padr'#227'o'
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
        33333333333F8888883F33330000324334222222443333388F3833333388F333
        000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
        F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
        223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
        3338888300003AAAAAAA33333333333888888833333333330000333333333333
        333333333333333333FFFFFF000033333333333344444433FFFF333333888888
        00003A444333333A22222438888F333338F3333800003A2243333333A2222438
        F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
        22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
        33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
        3333333333338888883333330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
end
