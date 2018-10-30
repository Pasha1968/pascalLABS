program naplusik;
//i- cтроки j- столбцы

const nmax=10;
var
    a:array[1..nmax,1..nmax] of integer;
    n,i,j:integer;
begin
  for i:=1 to nmax do begin
    n:=1;
    for j:=1 to nmax do begin
      a[1,j]:=n;
      n:=n+1;
    end;
    for j:=1 to nmax do begin
    if (j > 1) and(i > 1) then
      a[i,j]:=a[i-1,j-1];
    end;
  end;
write(a);
end.