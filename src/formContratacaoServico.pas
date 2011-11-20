unit formContratacaoServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase, StdCtrls;


procedure createfrmContratacaoServico;

type
  TfrmContratacaoServico = class(TfrmBase)
    Memo1: TMemo;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContratacaoServico: TfrmContratacaoServico;

implementation

{$R *.dfm}

procedure createfrmContratacaoServico;
begin
   if (frmContratacaoServico=nil) then
      frmContratacaoServico:= TfrmContratacaoServico.create(Application);
end;

procedure TfrmContratacaoServico.FormDestroy(Sender: TObject);
begin
  inherited;
    frmContratacaoServico:=nil;
end;

end.
