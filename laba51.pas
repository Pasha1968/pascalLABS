program laba51;
  
const 
      N=10;
      M=10;
var
    b,v,i,j:integer;
    mat1,mat2:array[1..N,1..M] of integer;
   
procedure NewMatr ();
  var
    r,u,y:integer;
begin
    For u:=1 to b do begin
      for r:=1 to b do begin
        if mat2[u,u] >= mat2[u,r] then
          mat1[u,r]:=1
        else mat1[u,r] := 0;
      end;
    end;
end;


begin
  writeln('enter N and M (max 10)');
  readln(b,v);
  For i:=1 to b do begin
    For j:=1 to v do begin
        mat2[i,j]:=random(100);
      NewMatr;  
    end;
  end;
write (mat2);
writeln();
writeln('------');
writeln();
write (mat1);
end.