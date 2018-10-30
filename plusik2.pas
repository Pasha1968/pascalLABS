program naplusik;

const nmax=10;
var
    a:array[1..nmax,1..nmax] of integer;
    n,i,j:integer;
begin
  for i:=1 to nmax do begin
    for j:=1 to nmax do begin
      if i=j then 
        begin
          a[i,j]:=n;
          n:=n+1;
        end;
      write(a[i,j]:2);
    end;
    writeln
  end;
write(a);
end.