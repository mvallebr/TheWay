object frmMain: TfrmMain
  Left = 186
  Top = 159
  Width = 696
  Height = 480
  Caption = 'DataBase Converter'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 185
    Top = 0
    Width = 4
    Height = 434
    Cursor = crHSplit
  end
  object Memo1: TMemo
    Left = 189
    Top = 0
    Width = 499
    Height = 434
    Align = alClient
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 434
    Align = alLeft
    TabOrder = 1
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 183
      Height = 40
      Align = alTop
      AutoSize = False
      Caption = 'Escolha o diret'#243'rio onde se encontram os dados:'
      WordWrap = True
    end
    object Splitter2: TSplitter
      Left = 1
      Top = 276
      Width = 183
      Height = 4
      Cursor = crVSplit
      Align = alBottom
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 1
      Top = 41
      Width = 183
      Height = 235
      Align = alClient
      FileList = FileListBox1
      ItemHeight = 16
      TabOrder = 0
    end
    object FileListBox1: TFileListBox
      Left = 1
      Top = 280
      Width = 183
      Height = 153
      Align = alBottom
      ItemHeight = 16
      Mask = '*.db'
      TabOrder = 1
    end
  end
  object Table1: TTable
    DatabaseName = 'DBTheWay'
    Left = 520
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 560
    Top = 56
  end
  object MainMenu1: TMainMenu
    Left = 64
    Top = 104
    object File1: TMenuItem
      Caption = '&File'
      object Convert1: TMenuItem
        Caption = '&Convert'
        OnClick = Convert1Click
      end
      object Save1: TMenuItem
        Caption = '&Save'
        OnClick = Save1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'E&xit'
        OnClick = Exit1Click
      end
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = '*.sql'
    Filter = 'Arquivo MySql|*.sql|Todos os arquivos|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Title = 'Salvar arquivo DUMP'
    Left = 224
    Top = 152
  end
end
