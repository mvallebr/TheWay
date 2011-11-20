inherited frmServicosTerceirizados: TfrmServicosTerceirizados
  Left = 191
  Top = 184
  Caption = 'frmServicosTerceirizados'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Height = 32
      Caption = 'Cadastro de servi'#231'os oferecidos por terceiros:'
    end
    inherited DBCtrlGrid: TDBCtrlGrid
      Top = 33
      Height = 422
      PanelHeight = 140
    end
  end
  inherited pgctl: TPageControl
    inherited tabCategory: TTabSheet
      inherited DBNavigator2: TDBNavigator
        Hints.Strings = ()
      end
    end
    inherited tabList: TTabSheet
      inherited DBGridList: TDBGrid
        Height = 425
      end
    end
    inherited tabDetails: TTabSheet
      object ScrollBox: TScrollBox
        Left = 0
        Top = 0
        Width = 492
        Height = 425
        HorzScrollBar.Margin = 6
        HorzScrollBar.Range = 300
        VertScrollBar.Margin = 6
        VertScrollBar.Range = 146
        Align = alClient
        AutoScroll = False
        BorderStyle = bsNone
        TabOrder = 0
        object Label2: TLabel
          Left = 6
          Top = 6
          Width = 146
          Height = 16
          Caption = 'IDCategoriaServicoTerc'
          FocusControl = EditIDCategoriaServicoTerc
        end
        object Label3: TLabel
          Left = 158
          Top = 6
          Width = 135
          Height = 16
          Caption = 'IDServicoTerceirizado'
          FocusControl = EditIDServicoTerceirizado
        end
        object Label4: TLabel
          Left = 6
          Top = 52
          Width = 62
          Height = 16
          Caption = 'Descricao'
          FocusControl = EditDescricao
        end
        object Label5: TLabel
          Left = 6
          Top = 98
          Width = 32
          Height = 16
          Caption = 'Valor'
          FocusControl = EditValor
        end
        object Label6: TLabel
          Left = 103
          Top = 98
          Width = 137
          Height = 16
          Caption = 'DataUltimaAtualizacao'
          FocusControl = EditDataUltimaAtualizacao
        end
        object EditIDCategoriaServicoTerc: TDBEdit
          Left = 6
          Top = 25
          Width = 76
          Height = 24
          DataField = 'IDCategoriaServicoTerc'
          TabOrder = 0
        end
        object EditIDServicoTerceirizado: TDBEdit
          Left = 158
          Top = 25
          Width = 77
          Height = 24
          DataField = 'IDServicoTerceirizado'
          TabOrder = 1
        end
        object EditDescricao: TDBEdit
          Left = 6
          Top = 70
          Width = 288
          Height = 24
          DataField = 'Descricao'
          TabOrder = 2
        end
        object EditValor: TDBEdit
          Left = 6
          Top = 116
          Width = 91
          Height = 24
          DataField = 'Valor'
          TabOrder = 3
        end
        object EditDataUltimaAtualizacao: TDBEdit
          Left = 103
          Top = 116
          Width = 91
          Height = 24
          DataField = 'DataUltimaAtualizacao'
          TabOrder = 4
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Fornecedores'
      ImageIndex = 3
      object TWDBRel1: TTWDBRel
        Left = 0
        Top = 0
        Width = 492
        Height = 425
        Align = alClient
        TabOrder = 0
        Active = False
        label1 = ' Fornecedores que prestam esse tipo de servi'#231'o:'
        label2 = ' Fornecedores que N'#195'O prestam esse tipo de servi'#231'o:'
      end
    end
  end
  inherited dtsSelf: TZMySqlTable
    TableName = 'servicosterceirizados'
    object dtsSelfIDCategoriaServicoTerc: TIntegerField
      FieldName = 'IDCategoriaServicoTerc'
      Required = True
    end
    object dtsSelfIDServicoTerceirizado: TIntegerField
      FieldName = 'IDServicoTerceirizado'
      ReadOnly = True
    end
    object dtsSelfDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
    object dtsSelfValor: TFloatField
      FieldName = 'Valor'
      Required = True
    end
    object dtsSelfDataUltimaAtualizacao: TDateField
      FieldName = 'DataUltimaAtualizacao'
      Required = True
    end
  end
  inherited dtsCategory: TZMySqlTable
    TableName = 'categoriasservi'#231'osterceirizados'
    object dtsCategoryIDCategoriaServicoTerc: TIntegerField
      FieldName = 'IDCategoriaServicoTerc'
      ReadOnly = True
    end
    object dtsCategoryDescricao: TStringField
      FieldName = 'Descricao'
      Required = True
      Size = 50
    end
  end
end
