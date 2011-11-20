inherited frmServicosContratados: TfrmServicosContratados
  Left = 235
  Top = 256
  Caption = 'frmServicosContratados'
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
        HorzScrollBar.Range = 300
        VertScrollBar.Margin = 6
        VertScrollBar.Range = 146
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        TabOrder = 0
        object Label2: TLabel
          Left = 158
          Top = 6
          Width = 135
          Height = 16
          Caption = 'IDServicoTerceirizado'
          FocusControl = EditIDServicoTerceirizado
        end
        object Label3: TLabel
          Left = 6
          Top = 52
          Width = 86
          Height = 16
          Caption = 'IDContratacao'
          FocusControl = EditIDContratacao
        end
        object Label5: TLabel
          Left = 6
          Top = 98
          Width = 83
          Height = 16
          Caption = 'IDFornecedor'
          FocusControl = EditIDFornecedor
        end
        object Label6: TLabel
          Left = 95
          Top = 98
          Width = 102
          Height = 16
          Caption = 'DataContratacao'
          FocusControl = EditDataContratacao
        end
        object Label7: TLabel
          Left = 203
          Top = 98
          Width = 91
          Height = 16
          Caption = 'DataPrestacao'
          FocusControl = EditDataPrestacao
        end
        object EditIDServicoTerceirizado: TDBEdit
          Left = 158
          Top = 24
          Width = 77
          Height = 24
          DataField = 'IDServicoTerceirizado'
          TabOrder = 0
        end
        object EditIDContratacao: TDBEdit
          Left = 6
          Top = 70
          Width = 77
          Height = 24
          DataField = 'IDContratacao'
          TabOrder = 1
        end
        object EditIDFornecedor: TDBEdit
          Left = 6
          Top = 116
          Width = 77
          Height = 24
          DataField = 'IDFornecedor'
          TabOrder = 2
        end
        object EditDataContratacao: TDBEdit
          Left = 95
          Top = 116
          Width = 91
          Height = 24
          DataField = 'DataContratacao'
          TabOrder = 3
        end
        object EditDataPrestacao: TDBEdit
          Left = 203
          Top = 116
          Width = 91
          Height = 24
          DataField = 'DataPrestacao'
          TabOrder = 4
        end
      end
    end
  end
  inherited dtsSelf: TZMySqlTable
    TableName = 'servicoscontratados'
  end
end
