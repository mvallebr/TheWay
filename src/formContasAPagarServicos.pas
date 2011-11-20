unit formContasAPagarServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formDBDetailBase, ZTransact, ZMySqlTr, DB, ZQuery, ZMySqlQuery,
  FiltrDlg, ImgList, Grids, DBGrids, ComCtrls, dbcgrids, StdCtrls,
  ExtCtrls, DBCtrls, ToolWin, formDBBase, Mask;

procedure createfrmContasAPagarServicos;

type
  TfrmContasAPagarServicos = class(TfrmDBBase)
    ScrollBox: TScrollBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EditIDServicoTerceirizado: TDBEdit;
    EditIDContratacao: TDBEdit;
    EditValor: TDBEdit;
    EditDataVencimento: TDBEdit;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContasAPagarServicos: TfrmContasAPagarServicos;

implementation

{$R *.dfm}

procedure createfrmContasAPagarServicos;
begin
    if (frmContasAPagarServicos=nil) then
        frmContasAPagarServicos:=TfrmContasAPagarServicos.Create(Application);
    frmContasAPagarServicos.Show;
end;

procedure TfrmContasAPagarServicos.FormDestroy(Sender: TObject);
begin
  inherited;
    frmContasAPagarServicos:=nil;
end;

end.
