program laba53;
var
  cxs,cns,x:real;

function Sinus(x:real):real;
begin
  Sinus:=sin(x);
end;
function Cosinus(x:real):real;
begin
  Cosinus:=cos(x);
end;
procedure CosxSin();
var x:real;
begin
  x:=Cosinus(x)*Sinus(x);
  print(x);
end;
procedure CosnaSin();
var x:real;
begin
  x:=Cosinus(x)/Sinus(x);
end;
begin
  writeln('vvedi x');
   read(x);
  println(Sinus(x));
  println(Cosinus(x));
  {cxs:=Cosinus(x)*Sinus(x);
  cns:=Cosinus(x)/Sinus(x);
  print('cosx*sinx=',cxs,' ','cos(x)/sin(x)=',cns);}
  CosxSin();
  CosnaSin();
  println();
  println('----------');
end.