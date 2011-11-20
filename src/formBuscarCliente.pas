unit formBuscarCliente;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, ZMySqlQuery, DB, ZQuery, Grids, DBGrids,
  formBase, DM_Main;

type
  TfrmBuscarCliente = class(TfrmBase)
    Button1: TButton;
    Button2: TButton;
    srcSelf: TDataSource;
    dtsSelf: TZMySqlTable;
    DBGrid1: TDBGrid;
    edtBusca: TEdit;
    procedure edtBuscaChange(Sender: TObject);
    procedure edtBuscaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  end;

var
  frmBuscarCliente: TfrmBuscarCliente;

implementation

{$R *.DFM}

procedure TfrmBuscarCliente.edtBuscaChange(Sender: TObject);
begin
    dtsSelf.Filtered := not (trim(edtBusca.Text)='');
    dtsSelf.Filter := 'Nome like"'+trim(edtBusca.Text)+'*"';
    if not dtsSelf.Filtered then dtsSelf.Refresh;
end;

procedure TfrmBuscarCliente.edtBuscaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if key = VK_UP then dtsSelf.Prior;
    if key = VK_DOWN then dtsSelf.Next;
    if key = VK_PRIOR then dtsSelf.MoveBy(-5);
    if key = VK_NEXT then dtsSelf.MoveBy(5);
    if key = VK_HOME then dtsSelf.First;
    if key = VK_END then dtsSelf.Last;

end;

procedure TfrmBuscarCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    action:=caHide;
end;

end.
