inherited frmDBDetailWithCategory: TfrmDBDetailWithCategory
  Caption = 'frmDBDetailWithCategory'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pgctl: TPageControl
    object tabCategory: TTabSheet [0]
      Caption = 'Categorias'
      ImageIndex = 2
      TabVisible = False
      object DBGrid1: TDBGrid
        Left = 0
        Top = 25
        Width = 492
        Height = 397
        Align = alClient
        DataSource = srcCategory
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBNavigator2: TDBNavigator
        Left = 0
        Top = 0
        Width = 492
        Height = 25
        DataSource = srcCategory
        Align = alTop
        TabOrder = 1
      end
    end
  end
  object dtsCategory: TZMySqlTable
    Database = DMMain.Database
    Transaction = DMMain.Transaction
    CachedUpdates = False
    ShowRecordTypes = [ztModified, ztInserted, ztUnmodified]
    Options = [doHourGlass, doAutoFillDefs, doUseRowId]
    LinkOptions = [loAlwaysResync]
    Constraints = <>
    AfterPost = dtsCategoryAfterPost
    ExtraOptions = [moStoreResult]
    Left = 488
    Top = 16
  end
  object srcCategory: TDataSource
    DataSet = dtsCategory
    Left = 488
    Top = 48
  end
end
