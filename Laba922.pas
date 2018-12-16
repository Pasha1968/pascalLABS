type
  Tinf=integer;
  List=^TList;  
  TList=record
    data:TInf;  
    next:List;
  end;
 
 
procedure Checkandel(head: List );
var cur,Vsp: List;
    x:List;
begin
 while head<>nil do
  begin
   cur:=head;
   while cur<>nil do
    begin
      if (cur^.data=head^.data) and (cur<>head) then
       begin
        writeln('True');
        {Vsp := head^.Next;
        head^.Next := head^.Next^.Next;
        X := Vsp^.next;
        Dispose(Vsp);}
       end;
      cur:=cur^.next;
    end;
   head:=head^.next;
  end;
 writeln('False');
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

 
var
  Stk,Stk2:List;
  znach:Tinf;
  head:List;
 
begin
    Add(Stk, znach);
   // Add(Stk2, znach);
    Print(Stk);
    Checkandel(Stk);
 end.