program laba7;
//18.Скласти програму, яка переписує двовимірний масив у файл. Розміри масива задає
//користувач.

const m = 20;
      n = 20;
var f:text;
    i,j: integer;
    nmax:integer;
    arr:array[1..m,1..n] of integer;
begin
  assign(f,'massiv.txt');
  rewrite(f);
  writeln('kakoi massiv sohranim v fail (do 20x20)');
  readln(nmax);
  for i := 1 to nmax do
    begin
      for j := 1 to nmax do
        begin
          arr[i,j]:=random(10);
          write(arr[i,j]:2);
          Write (f, arr[i,j]:2);
        end;
      Writeln (f);
      writeln;
    end;
  writeln ('------------');
  close(f);
end.