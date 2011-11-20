inherited frmCrachasFuncionarios: TfrmCrachasFuncionarios
  Left = 159
  Top = 238
  Width = 776
  Caption = 'Imprimir crach'#225's de funcion'#225'rios'
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
    ReportTitle = 'Imprimir crach'#225's de profissionais'
    inherited TitleBand1: TQRBand
      Width = 898
      Size.Values = (
        105.833333333333
        1900.76666666667)
      object QRLabel4: TQRLabel
        Left = 320
        Top = 10
        Width = 201
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
          425.45)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Crach'#225's dispon'#237'veis na loja'
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
      Height = 124
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
        262.466666666667
        1900.76666666667)
      BandType = rbDetail
      object QRLabel1: TQRLabel
        Left = 40
        Top = 10
        Width = 23
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.45
          84.6666666666667
          21.1666666666667
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
        Left = 70
        Top = 10
        Width = 103
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.45
          148.166666666667
          21.1666666666667
          218.016666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtsSelf
        DataField = 'IDProfissional'
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
        Top = 5
        Width = 96
        Height = 100
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          211.666666666667
          889
          10.5833333333333
          203.2)
        AutoSize = True
        BarcodeHeight = 100
        BarcodeWidth = 95
        Modul = 1
        Ratio = 2
        Typ = bcCodeEAN13
      end
      object QRLabel2: TQRLabel
        Left = 13
        Top = 40
        Width = 48
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.45
          27.5166666666667
          84.6666666666667
          101.6)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nome:'
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
        Left = 70
        Top = 40
        Width = 43
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.45
          148.166666666667
          84.6666666666667
          91.0166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtsSelf
        DataField = 'Nome'
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
      object QRShape1: TQRShape
        Left = 10
        Top = 108
        Width = 861
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.8125
          21.1666666666667
          227.541666666667
          1822.97916666667)
        Shape = qrsHorLine
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
      'select * from profissionais')
    Active = True
  end
end
