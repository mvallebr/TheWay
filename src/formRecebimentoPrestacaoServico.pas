unit formRecebimentoPrestacaoServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, formBase;

procedure createfrmRecebimentoPrestacaoServico;

type
  TfrmRecebimentoPrestacaoServico = class(TfrmBase)
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecebimentoPrestacaoServico: TfrmRecebimentoPrestacaoServico;

implementation

{$R *.dfm}

procedure createfrmRecebimentoPrestacaoServico;
begin
   if (frmRecebimentoPrestacaoServico=nil) then
      frmRecebimentoPrestacaoServico:= TfrmRecebimentoPrestacaoServico.create(Application);
   frmRecebimentoPrestacaoServico.show;
end;

procedure TfrmRecebimentoPrestacaoServico.FormDestroy(Sender: TObject);
begin
  inherited;
    frmRecebimentoPrestacaoServico:=nil;
end;

end.
