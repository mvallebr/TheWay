inherited frmComandasPrestadas: TfrmComandasPrestadas
  Left = 161
  Top = 106
  Caption = 'frmComandasPrestadas'
  PixelsPerInch = 96
  TextHeight = 16
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Height = 32
      Caption = 'Cadastro de comandas prestadas:'
    end
    inherited DBCtrlGrid: TDBCtrlGrid
      Top = 33
      Height = 422
      PanelHeight = 140
    end
  end
  inherited dtsSelf: TZMySqlTable
    TableName = 'comandasprestadas'
  end
end
