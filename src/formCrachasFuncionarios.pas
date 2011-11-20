unit formCrachasFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formReportBase, DB, ZQuery, ZMySqlQuery, QuickRpt, ExtCtrls,
  QRCtrls, qrBarcode, StdCtrls;

procedure createfrmCrachasFuncionarios;

type
  TfrmCrachasFuncionarios = class(TfrmReportBase)
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRAsBarcode1: TQRAsBarcode;
    QRLabel4: TQRLabel;
    Button1: TButton;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dtsSelfAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCrachasFuncionarios: TfrmCrachasFuncionarios;

implementation

{$R *.dfm}

procedure createfrmCrachasFuncionarios;
begin
    if frmCrachasFuncionarios=nil then
        frmCrachasFuncionarios:= TfrmCrachasFuncionarios.Create(Application);
    frmCrachasFuncionarios.Visible:=false;
    frmCrachasFuncionarios.QuickRep1.Preview;
    frmCrachasFuncionarios.Release;
end;

procedure TfrmCrachasFuncionarios.FormDestroy(Sender: TObject);
begin
  inherited;
    frmCrachasFuncionarios:=nil;
end;

procedure TfrmCrachasFuncionarios.Button1Click(Sender: TObject);
begin
  inherited;
    QuickRep1.Preview;
end;

procedure TfrmCrachasFuncionarios.dtsSelfAfterScroll(DataSet: TDataSet);
var
    idprof: integer;
begin
  inherited;
  idprof:=dtsSelf.FieldByName('IDProfissional').AsInteger;
  try
    QRAsBarcode1.Text := '20'+format('%.11d', [idprof]);
  except
    beep;
  end;
end;

end.
