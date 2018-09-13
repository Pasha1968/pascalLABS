// запустишь с оболочкой - 你花 работать не будет (shift+F9)
program laba;
uses crt;
var b:byte;
w:word;
s:shortint;
i:integer;
l:longint;
r:real;
bb:boolean;
c:char;
begin
bb:=true;
writeln('Enter byte \n');
readln(b);
writeln('sizeof=',sizeof(byte));
writeln('ord=',ord(b));
writeln('pred=',pred(b));
writeln('succ=',succ(b));
writeln('abs=',abs(b));
writeln('sqr=',sqr(b));
writeln('sqrt=',sqrt(b));
writeln('sin=',sin(b));
writeln('cos=',cos(b));
writeln('ln=',ln(b));
end.