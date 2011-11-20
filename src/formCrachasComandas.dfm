inherited frmCrachasComandas: TfrmCrachasComandas
  Left = 201
  Top = 157
  Width = 877
  Height = 522
  Caption = 'Imprimir crach'#225's de comandas'
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  inherited QuickRep1: TQuickRep
    Left = 64
    Top = 0
    Width = 992
    Height = 1403
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.PaperSize = A4
    Page.Values = (
      100
      2970
      100
      2100
      100
      100
      0)
    ReportTitle = 'Imprimir crach'#225's de comandas'
    inherited TitleBand1: TQRBand
      Width = 898
      Size.Values = (
        105.833333333333
        1900.76666666667)
      object QRLabel4: TQRLabel
        Left = 320
        Top = 10
        Width = 304
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.45
          677.333333333333
          21.1666666666667
          643.466666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Crach'#225's de comandas dispon'#237'veis na loja'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 47
      Top = 97
      Width = 898
      Height = 96
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        203.2
        1900.76666666667)
      BandType = rbDetail
      object QRLabel1: TQRLabel
        Left = 150
        Top = 20
        Width = 23
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.45
          317.5
          42.3333333333333
          48.6833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ID:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 180
        Top = 20
        Width = 72
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.45
          381
          42.3333333333333
          152.4)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtsSelf
        DataField = 'IDCracha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 20
        Top = 50
        Width = 150
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.45
          42.3333333333333
          105.833333333333
          317.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Em uso Atualmente?'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 180
        Top = 50
        Width = 133
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.45
          381
          105.833333333333
          281.516666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtsSelf
        DataField = 'EmUsoAtualmente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRAsBarcode1: TQRAsBarcode
        Left = 420
        Top = 6
        Width = 190
        Height = 80
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          169.333333333333
          889
          12.7
          402.166666666667)
        AutoSize = True
        Center = True
        BarcodeHeight = 80
        BarcodeWidth = 190
        Modul = 2
        Ratio = 2
        ShowText = bcoBoth
        Text = '9912345678912'
        Typ = bcCodeEAN13
      end
    end
  end
  object Button1: TButton [1]
    Left = 8
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Visualizar'
    TabOrder = 1
    OnClick = Button1Click
  end
  inherited dtsSelf: TZMySqlQuery
    AfterScroll = dtsSelfAfterScroll
    Sql.Strings = (
      'select * from crachas')
  end
end
