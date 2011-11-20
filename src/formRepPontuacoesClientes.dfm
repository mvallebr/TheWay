inherited frmRepPontuacoesClientes: TfrmRepPontuacoesClientes
  Width = 844
  Height = 595
  HorzScrollBar.Position = 76
  Caption = 'frmRepPontuacoesClientes'
  PixelsPerInch = 96
  TextHeight = 16
  inherited QuickRep1: TQuickRep
    Left = 4
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Page.Values = (
      100
      2794
      100
      2159
      100
      100
      0)
    ReportTitle = 'Relat'#243'rio de pontua'#231#245'es de clientes'
    inherited TitleBand1: TQRBand
      Size.Values = (
        105.833333333333
        1957.91666666667)
      object Label1: TLabel
        Left = 232
        Top = 8
        Width = 304
        Height = 22
        Alignment = taCenter
        Caption = 'Relat'#243'rio de pontua'#231#245'es de clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 78
      Width = 740
      Height = 19
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
        50.2708333333333
        1957.91666666667)
      BandType = rbDetail
      object QRLabel1: TQRLabel
        Left = 24
        Top = 0
        Width = 45
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          63.5
          0
          119.0625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 72
        Top = 0
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          190.5
          0
          140.229166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtsSelf
        DataField = 'IDCliente'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 128
        Top = 0
        Width = 5
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          338.666666666667
          0
          13.2291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '-'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 144
        Top = 0
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          381
          0
          92.6041666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtsSelf
        DataField = 'Nome'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 496
        Top = 0
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1312.33333333333
          0
          177.270833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pontua'#231#227'o:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 568
        Top = 0
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1502.83333333333
          0
          166.6875)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dtsSelf
        DataField = 'Pontuacao'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  inherited dtsSelf: TZMySqlQuery
    Sql.Strings = (
      'select * from clientes'
      'where '
      '(Pontuacao<>0)'
      'and (Pontuacao is not NULL)'
      'order by Pontuacao DESC,Nome ')
    Active = True
  end
end
