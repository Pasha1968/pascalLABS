program laba53;
var
  x:real;

function Sinus(x:real):real;
begin
  Sinus:=sin(x);
end;
function Cosinus(x:real):real;
begin
  Cosinus:=cos(x);
end;
procedure Print();
begin
  writeln('cosx/sinx=',Cosinus/Sinus);
end;

procedure Print2();
begin
  writeln('cosx*sinx=',cos(x)*sin(x));
end;

begin
  writeln('vvedi x');
   read(x);
  writeln(Sinus(x));
  writeln(Cosinus(x));
  Print;
  Print2;
end.