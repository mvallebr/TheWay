unit formPagamentoServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, StdCtrls;


procedure createfrmPagamentoServico;

type
  TfrmPagamentoServico = class(TfrmBase)
    Memo1: TMemo;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPagamentoServico: TfrmPagamentoServico;

implementation

{$R *.dfm}

procedure createfrmPagamentoServico;
begin
   if (frmPagamentoServico=nil) then
      frmPagamentoServico:=TfrmPagamentoServico.Create(Application);
   frmPagamentoServico.show;
end;

procedure TfrmPagamentoServico.FormDestroy(Sender: TObject);
begin
  inherited;
    frmPagamentoServico:=nil;
end;

end.



