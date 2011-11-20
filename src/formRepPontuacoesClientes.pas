unit formRepPontuacoesClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formReportBase, DB, ZQuery, ZMySqlQuery, QuickRpt, ExtCtrls,
  StdCtrls, QRCtrls;

procedure createfrmRepPontuacoesClientes;

type
  TfrmRepPontuacoesClientes = class(TfrmReportBase)
    Label1: TLabel;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRepPontuacoesClientes: TfrmRepPontuacoesClientes;

implementation

{$R *.dfm}

procedure createfrmRepPontuacoesClientes;
begin
    if frmRepPontuacoesClientes=nil then
        frmRepPontuacoesClientes:= TfrmRepPontuacoesClientes.Create(Application);
    frmRepPontuacoesClientes.Visible:=false;
    frmRepPontuacoesClientes.dtsSelf.Active := true;
    if not frmRepPontuacoesClientes.dtsSelf.IsEmpty then begin
        frmRepPontuacoesClientes.QuickRep1.Preview;
    end else begin
        beep;
        ShowMessage('Nenhum cliente cadastrado tem pontuação! O relatório não será exibido.');
    end;
    frmRepPontuacoesClientes.Release;
end;

end.
