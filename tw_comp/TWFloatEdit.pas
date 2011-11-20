unit TWFloatEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, StdCtrls;

type
  TTWFloatEdit = class(TCustomEdit)
      procedure EditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure EditKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
      procedure EditChange(Sender: TObject);
      constructor Create(Owner: TComponent); override;
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    function getFloat: Real;
  end;

//procedure Register;

implementation

uses Qt, QDialogs;

(*procedure Register;
begin
  RegisterComponents('TheWay', [TTWFloatEdit]);
end;
  *)
constructor TTWFloatEdit.Create(Owner: TComponent);
begin
    inherited Create(Owner);
    OnKeyDown:=EditKeyDown;
    OnKeyUp  :=EditKeyUp;
    OnChange :=EditChange;
    AutoSelect:=true;
    //Alignment := taRightJustify;
end;

procedure TTWFloatEdit.EditChange(Sender: TObject);
begin
    SelStart:=0;
end;

procedure TTWFloatEdit.EditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    SelStart:=0;
//    Key:=0;
end;

procedure TTWFloatEdit.EditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
(*var
    i:  integer;
    ss,sl: integer;*)
begin
    SelStart:=0;
(*  ss:=SelStart;
  sl:=SelLength;
  case key of
   Key_0..Key_9: begin
   end;
   Key_Comma: begin
    if length(text)=0 then
        if CanUndo then Undo;
    //Verifica se j� h� uma v�rgula digitada.
    for i := 1 to length(text) do begin
        if text[i]=',' then
            if CanUndo then Undo;
    end;
   end;
   else begin
    if CanUndo then Undo;
    if ss>=length(text) then SelStart:=length(text)-1 else SelStart:=ss;
    SelLength:=sl;
   end;
  end;
  ClearUndo;
  *)
end;

function TTWFloatEdit.getFloat: Real;
var
    i: integer;
    texto:  string;
begin
    texto:=text;
    for i := 1 to length(texto) do begin
        if texto[i]=',' then texto[i]:='.';
    end;
    Result:=StrToFloat(texto);
end;

end.
