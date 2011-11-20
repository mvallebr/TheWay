unit formReportBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, DB, ZQuery, ZMySqlQuery, QuickRpt, ExtCtrls;

type
  TfrmReportBase = class(TfrmBase)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    srcSelf: TDataSource;
    dtsSelf: TZMySqlQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportBase: TfrmReportBase;

implementation

{$R *.dfm}

uses DM_Main;

end.
