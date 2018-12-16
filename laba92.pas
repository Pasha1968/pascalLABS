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
  if stek1=nil then
  begin
    writeln('Стек пуст.');
    exit;
  end;
  while stek1<>nil do
  begin  
    Write(stek1^.data, ' ');
    stek1:=stek1^.next  
  end;
  end;
 
 
 Procedure delete(var first, second:List);
 Var p1,p2,p3:List;
 begin
  p1:=first;
  while p1<>nil do
  begin
     p2:=p1^.next;
     while (p2<>nil) do
        if p1^.data<>p2^.data then
        begin
        p2:=p2^.next;
        end
        else
        begin
           p3:=first;
           while p3^.next<>p2 do
                p3:=p3^.next;
           p3^.next:=p2^.next;
           dispose(p2);
           p2:=p3^.next;
        end;
     p1:=p1^.next;
  end;
  end;
 
 
var
  Stk,Stk2:List;
  znach:Tinf;
 
begin
    Add(Stk, znach);
    Print(Stk);
    Add(Stk2, znach);
    Print(Stk2);
    delete(Stk, Stk2);
    Writeln;
    Print(Stk);
    Writeln;
    Print(Stk2);
 end.