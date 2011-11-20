inherited frmFuncionarios: TfrmFuncionarios
  Left = 260
  Top = 181
  Width = 627
  Height = 497
  Caption = 'Cadastro de Funcion'#225'rios'
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  inherited ToolBar1: TToolBar
    Width = 619
    inherited DBNavigator1: TDBNavigator
      Width = 335
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    end
  end
  inherited pgctl: TPageControl
    Width = 619
    Height = 430
    ActivePage = TabSheet1
    inherited tabList: TTabSheet
      TabVisible = False
      inherited DBGrid1: TDBGrid
        Width = 611
        Height = 399
      end
    end
    inherited tabDetails: TTabSheet
      TabVisible = False
    end
    object TabSheet1: TTabSheet
      Caption = 'Lista'
      ImageIndex = 2
      object TWDBRel2: TTWDBRel
        Left = 0
        Top = 0
        Width = 611
        Height = 399
        Align = alClient
        TabOrder = 0
        tablename1 = 'profissionais'
        tablenameRel = 'funcionarios'
        RelFields.Strings = (
          'IDProfissional')
        ShowFields1.Strings = (
          'Nome'
          'RegistroLegal'
          'Banco'
          'Agencia'
          'Conta')
        ZMysqlDatabase = DMMain.Database
        Active = False
        label1 = 'Profissionais que s'#227'o funcion'#225'rios :'
        label2 = 'Profissionais que N'#195'O s'#227'o funcion'#225'rios:'
        MasterSource = srcSelf
      end
    end
  end
  inherited dtsSelf: TZMySqlTable
    TableName = 'profissionais'
    Active = True
  end
end
