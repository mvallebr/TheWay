unit TWReg;

interface

uses classes;

procedure Register;

implementation

uses TWDBRel, TWFloatEdit;

procedure Register;
begin
  RegisterComponents('TheWay', [TTWDBRel]);
end;

end.
 