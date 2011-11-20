unit formContasAReceberServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, formDBBase, Mask;

procedure createfrmContasAReceberServicos;

type
  TfrmContasAReceberServicos = class(TfrmDBBase)
    ScrollBox: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditIDComanda: TDBEdit;
    EditIDServicoPrestado: TDBEdit;
    EditValor: TDBEdit;
    EditDataVencimento: TDBEdit;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContasAReceberServicos: TfrmContasAReceberServicos;

implementation

{$R *.dfm}

procedure createfrmContasAReceberServicos;
begin
    if (frmContasAReceberServicos=nil) then
        frmContasAReceberServicos:=TfrmContasAReceberServicos.Create(Application);
    frmContasAReceberServicos.Show;
end;

procedure TfrmContasAReceberServicos.FormDestroy(Sender: TObject);
begin
  inherited;
    frmContasAReceberServicos:=nil;
end;

end.
