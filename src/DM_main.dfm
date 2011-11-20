object DMMain: TDMMain
  OldCreateOrder = False
  OnCreate = DMMainCreate
  OnDestroy = DataModuleDestroy
  Left = 385
  Top = 157
  Height = 236
  Width = 364
  object Database: TZMySqlDatabase
    Host = '192.168.1.2'
    Port = '3306'
    Database = 'TheWay'
    Encoding = etNone
    Login = 'dbadmin'
    Password = 'dbtheway'
    LoginPrompt = False
    Connected = True
    Left = 24
    Top = 8
  end
  object Transaction: TZMySqlTransact
    Options = [toHourGlass]
    AutoCommit = True
    Database = Database
    TransactSafe = False
    Left = 80
    Top = 8
  end
end
