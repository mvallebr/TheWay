unit formFormaPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, formDBBase, TWDBRel, Mask;

procedure createfrmFormaPagamento;

type
  TfrmFormaPagamento = class(TfrmDBDetailBase)
    dtsSelfIDFormaPagamento: TIntegerField;
    dtsSelfDescricao: TStringField;
    Label2: TLabel;
    Label3: TLabel;
    DBText2: TDBText;
    TabSheet1: TTabSheet;
    TWDBRel1: TTWDBRel;
    edtDescricao: TDBEdit;
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dtsSelfAfterInsert(DataSet: TDataSet);
    procedure dtsSelfAfterPost(DataSet: TDataSet);
    procedure dtsSelfAfterCancel(DataSet: TDataSet);
    procedure dtsSelfAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormaPagamento: TfrmFormaPagamento;

implementation

{$R *.dfm}

procedure createfrmFormaPagamento;
begin
    if (frmFormaPagamento=nil) then
        frmFormaPagamento:=TfrmFormaPagamento.Create(Application);
    frmFormaPagamento.Show;
end;

procedure TfrmFormaPagamento.FormDestroy(Sender: TObject);
begin
  inherited;
    frmFormaPagamento:=nil;
end;

procedure TfrmFormaPagamento.FormActivate(Sender: TObject);
begin
  inherited;
    TWDBRel1.Active := true;
end;

procedure TfrmFormaPagamento.dtsSelfAfterInsert(DataSet: TDataSet);
begin
  inherited;
    TWDBRel1.Enabled := false;
    edtDescricao.SetFocus;
end;

procedure TfrmFormaPagamento.dtsSelfAfterPost(DataSet: TDataSet);
begin
  inherited;
    TWDBRel1.Enabled := True;
end;

procedure TfrmFormaPagamento.dtsSelfAfterCancel(DataSet: TDataSet);
begin
  inherited;
    TWDBRel1.Enabled := True;
end;

procedure TfrmFormaPagamento.dtsSelfAfterEdit(DataSet: TDataSet);
begin
  inherited;
    edtDescricao.SetFocus;
end;

end.
