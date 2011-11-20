inherited frmfaturamentoProfissional: TfrmfaturamentoProfissional
  Left = 165
  Top = 168
  Width = 800
  Height = 482
  Caption = 'Faturamento de Profissional'
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 120
  TextHeight = 16
  object Gradient1: TGradient
    Left = 0
    Top = 0
    Width = 792
    Height = 450
    Align = alClient
    ColorBegin = clSilver
    ColorEnd = clWhite
    Reverse = True
    Style = gsLinearH
  end
  object Bevel4: TBevel
    Left = 3
    Top = 5
    Width = 777
    Height = 441
  end
  object Bevel6: TBevel
    Left = 440
    Top = 24
    Width = 169
    Height = 220
  end
  object Bevel7: TBevel
    Left = 608
    Top = 24
    Width = 169
    Height = 220
  end
  object Bevel5: TBevel
    Left = 245
    Top = 296
    Width = 529
    Height = 143
  end
  object Bevel2: TBevel
    Left = 7
    Top = 129
    Width = 234
    Height = 115
  end
  object lbLegenda: TLabel
    Left = 253
    Top = 304
    Width = 512
    Height = 127
    Alignment = taCenter
    AutoSize = False
    Caption = 'Passe o c'#243'digo de barras em seu crach'#225
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -29
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    WordWrap = True
  end
  object Bevel3: TBevel
    Left = 8
    Top = 10
    Width = 233
    Height = 116
  end
  object Label5: TLabel
    Left = 16
    Top = 72
    Width = 64
    Height = 25
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 16
    Top = 16
    Width = 199
    Height = 25
    Caption = 'C'#243'digo do profissional:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 7
    Top = 250
    Width = 233
    Height = 189
  end
  object Label1: TLabel
    Left = 16
    Top = 132
    Width = 100
    Height = 25
    Caption = 'Data inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 16
    Top = 184
    Width = 87
    Height = 25
    Caption = 'Data final:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 448
    Top = 5
    Width = 70
    Height = 20
    Alignment = taRightJustify
    Caption = 'Recebido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 614
    Top = 5
    Width = 72
    Height = 20
    Alignment = taRightJustify
    Caption = 'A receber'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 362
    Top = 31
    Width = 70
    Height = 20
    Alignment = taRightJustify
    Caption = 'Servi'#231'os:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 371
    Top = 53
    Width = 61
    Height = 20
    Alignment = taRightJustify
    Caption = 'Vendas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 340
    Top = 77
    Width = 92
    Height = 20
    Alignment = taRightJustify
    Caption = 'Sal'#225'rio Fixo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label10: TLabel
    Left = 385
    Top = 148
    Width = 47
    Height = 20
    Alignment = taRightJustify
    Caption = 'Vales:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 277
    Top = 173
    Width = 155
    Height = 20
    Alignment = taRightJustify
    Caption = 'Compra de produtos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 255
    Top = 124
    Width = 177
    Height = 20
    Alignment = taRightJustify
    Caption = 'Comiss'#227'o de auxiliares:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel
    Left = 299
    Top = 222
    Width = 133
    Height = 20
    Alignment = taRightJustify
    Caption = 'Fixo de auxiliares:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label14: TLabel
    Left = 390
    Top = 248
    Width = 42
    Height = 20
    Alignment = taRightJustify
    Caption = 'Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object edtServicos: TDBText
    Left = 448
    Top = 33
    Width = 145
    Height = 17
    Color = clNavy
    DataField = 'somaServicos'
    DataSource = srcServicosProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object edtProdutos: TDBText
    Left = 448
    Top = 56
    Width = 145
    Height = 17
    Color = clNavy
    DataField = 'SomaProdutos'
    DataSource = srcServicosProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object edtSalarioFixo: TDBText
    Left = 472
    Top = 80
    Width = 129
    Height = 17
    Color = clNavy
    DataField = 'SalarioFixo'
    DataSource = srcSelf
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object edtServicosP: TDBText
    Left = 616
    Top = 33
    Width = 145
    Height = 17
    Color = clNavy
    DataField = 'somaServicos'
    DataSource = srcProdutosServicosP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object edtProdutosP: TDBText
    Left = 616
    Top = 56
    Width = 145
    Height = 17
    Color = clNavy
    DataField = 'SomaProdutos'
    DataSource = srcProdutosServicosP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object edtVales: TDBText
    Left = 448
    Top = 151
    Width = 145
    Height = 17
    Color = clNavy
    DataField = 'total'
    DataSource = srcVales
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object edtCompraProdutos: TDBText
    Left = 448
    Top = 175
    Width = 145
    Height = 17
    Color = clNavy
    DataField = 'total'
    DataSource = srcVendasInternas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object edtComissaoAux: TDBText
    Left = 448
    Top = 126
    Width = 145
    Height = 17
    Color = clNavy
    DataField = 'somaAuxiliares'
    DataSource = srcComissaoAuxiliares
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Bevel8: TBevel
    Left = 248
    Top = 10
    Width = 97
    Height = 63
  end
  object Shape1: TShape
    Left = 256
    Top = 16
    Width = 17
    Height = 17
    Brush.Color = clBlue
  end
  object Label15: TLabel
    Left = 280
    Top = 16
    Width = 65
    Height = 17
    AutoSize = False
    Caption = 'Receita'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label16: TLabel
    Left = 280
    Top = 48
    Width = 65
    Height = 17
    AutoSize = False
    Caption = '(Despesa)'
    Color = clNavy
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Shape2: TShape
    Left = 256
    Top = 48
    Width = 17
    Height = 17
    Brush.Color = clRed
  end
  object Bevel9: TBevel
    Left = 245
    Top = 244
    Width = 124
    Height = 51
  end
  object edtComissaoAuxP: TDBText
    Left = 616
    Top = 127
    Width = 145
    Height = 17
    Color = clNavy
    DataField = 'somaAuxiliares'
    DataSource = srcComissaoAuxiliaresP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object lbVezesSalario: TLabel
    Left = 449
    Top = 80
    Width = 20
    Height = 16
    Caption = '# *'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbFixoAuxiliar: TLabel
    Left = 449
    Top = 225
    Width = 94
    Height = 16
    Caption = 'lbFixoAuxiliar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label17: TLabel
    Left = 306
    Top = 198
    Width = 126
    Height = 20
    Alignment = taRightJustify
    Caption = 'Uso de produtos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object edtUsoProdutos: TDBText
    Left = 448
    Top = 200
    Width = 145
    Height = 17
    Color = clNavy
    DataField = 'total'
    DataSource = srcUsoProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object lbTotal: TLabel
    Left = 449
    Top = 249
    Width = 27
    Height = 19
    Caption = '###'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbTotalP: TLabel
    Left = 617
    Top = 249
    Width = 27
    Height = 19
    Caption = '###'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label18: TLabel
    Left = 354
    Top = 99
    Width = 78
    Height = 20
    Alignment = taRightJustify
    Caption = 'Caixinhas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object edtCaixinhas: TDBText
    Left = 448
    Top = 102
    Width = 145
    Height = 17
    Color = clNavy
    DataField = 'total'
    DataSource = srcCaixinhas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object edtSenha: TEdit
    Left = 16
    Top = 96
    Width = 217
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    OnChange = edtSenhaChange
    OnEnter = edtSenhaEnter
    OnKeyDown = edtSenhaKeyDown
  end
  object edtCodigo: TEdit
    Left = 16
    Top = 40
    Width = 217
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 13
    ParentFont = False
    TabOrder = 0
    OnChange = edtCodigoChange
    OnEnter = edtCodigoEnter
    OnKeyDown = edtCodigoKeyDown
  end
  object Calendario: TMonthCalendar
    Left = 16
    Top = 252
    Width = 218
    Height = 183
    Cursor = crHandPoint
    MultiSelect = True
    Date = 37463.6164851852
    Enabled = False
    EndDate = 37463
    MaxSelectRange = 365
    TabOrder = 5
    OnClick = CalendarioClick
  end
  object dtpDataInicial: TDateTimePicker
    Left = 16
    Top = 156
    Width = 217
    Height = 28
    CalAlignment = dtaLeft
    Date = 37487.4721423611
    Time = 37487.4721423611
    DateFormat = dfShort
    DateMode = dmComboBox
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Kind = dtkDate
    ParseInput = False
    ParentFont = False
    TabOrder = 2
    OnChange = dtpDataInicialChange
    OnEnter = dtpDataInicialEnter
    OnKeyDown = dtpDataInicialKeyDown
  end
  object dtpDataFinal: TDateTimePicker
    Left = 16
    Top = 208
    Width = 217
    Height = 28
    CalAlignment = dtaLeft
    Date = 37487.4722295139
    Time = 37487.4722295139
    DateFormat = dfShort
    DateMode = dmComboBox
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Kind = dtkDate
    ParseInput = False
    ParentFont = False
    TabOrder = 3
    OnEnter = dtpDataFinalEnter
    OnKeyDown = dtpDataFinalKeyDown
  end
  object btnCalcular: TBitBtn
    Left = 251
    Top = 249
    Width = 113
    Height = 41
    Caption = 'Calcular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnCalcularClick
    OnEnter = btnCalcularEnter
    Glyph.Data = {
      36080000424D3608000000000000360400002800000020000000200000000100
      0800000000000004000000000000000000000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A600CCFFFF0099FFFF0066FFFF0033FFFF00FFCCFF00CCCCFF0099CCFF0066CC
      FF0033CCFF0000CCFF00FF99FF00CC99FF009999FF006699FF003399FF000099
      FF00FF66FF00CC66FF009966FF006666FF003366FF000066FF00FF33FF00CC33
      FF009933FF006633FF003333FF000033FF00CC00FF009900FF006600FF003300
      FF00FFFFCC00CCFFCC0099FFCC0066FFCC0066FFCC0033FFCC0000FFCC00FFCC
      CC00CCCCCC0099CCCC0066CCCC0033CCCC0000CCCC00FF99CC00CC99CC009999
      CC006699CC003399CC000099CC00FF66CC00CC66CC009966CC006666CC003366
      CC000066CC00FF33CC00CC33CC009933CC006633CC003333CC000033CC00FF00
      CC00CC00CC009900CC006600CC003300CC000000CC00FFFF9900CCFF990099FF
      990066FF990033FF990000FF9900FFCC9900CCCC990099CC990066CC990033CC
      990000CC9900FF999900CC99990099999900669999003399990000999900FF66
      9900CC66990099669900666699003366990000669900FF339900CC3399009933
      9900663399003333990000339900FF009900CC00990099009900660099003300
      990000009900FFFF6600CCFF660099FF660066FF660033FF660000FF6600FFCC
      6600CCCC660099CC660066CC660033CC660000CC6600FF996600CC9966009999
      6600669966003399660000996600FF666600CC66660099666600666666003366
      660000666600FF336600CC33660099336600663366003333660000336600FF00
      6600CC00660099006600660066003300660000006600FFFF3300CCFF330099FF
      330066FF330033FF330000FF3300FFCC3300CCCC330099CC330066CC330033CC
      330000CC3300FF993300CC99330099993300669933003399330000993300FF66
      3300CC66330099663300666633003366330000663300FF333300CC3333009933
      3300663333003333330000333300FF003300CC00330099003300660033003300
      330000003300CCFF000099FF000066FF000033FF0000FFCC0000CCCC000099CC
      000066CC000033CC000000CC0000FF990000CC99000099990000669900003399
      000000990000FF660000CC66000099660000666600000066000033660000FF33
      0000CC33000099330000663300003333000000330000CC000000990000006600
      0000330000000000DD000000BB000000AA000000880000007700000055000000
      44000000220000DD000000BB000000AA00000088000000770000005500000044
      000000220000DDDDDD0055555500777777007777770044444400222222001111
      110077000000550000004400000022000000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF
      EFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF
      EFEFEFF0F00000F0F0EFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEF
      EFF0F0000000000000F0F0EFEFEFEFEFEFFFFFFFFFFFFFFFFFFFEFEFEFEFEFF0
      F0000000F0ECECF0000000F0F0EFEFEFEFEFEFFFFFFFFFFFFFFFFFEFEFF0F000
      0000F0ECECF7F7ECECF0000000F0F0EFEFEFEFEFEFFFFFFFFFFFFFFFF0000000
      F0ECECF7F7BAECF7F7ECECF0000000F0F0EFEFEFEFEFEFFFFFFFFF000000F0EC
      ECF7F7EC4E4E4EBAECF7F7ECECF0000000F0F0EFEFEFEFEFEFFF0000F0ECECF7
      F7ECD1F2F7EC4E4E4EBAF7F7F7ECECF0000000F0F0EFEFEFEFEF00ECECF7F7EC
      D1F2F7ECD1F2F7EC4E4EECBAF7F7F7ECECF0000000F0F0EFEFFF00F7F7F7D1F2
      F7ECD1F2F7ECD1F2F7EC4E4EECBAF7F7F7ECECF0000000EFFFFFFF0000F7F7F7
      D1F2F7ECD1F2F7ECD1F2F7EC4E4EF7F7F7F7F7ECECF0000000FFFFFFFF0000F7
      F7F7D1F2F7ECD1F2F7ECD1F2F7F7F7F7F7F1F1F7F7ECECF00000FFFFFFFFFF00
      00F7F7F7D1F2F7ECD1F2F7F7F7F7F7F1F1F1E5E5F1F7F7ECEC00FFFFFFFFFFFF
      FF0000F7F7F7D1F2F7F7F7F7F7F1F1F1E5E5F1F1E5F1F1F7F700FFFFFFFFFFFF
      FFFFFF0000F7F7F7F7F7F7F1F1F1E5E5F1F1E5F0F0F7F70000FFFFFFFFFFFFFF
      FFFFFFFFFF0000F7F7F0F0F1E5E5F1F1E5F0F0F7F70000FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFF0000F7F7F0F0F1E5F0F0F7F70000FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF0000F7F7F0F0F7F70000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF0000F7F70000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object srcVales: TDataSource
    DataSet = dtsVales
    Left = 480
    Top = 272
  end
  object srcVendasInternas: TDataSource
    DataSet = dtsVendasInternas
    Left = 480
    Top = 360
  end
  object srcServicosProdutos: TDataSource
    DataSet = dtsServicosProdutos
    Left = 480
    Top = 240
  end
  object srcComissaoAuxiliares: TDataSource
    DataSet = dtsComissaoAuxiliares
    Left = 480
    Top = 392
  end
  object srcFixoAuxiliares: TDataSource
    DataSet = dtsFixoAuxiliares
    Left = 480
    Top = 424
  end
  object dtsVales: TZMySqlQuery
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
      'select (-sum(vales.Valor)) as total from vales'
      'where ('
      '(Data>"2002-08-15")'
      'and (Data<"2002-08-15")'
      'and (IDProfissionalBeneficiado=:IDProfissional)'
      ')'
      '')
    RequestLive = False
    Left = 520
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDProfissional'
        ParamType = ptUnknown
      end>
    object dtsValestotal: TFloatField
      FieldName = 'total'
      currency = True
    end
  end
  object dtsVendasInternas: TZMySqlQuery
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
      
        'select (-sum(vendasinternas.TotalCobrado)) as total from vendasi' +
        'nternas'
      'where ('
      '(DataHoraVenda<="2002-08-20")'
      'and (DataHoraVenda>="2002-08-20")'
      'and (IDProfissional=:IDProfissional)'
      ')')
    RequestLive = False
    Left = 520
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDProfissional'
        ParamType = ptUnknown
      end>
    object dtsVendasInternastotal: TFloatField
      FieldName = 'total'
      currency = True
    end
  end
  object dtsServicosProdutos: TZMySqlQuery
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
      'select '
      'sum(ValorServicos+ComissaoPagaAuxiliar) as somaServicos,'
      'sum(ValorProdutos) as SomaProdutos'
      'from relcontasAReceberprofissionais, contasAReceber'
      'where'
      '('
      
        '(relcontasAReceberprofissionais.DataComandaPrestada=contasAReceb' +
        'er.DataComandaPrestada)'
      
        'and (relcontasAReceberprofissionais.IDComandaPrestada=contasARec' +
        'eber.IDComandaPrestada)'
      
        'and (relcontasAReceberprofissionais.IDParcela=contasAReceber.IDP' +
        'arcela)'
      'and (contasAReceber.DataRecebimento>="2002-08-15")'
      'and (contasAReceber.DataRecebimento<="2002-08-15")'
      'and (contasAReceber.ESTADO="R")'
      'and (IDProfissional=:IDProfissional)'
      ')')
    RequestLive = False
    Left = 520
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDProfissional'
        ParamType = ptUnknown
      end>
    object dtsServicosProdutossomaServicos: TFloatField
      FieldName = 'somaServicos'
      currency = True
    end
    object dtsServicosProdutosSomaProdutos: TFloatField
      FieldName = 'SomaProdutos'
      currency = True
    end
  end
  object dtsComissaoAuxiliares: TZMySqlQuery
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
      'select '
      '-sum(ComissaoPagaAuxiliar) as somaAuxiliares'
      'from relcontasAReceberprofissionais, contasAReceber'
      'where'
      '('
      
        '(relcontasAReceberprofissionais.DataComandaPrestada=contasAReceb' +
        'er.DataComandaPrestada)'
      
        'and (relcontasAReceberprofissionais.IDComandaPrestada=contasARec' +
        'eber.IDComandaPrestada)'
      
        'and (relcontasAReceberprofissionais.IDParcela=contasAReceber.IDP' +
        'arcela)'
      'and (contasAReceber.DataRecebimento>="2002-08-15")'
      'and (contasAReceber.DataRecebimento<="2002-08-15")'
      'and (contasAReceber.ESTADO="R")'
      'and (IDProfissional=:IDProfissional)'
      ')')
    RequestLive = False
    Left = 520
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDProfissional'
        ParamType = ptUnknown
      end>
    object dtsComissaoAuxiliaressomaAuxiliares: TFloatField
      FieldName = 'somaAuxiliares'
      currency = True
    end
  end
  object dtsFixoAuxiliares: TZMySqlQuery
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
      'select * from profissionais, relProfissionalAuxiliar'
      'where '
      '(relProfissionalAuxiliar.IDProfissional=:IDProfissional)'
      'and (profissionais.Auxiliar=1)'
      
        'and (profissionais.IDProfissional=relProfissionalAuxiliar.IDAuxi' +
        'liar)'
      'and (profissionais.ContratadoAtualmente=1)')
    RequestLive = False
    Left = 520
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDProfissional'
        ParamType = ptUnknown
      end>
    object dtsFixoAuxiliaresIDProfissional: TIntegerField
      FieldName = 'IDProfissional'
    end
    object dtsFixoAuxiliaresContratadoAtualmente: TIntegerField
      FieldName = 'ContratadoAtualmente'
    end
    object dtsFixoAuxiliaresSalarioFixo: TFloatField
      FieldName = 'SalarioFixo'
      currency = True
    end
    object dtsFixoAuxiliaresDiaPagamento: TIntegerField
      FieldName = 'DiaPagamento'
    end
    object dtsFixoAuxiliaresTipoDiaPagamento: TStringField
      FieldName = 'TipoDiaPagamento'
      Size = 1
    end
    object dtsFixoAuxiliaresAuxiliar: TIntegerField
      FieldName = 'Auxiliar'
    end
    object dtsFixoAuxiliaresPorcSalarioPagaPeloSalao: TFloatField
      FieldName = 'PorcSalarioPagaPeloSalao'
    end
    object dtsFixoAuxiliaresIDAuxiliar: TIntegerField
      FieldName = 'IDAuxiliar'
      Required = True
    end
  end
  object srcSelf: TDataSource
    DataSet = dtsSelf
    Left = 40
    Top = 408
  end
  object dtsSelf: TZMySqlQuery
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    AfterScroll = dtsSelfAfterScroll
    ExtraOptions = [moStoreResult]
    Macros = <>
    Sql.Strings = (
      'select * from profissionais'
      'where ContratadoAtualmente=1')
    RequestLive = False
    Left = 72
    Top = 408
    object dtsSelfIDProfissional: TIntegerField
      FieldName = 'IDProfissional'
    end
    object dtsSelfIDCargoProfissional: TIntegerField
      FieldName = 'IDCargoProfissional'
    end
    object dtsSelfNome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object dtsSelfDataNascimento: TDateField
      FieldName = 'DataNascimento'
      Required = True
    end
    object dtsSelfEndereco: TStringField
      FieldName = 'Endereco'
      Required = True
      Size = 70
    end
    object dtsSelfCidade: TStringField
      FieldName = 'Cidade'
      Required = True
      Size = 30
    end
    object dtsSelfEstado: TStringField
      FieldName = 'Estado'
      Required = True
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
      Required = True
    end
    object dtsSelfCPF: TStringField
      FieldName = 'CPF'
    end
    object dtsSelfBanco: TStringField
      FieldName = 'Banco'
      Required = True
      Size = 50
    end
    object dtsSelfConta: TStringField
      FieldName = 'Conta'
      Required = True
      Size = 10
    end
    object dtsSelfAgencia: TStringField
      FieldName = 'Agencia'
      Required = True
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
      Required = True
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
      Required = True
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
      Required = True
    end
  end
  object srcProdutosServicosP: TDataSource
    DataSet = dtsProdutosServicosP
    Left = 560
    Top = 240
  end
  object dtsProdutosServicosP: TZMySqlQuery
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
      'select '
      'sum(ValorServicos+ComissaoPagaAuxiliar) as somaServicos,'
      'sum(ValorProdutos) as SomaProdutos'
      'from relcontasAReceberprofissionais, contasAReceber'
      'where'
      '('
      
        '(relcontasAReceberprofissionais.DataComandaPrestada=contasAReceb' +
        'er.DataComandaPrestada)'
      
        'and (relcontasAReceberprofissionais.IDComandaPrestada=contasARec' +
        'eber.IDComandaPrestada)'
      
        'and (relcontasAReceberprofissionais.IDParcela=contasAReceber.IDP' +
        'arcela)'
      'and (contasAReceber.DataVencimento>"2002-08-15")'
      'and (contasAReceber.ESTADO="N")'
      'and (IDProfissional=:IDProfissional)'
      ')')
    RequestLive = False
    Left = 600
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDProfissional'
        ParamType = ptUnknown
      end>
    object FloatField1: TFloatField
      FieldName = 'somaServicos'
      currency = True
    end
    object FloatField2: TFloatField
      FieldName = 'SomaProdutos'
      currency = True
    end
  end
  object dtsComissaoAuxiliaresP: TZMySqlQuery
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
      'select '
      '-sum(ComissaoPagaAuxiliar) as somaAuxiliares'
      'from relcontasAReceberprofissionais, contasAReceber'
      'where'
      '('
      
        '(relcontasAReceberprofissionais.DataComandaPrestada=contasAReceb' +
        'er.DataComandaPrestada)'
      
        'and (relcontasAReceberprofissionais.IDComandaPrestada=contasARec' +
        'eber.IDComandaPrestada)'
      
        'and (relcontasAReceberprofissionais.IDParcela=contasAReceber.IDP' +
        'arcela)'
      'and (contasAReceber.DataVencimento>"2002-08-15")'
      'and (contasAReceber.ESTADO="N")'
      'and (IDProfissional=:IDProfissional)'
      ')')
    RequestLive = False
    Left = 600
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDProfissional'
        ParamType = ptUnknown
      end>
    object FloatField3: TFloatField
      FieldName = 'somaAuxiliares'
      currency = True
    end
  end
  object srcComissaoAuxiliaresP: TDataSource
    DataSet = dtsComissaoAuxiliaresP
    Left = 560
    Top = 392
  end
  object dtsNumProfs: TZMySqlQuery
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    ExtraOptions = [moStoreResult]
    Macros = <>
    DataSource = srcFixoAuxiliares
    Sql.Strings = (
      'select count(*) as nump from relProfissionalAuxiliar'
      'where IDAuxiliar=:IDProfissional')
    RequestLive = False
    Left = 560
    Top = 424
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDProfissional'
        ParamType = ptUnknown
        Value = 2
      end>
    object dtsNumProfsnump: TIntegerField
      FieldName = 'nump'
    end
  end
  object srcUsoProdutos: TDataSource
    DataSet = dtsUsoProdutos
    Left = 480
    Top = 328
  end
  object dtsUsoProdutos: TZMySqlQuery
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
      'select (-sum(vendasuso.TotalCobrado)) as total from vendasuso'
      'where ('
      '(DataHoraVenda<="2002-08-20")'
      'and (DataHoraVenda>="2002-08-20")'
      'and (IDProfissional=:IDProfissional)'
      ')')
    RequestLive = False
    Left = 520
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDProfissional'
        ParamType = ptUnknown
      end>
    object FloatField4: TFloatField
      FieldName = 'total'
      currency = True
    end
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
      'select (sum(caixinhas.Valor)) as total from caixinhas'
      'where ('
      '(DataHora>"2002-08-15")'
      'and (DataHora<"2002-08-15")'
      'and (IDProfissionalBeneficiado=:IDProfissional)'
      ')'
      '')
    RequestLive = False
    Left = 520
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDProfissional'
        ParamType = ptUnknown
      end>
    object FloatField5: TFloatField
      FieldName = 'total'
      currency = True
    end
  end
  object srcCaixinhas: TDataSource
    DataSet = dtsCaixinhas
    Left = 480
    Top = 304
  end
end
