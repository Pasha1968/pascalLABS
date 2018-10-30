program laba41;
  //18.Є квадратна матриця А порядку n і вектор b з n елементами. Одержати
  //вектор Аb.
  
const nmax=50;
var
    a:array[1..nmax,1..nmax] of integer;
    b,ab:array[1..nmax] of integer;
    n,i,j:integer;
begin
  repeat
  write('Порядок матриц до ',nmax,' n=');
  readln(n);
  until n in [1..nmax];
  writeln('A:');
  for i:=1 to n do
  begin
   for j:=1 to n do
    begin
      a[i,j]:=random(1000);
      write(a[i,j]:5);
    end;
   writeln;
  end;
  writeln('B:');
  for i:=1 to n do
    begin
      b[i]:=random(10);
      writeln(b[i]);
    end;
  for i:=1 to n do
    begin
      ab[i]:=0;
      for j:=1 to n do
      ab[i]:=ab[i]+a[i,j]*b[j];
    end;
  writeln('Ab:');
  for i:=1 to n do
  writeln(ab[i]);
end.