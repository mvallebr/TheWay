unit formCrachasComandas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formReportBase, DB, ZQuery, ZMySqlQuery, QuickRpt, ExtCtrls,
  QRCtrls, qrBarcode, StdCtrls;

procedure createfrmCrachasComandas;

type
  TfrmCrachasComandas = class(TfrmReportBase)
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRAsBarcode1: TQRAsBarcode;
    QRLabel4: TQRLabel;
    Button1: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dtsSelfAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCrachasComandas: TfrmCrachasComandas;

implementation

{$R *.dfm}

procedure createfrmCrachasComandas;
begin
    if frmCrachasComandas=nil then
        frmCrachasComandas:= TfrmCrachasComandas.Create(Application);
    frmCrachasComandas.Visible:=false;
    frmCrachasComandas.QuickRep1.Preview;
    frmCrachasComandas.Release;
end;

procedure TfrmCrachasComandas.FormDestroy(Sender: TObject);
begin
  inherited;
    frmCrachasComandas:=nil;
end;

procedure TfrmCrachasComandas.Button1Click(Sender: TObject);
begin
  inherited;
    QuickRep1.Preview;
end;

procedure TfrmCrachasComandas.dtsSelfAfterScroll(DataSet: TDataSet);
begin
  inherited;
  try
    QRAsBarcode1.Text := dtsSelf.FieldByName('TextoCodBarras').AsString;
  except
    beep;
  end;
end;

end.
