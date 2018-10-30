program naplusik;
//i- cтроки j- столбцы

const nmax=10;
var
    a:array[1..nmax,1..nmax] of integer;
    n,i,j:integer;
begin
  for i:=1 to nmax do begin
    for j:=1 to nmax do begin
      if i=j then 
        begin
          a[i,j]:=1;
        end;
      if (j > 1) then
        begin
          a[i,j]:=a[i,j-1]+1;
        end;
      if (i > 1) then
        begin
          a[i,j]:=a[i-1,j]+1;
        end;
    end;
  end;
   for i:=1 to nmax do begin
    for j:=1 to nmax do begin
      if (a[i,j] > 10) then
        begin
          a[i,j]:=0;
        end;
    end;
   end;
  write(a);
end.