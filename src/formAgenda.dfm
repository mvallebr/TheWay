inherited frmAgenda: TfrmAgenda
  Caption = 'Cadastro de compromissos (agenda)'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Caption = 'Cadastro de compromissos:'
    end
    inherited DBCtrlGrid: TDBCtrlGrid
      PanelHeight = 87
      RowCount = 5
      object DBText1: TDBText
        Left = 9
        Top = 25
        Width = 144
        Height = 16
        DataField = 'STARTTIME'
        DataSource = srcSelf
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 6
        Top = 6
        Width = 86
        Height = 16
        Caption = 'Hora de in'#237'cio:'
        FocusControl = EditSTARTTIME
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 4
        Top = 38
        Width = 99
        Height = 16
        Caption = 'Hora de t'#233'rmino:'
        FocusControl = EditENDTIME
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 9
        Top = 57
        Width = 144
        Height = 16
        DataField = 'ENDTIME'
        DataSource = srcSelf
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  inherited pgctl: TPageControl
    inherited tabList: TTabSheet
      inherited DBGridList: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'STARTTIME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDTIME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDCargoProfissional'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDProfissional'
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Observacoes'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDCategoriaServico'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDServico'
            Visible = True
          end>
      end
    end
    inherited tabDetails: TTabSheet
      object ScrollBox: TScrollBox
        Left = 0
        Top = 0
        Width = 492
        Height = 425
        HorzScrollBar.Margin = 6
        HorzScrollBar.Range = 450
        VertScrollBar.Margin = 6
        VertScrollBar.Range = 192
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        TabOrder = 0
        object Label2: TLabel
          Left = 6
          Top = 6
          Width = 86
          Height = 16
          Caption = 'Hora de in'#237'cio:'
          FocusControl = EditSTARTTIME
        end
        object Label3: TLabel
          Left = 180
          Top = 6
          Width = 99
          Height = 16
          Caption = 'Hora de t'#233'rmino:'
          FocusControl = EditENDTIME
        end
        object Label5: TLabel
          Left = 180
          Top = 52
          Width = 83
          Height = 16
          Caption = 'IDProfissional'
          FocusControl = EditIDProfissional
        end
        object Label6: TLabel
          Left = 271
          Top = 52
          Width = 54
          Height = 16
          Caption = 'IDCliente'
          FocusControl = EditIDCliente
        end
        object Label7: TLabel
          Left = 6
          Top = 98
          Width = 78
          Height = 16
          Caption = 'NomeCliente'
          FocusControl = EditNomeCliente
        end
        object Label8: TLabel
          Left = 6
          Top = 201
          Width = 82
          Height = 16
          Caption = 'Observacoes'
        end
        object Label9: TLabel
          Left = 6
          Top = 153
          Width = 118
          Height = 16
          Caption = 'IDCategoriaServico'
          FocusControl = EditIDCategoriaServico
        end
        object Label10: TLabel
          Left = 135
          Top = 153
          Width = 59
          Height = 16
          Caption = 'IDServico'
          FocusControl = EditIDServico
        end
        object EditSTARTTIME: TDBEdit
          Left = 6
          Top = 25
          Width = 168
          Height = 24
          DataField = 'STARTTIME'
          DataSource = srcSelf
          TabOrder = 0
        end
        object EditENDTIME: TDBEdit
          Left = 180
          Top = 25
          Width = 168
          Height = 24
          DataField = 'ENDTIME'
          DataSource = srcSelf
          TabOrder = 1
        end
        object EditIDProfissional: TDBEdit
          Left = 180
          Top = 70
          Width = 77
          Height = 24
          DataField = 'IDProfissional'
          DataSource = srcSelf
          TabOrder = 2
        end
        object EditIDCliente: TDBEdit
          Left = 271
          Top = 70
          Width = 77
          Height = 24
          DataField = 'IDCliente'
          DataSource = srcSelf
          TabOrder = 3
        end
        object EditNomeCliente: TDBEdit
          Left = 6
          Top = 116
          Width = 347
          Height = 24
          DataField = 'NomeCliente'
          DataSource = srcSelf
          TabOrder = 4
        end
        object EditIDCategoriaServico: TDBEdit
          Left = 6
          Top = 170
          Width = 76
          Height = 24
          DataField = 'IDCategoriaServico'
          DataSource = srcSelf
          TabOrder = 5
        end
        object EditIDServico: TDBEdit
          Left = 135
          Top = 170
          Width = 106
          Height = 24
          DataField = 'IDServico'
          DataSource = srcSelf
          TabOrder = 6
        end
        object DBMemo1: TDBMemo
          Left = 6
          Top = 217
          Width = 233
          Height = 88
          DataField = 'Observacoes'
          DataSource = srcSelf
          ScrollBars = ssVertical
          TabOrder = 7
        end
      end
    end
  end
  inherited srcSelf: TDataSource
    Left = 520
    Top = 58
  end
  inherited dtsSelf: TZMySqlTable
    TableName = 'agenda'
    Left = 520
    Top = 24
    object dtsSelfIDAgenda: TIntegerField
      FieldName = 'IDAgenda'
    end
    object dtsSelfPLANNERKEY: TStringField
      FieldName = 'PLANNERKEY'
      Required = True
      Size = 40
    end
    object dtsSelfSTARTTIME: TDateTimeField
      DisplayLabel = 'HoraIn'#237'cio'
      FieldName = 'STARTTIME'
    end
    object dtsSelfENDTIME: TDateTimeField
      DisplayLabel = 'HoraT'#233'rmino'
      FieldName = 'ENDTIME'
    end
    object dtsSelfIDProfissional: TIntegerField
      DisplayLabel = 'IDProf'
      FieldName = 'IDProfissional'
    end
    object dtsSelfIDCliente: TIntegerField
      FieldName = 'IDCliente'
    end
    object dtsSelfNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 50
    end
    object dtsSelfDuracaoHoras: TIntegerField
      FieldName = 'DuracaoHoras'
    end
    object dtsSelfObservacoes: TMemoField
      FieldName = 'Observacoes'
      BlobType = ftMemo
    end
    object dtsSelfIDCategoriaServico: TIntegerField
      DisplayLabel = 'IDCServico'
      FieldName = 'IDCategoriaServico'
    end
    object dtsSelfIDServico: TIntegerField
      FieldName = 'IDServico'
    end
    object dtsSelfNOTES: TMemoField
      FieldName = 'NOTES'
      BlobType = ftMemo
    end
    object dtsSelfSUBJECT: TStringField
      FieldName = 'SUBJECT'
      Size = 50
    end
    object dtsSelfCOLOR: TFloatField
      FieldName = 'COLOR'
    end
    object dtsSelfIMAGE: TFloatField
      FieldName = 'IMAGE'
    end
    object dtsSelfCAPTION: TIntegerField
      FieldName = 'CAPTION'
    end
  end
end
