program cosprib;
//Портянка

Var
 res,fact,x,eps:real;
 i,n,m,j:integer;
begin
  j:=1;
  m:=1;
  res:=1;
  write('x,n: ');
  readln(x,n);
  while i <> n do
  begin
    fact:=1;
    eps:=1;
    while j < i*2 do
    begin
       fact:=fact*j;
       eps:=eps*x;
       j:=j+1;
    end;
    m:=-m;
    res:=res+(m*(eps/fact));
    i:=i+1;
  end;
writeln('cos:=',res);
end.