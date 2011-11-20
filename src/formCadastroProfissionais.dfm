inherited frmCadastroProfissionais: TfrmCadastroProfissionais
  Left = -4
  Top = -4
  Width = 1032
  Height = 748
  Caption = 'Cadastro de Profissionais'
  PixelsPerInch = 96
  TextHeight = 16
  inherited Spliter: TSplitter
    Height = 681
  end
  inherited ToolBar1: TToolBar
    Width = 1024
  end
  inherited Panel1: TPanel
    Height = 681
    inherited Label1: TLabel
      Caption = 'Cadastro de Profissionais'
    end
    inherited DBCtrlGrid: TDBCtrlGrid
      Height = 663
      PanelHeight = 221
    end
  end
  inherited pgctl: TPageControl
    Width = 836
    Height = 681
    inherited tabCategory: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 828
        Height = 647
      end
    end
    inherited tabList: TTabSheet
      inherited DBGridList: TDBGrid
        Width = 828
        Height = 647
      end
    end
  end
  inherited srcSelf: TDataSource
    DataSet = nil
  end
  inherited dtsSelf: TZMySqlTable
    Transaction = nil
    TableName = 'profissionais'
  end
end
