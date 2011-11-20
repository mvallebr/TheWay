unit formLojas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  formDBBase, Db, StdCtrls, DBCtrls, Mask, DBTables, ImgList, FiltrDlg,
  ExtCtrls, ComCtrls, ToolWin, Grids, DBGrids, ZQuery, ZMySqlQuery,
  ZTransact, ZMySqlTr;

procedure createFrmLojas;

type
  TfrmLojas = class(TfrmDBBase)
    ScrollBox: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    EditDescricao: TDBEdit;
    EditEndereco: TDBEdit;
    EditCidade: TDBEdit;
    EditEstado: TDBEdit;
    EditPais: TDBEdit;
    EditCEP: TDBEdit;
    EditTelefone: TDBEdit;
    EditTelefone2: TDBEdit;
    EditFax: TDBEdit;
    EditEmail: TDBEdit;
    EditCGC: TDBEdit;
    DBMemo1: TDBMemo;
    dtsSelfIDLoja: TIntegerField;
    dtsSelfDescricao: TStringField;
    dtsSelfEndereco: TStringField;
    dtsSelfCidade: TStringField;
    dtsSelfEstado: TStringField;
    dtsSelfPais: TStringField;
    dtsSelfCEP: TStringField;
    dtsSelfTelefone1: TStringField;
    dtsSelfTelefone2: TStringField;
    dtsSelfFax: TStringField;
    dtsSelfEmail: TStringField;
    dtsSelfCGC: TStringField;
    dtsSelfOBS: TMemoField;
    procedure FormDestroy(Sender: TObject);
    procedure dtsSelfAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLojas: TfrmLojas;

implementation

{$R *.DFM}

procedure createFrmLojas;
begin
     if (frmLojas=nil) then
        frmLojas := TfrmLojas.create(Application);
     frmLojas.Show;
end;

procedure TfrmLojas.FormDestroy(Sender: TObject);
begin
  inherited;
  frmLojas:=nil;
end;

procedure TfrmLojas.dtsSelfAfterPost(DataSet: TDataSet);
begin
  inherited;
    dtsSelf.ApplyUpdates;
end;

end.
