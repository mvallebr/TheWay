unit DM_main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, DBXpress, SqlExpr, ZConnect, ZMySqlCon, ZTransact, ZMySqlTr,
  QuickRpt, unitTheWayUtils;

type
  TDMMain = class(TDataModule)
    Database: TZMySqlDatabase;
    Transaction: TZMySqlTransact;
    procedure DMMainCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    options:    TOptions;
  end;

var
  DMMain: TDMMain;

implementation

{$R *.DFM}

procedure TDMMain.DMMainCreate(Sender: TObject);
var
  I: Integer;
  Temp: TComponent;
begin
    //Carrega opções
    options:=TOptions.Create;
    options.setDefault;
    options.Load;

    //Conecta à database
    try
        Database.Connected := False;
        Database.Database := options.dbname;
        Database.Host := options.ip_dbserver;
        Database.Port := IntToStr(options.port_dbServer);
        Database.Login := options.dblogin;
        Database.Password := options.dbpasswd;
        Database.Connected := True;
    except
        beep;
        ShowMessage('ATENÇÃO: Não foi possível conectar ao banco de dados! Verifique as configurações na configuração geral.');
        exit;
    end;

    for I := ComponentCount - 1 downto 0 do
    begin
    Temp := Components[I];
        if  (Temp is TDBDataset) then begin
            TDBDataset(Temp).active := true;
        end;
    end;
    processaContasAReceber;
end;

procedure TDMMain.DataModuleDestroy(Sender: TObject);
begin
    options.Save;
end;

end.
