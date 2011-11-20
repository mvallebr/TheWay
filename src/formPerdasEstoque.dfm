inherited frmPerdasEstoque: TfrmPerdasEstoque
  Caption = 'frmPerdasEstoque'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  inherited pgctl: TPageControl
    inherited tabDetails: TTabSheet
      object ScrollBox: TScrollBox
        Left = 0
        Top = 0
        Width = 469
        Height = 276
        HorzScrollBar.Margin = 6
        HorzScrollBar.Range = 380
        VertScrollBar.Margin = 6
        VertScrollBar.Range = 192
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        TabOrder = 0
        object Label1: TLabel
          Left = 6
          Top = 6
          Width = 39
          Height = 16
          Caption = 'IDLoja'
          FocusControl = EditIDLoja
        end
        object Label3: TLabel
          Left = 214
          Top = 6
          Width = 60
          Height = 16
          Caption = 'IDProduto'
          FocusControl = EditIDProduto
        end
        object Label4: TLabel
          Left = 297
          Top = 6
          Width = 63
          Height = 16
          Caption = 'IDEstoque'
          FocusControl = EditIDEstoque
        end
        object Label7: TLabel
          Left = 238
          Top = 52
          Width = 83
          Height = 16
          Caption = 'IDProfissional'
          FocusControl = EditIDProfissional
        end
        object Label8: TLabel
          Left = 6
          Top = 98
          Width = 66
          Height = 16
          Caption = 'DataPerda'
          FocusControl = EditDataPerda
        end
        object Label9: TLabel
          Left = 103
          Top = 98
          Width = 70
          Height = 16
          Caption = 'Quantidade'
          FocusControl = EditQuantidade
        end
        object Label10: TLabel
          Left = 6
          Top = 144
          Width = 40
          Height = 16
          Caption = 'Motivo'
          FocusControl = EditMotivo
        end
        object EditIDLoja: TDBEdit
          Left = 6
          Top = 24
          Width = 77
          Height = 24
          DataField = 'IDLoja'
          DataSource = srcSelf
          TabOrder = 0
        end
        object EditIDProduto: TDBEdit
          Left = 214
          Top = 24
          Width = 77
          Height = 24
          DataField = 'IDProduto'
          DataSource = srcSelf
          TabOrder = 1
        end
        object EditIDEstoque: TDBEdit
          Left = 297
          Top = 24
          Width = 77
          Height = 24
          DataField = 'IDEstoque'
          DataSource = srcSelf
          TabOrder = 2
        end
        object EditIDProfissional: TDBEdit
          Left = 238
          Top = 70
          Width = 77
          Height = 24
          DataField = 'IDProfissional'
          DataSource = srcSelf
          TabOrder = 3
        end
        object EditDataPerda: TDBEdit
          Left = 6
          Top = 116
          Width = 91
          Height = 24
          DataField = 'DataPerda'
          DataSource = srcSelf
          TabOrder = 4
        end
        object EditQuantidade: TDBEdit
          Left = 103
          Top = 116
          Width = 77
          Height = 24
          DataField = 'Quantidade'
          DataSource = srcSelf
          TabOrder = 5
        end
        object EditMotivo: TDBEdit
          Left = 6
          Top = 162
          Width = 288
          Height = 24
          DataField = 'Motivo'
          DataSource = srcSelf
          TabOrder = 6
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 176
  end
  inherited dtsSelf: TZMySqlTable
    TableName = 'perdasestoque'
    object dtsSelfIDLoja: TIntegerField
      FieldName = 'IDLoja'
      Required = True
    end
    object dtsSelfIDProduto: TIntegerField
      FieldName = 'IDProduto'
      Required = True
    end
    object dtsSelfIDEstoque: TIntegerField
      FieldName = 'IDEstoque'
      Required = True
    end
    object dtsSelfIDProfissional: TIntegerField
      FieldName = 'IDProfissional'
    end
    object dtsSelfDataPerda: TDateField
      FieldName = 'DataPerda'
    end
    object dtsSelfQuantidade: TIntegerField
      FieldName = 'Quantidade'
    end
    object dtsSelfMotivo: TMemoField
      FieldName = 'Motivo'
      BlobType = ftMemo
    end
  end
end
