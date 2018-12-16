type
  Tinf=integer;
  List=^TList;  
  TList=record
    data:TInf;  
    next:List;  
  end;
 
 
 
function enter(stek1,stek2:List):Boolean;
var Eelem:integer;
    Elem1, End2:List;
begin
  print('После какого елемента вставляем?');
  read(Eelem);
  enter:=false;
  if stek2 = nil then Exit;
  End2 := stek2;
  while End2^.Next <> nil do End2 := End2^.next;
  Elem1 := stek1;
  while (Elem1 <> nil) and (Elem1^.data <> Eelem) do Elem1 := Elem1^.next;
  if Elem1 <> nil then begin
    End2^.next := Elem1^.next;
    Elem1^.next := stek2;
    enter := True;
  end;
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
  Stk,Stk2:List;
  znach:Tinf;
 
begin
    Add(Stk, znach);
    Add(Stk2, znach);
    Print(Stk);
    write('|');
    Print(Stk2);
    println();
    print(enter(Stk,Stk2));
    Print(Stk);
 end.