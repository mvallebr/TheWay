inherited frmVales: TfrmVales
  Left = 171
  Top = 123
  Width = 801
  Height = 480
  Caption = 'Cadastro de vales para profissionais'
  PixelsPerInch = 120
  TextHeight = 16
  inherited Spliter: TSplitter
    Height = 408
  end
  inherited ToolBar1: TToolBar
    Width = 793
  end
  inherited Panel1: TPanel
    Height = 408
    inherited Label1: TLabel
      Caption = 'Cadastro de  vales:'
    end
    inherited DBCtrlGrid: TDBCtrlGrid
      Height = 390
      PanelHeight = 97
      RowCount = 4
      object Label2: TLabel
        Left = 49
        Top = 8
        Width = 32
        Height = 16
        Alignment = taRightJustify
        Caption = 'Data:'
        Transparent = True
      end
      object Label3: TLabel
        Left = 46
        Top = 32
        Width = 35
        Height = 16
        Alignment = taRightJustify
        Caption = 'Valor:'
        Transparent = True
      end
      object Label4: TLabel
        Left = 5
        Top = 56
        Width = 76
        Height = 16
        Alignment = taRightJustify
        Caption = 'ID do Benef.:'
        Transparent = True
      end
      object DBText1: TDBText
        Left = 96
        Top = 8
        Width = 65
        Height = 17
        DataField = 'Data'
        DataSource = srcSelf
        Transparent = True
      end
      object DBText2: TDBText
        Left = 96
        Top = 32
        Width = 65
        Height = 17
        DataField = 'Valor'
        DataSource = srcSelf
        Transparent = True
      end
      object DBText3: TDBText
        Left = 96
        Top = 56
        Width = 65
        Height = 17
        DataField = 'IDProfissionalBeneficiado'
        DataSource = srcSelf
        Transparent = True
      end
    end
  end
  inherited pgctl: TPageControl
    Width = 605
    Height = 408
    inherited tabDetails: TTabSheet
      object Label5: TLabel
        Left = 67
        Top = 24
        Width = 32
        Height = 16
        Alignment = taRightJustify
        Caption = 'Data:'
        Transparent = True
      end
      object Label6: TLabel
        Left = 64
        Top = 72
        Width = 35
        Height = 16
        Alignment = taRightJustify
        Caption = 'Valor:'
        Transparent = True
      end
      object Label7: TLabel
        Left = 24
        Top = 112
        Width = 75
        Height = 16
        Alignment = taRightJustify
        Caption = 'Beneficiado:'
        Transparent = True
      end
      object Label8: TLabel
        Left = 15
        Top = 160
        Width = 84
        Height = 16
        Alignment = taRightJustify
        Caption = 'Respons'#225'vel:'
        Transparent = True
      end
      object Label9: TLabel
        Left = 8
        Top = 192
        Width = 43
        Height = 16
        Alignment = taRightJustify
        Caption = 'Motivo:'
        FocusControl = DBMemo1
      end
      object DBEdit1: TDBEdit
        Left = 104
        Top = 16
        Width = 473
        Height = 24
        DataField = 'Data'
        DataSource = srcSelf
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 104
        Top = 64
        Width = 473
        Height = 24
        DataField = 'Valor'
        DataSource = srcSelf
        TabOrder = 1
      end
      object DBMemo1: TDBMemo
        Left = 8
        Top = 208
        Width = 577
        Height = 153
        DataField = 'Motivo'
        DataSource = srcSelf
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 104
        Top = 104
        Width = 473
        Height = 24
        DataField = 'IDProfissionalBeneficiado'
        DataSource = srcSelf
        KeyField = 'IDProfissional'
        ListField = 'Nome'
        ListSource = srcProfissionais
        TabOrder = 2
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 104
        Top = 152
        Width = 473
        Height = 24
        DataField = 'IDProfissionalResponsavel'
        DataSource = srcSelf
        KeyField = 'IDProfissional'
        ListField = 'Nome'
        ListSource = srcProfissionais
        TabOrder = 3
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 272
    Top = 40
  end
  inherited FilterDlg: TFilterDialog
    Left = 304
    Top = 40
  end
  inherited srcSelf: TDataSource
    Left = 360
    Top = 42
  end
  inherited dtsSelf: TZMySqlTable
    IndexFieldNames = 'Data'
    TableName = 'vales'
    Active = True
    Left = 392
    Top = 40
    object dtsSelfIDVale: TIntegerField
      FieldName = 'IDVale'
    end
    object dtsSelfData: TDateField
      FieldName = 'Data'
      Required = True
    end
    object dtsSelfValor: TFloatField
      Alignment = taLeftJustify
      FieldName = 'Valor'
      Required = True
      currency = True
    end
    object dtsSelfIDProfissionalBeneficiado: TIntegerField
      FieldName = 'IDProfissionalBeneficiado'
      Required = True
    end
    object dtsSelfIDProfissionalResponsavel: TIntegerField
      FieldName = 'IDProfissionalResponsavel'
      Required = True
    end
    object dtsSelfMotivo: TMemoField
      FieldName = 'Motivo'
      BlobType = ftMemo
    end
  end
  object srcProfissionais: TDataSource
    DataSet = dtsProfissionais
    Left = 464
    Top = 26
  end
  object dtsProfissionais: TZMySqlTable
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    IndexFieldNames = 'Nome'
    AfterPost = dtsSelfAfterPost
    ExtraOptions = [moStoreResult]
    TableName = 'profissionais'
    Active = True
    Left = 496
    Top = 24
  end
end
