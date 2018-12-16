type
  Tinf=integer;
  List=^TList;  
  TList=record
    data:TInf;  
    next:List;  
  end;
 
procedure Add(var stek1:List;znach1:TInf);
var
  tmp:List;
  i,n:integer;
 
begin
writeln(' Введите количество элементов списка');
readln(n);
for i:=1 to n do
begin
  new(tmp);
  tmp^.next:=stek1;  
  readln(znach1);
  tmp^.data:=znach1;
  stek1:=tmp;
end;
end;
 
 
procedure Print(stek1:List);
begin
  while stek1<>nil do
  begin  
    Write(stek1^.data, ' ');
    stek1:=stek1^.next  
  end;
end;

 
var
  Stk:List;
  znach:Tinf;
 
begin
    Add(Stk, znach);
    Print(Stk);
 end.