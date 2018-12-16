Program Laba91;
//http://pascal.net.ru/GetMem

type
  Tinf=integer; {тип данных, который будет храниться в элементе стека}
  List=^TList;  {Указатель на элемент типа TList}
  TList=record {А это наименование нашего типа "запись" обычно динамические структуры описываются через запись}
    data:TInf;  {данные, хранимые в элементе}
    next:List;   {указатель на следующий элемент}
  end;
  type fail=file of integer;

{procedure AddElem(f:fail;stek1:List);
var
  tmp:List;
  a:integer;
begin
  reset(f);
  while not eof(f) do
   begin
    read(f,a);
    new(tmp); 
    tmp^.next:=stek1; 
    tmp^.data:=a; 
    stek1:=tmp; 
   end;
  close(f);  
end;}
procedure AddElem(var stek1:List;f:text);
var
  a:integer;
  tmp:List;
begin
  reset(f);
  while not eof(f) do
   begin
   readln(f,a);
   new(tmp); 
   tmp^.next:=stek1; 
   tmp^.data:=a;
   stek1:=tmp; 
   end;
  
end;

procedure vivodekr(stek1:List);
begin
  if stek1=nil then
  begin
    writeln('Стек пуст.');
    exit;
  end;
  while stek1<>nil do 
  begin  
    Write(stek1^.data, ' '); 
    stek1:=stek1^.next ;
  end;
end;

procedure Absstek(nach:list;Fileabs:text);
begin
  rewrite(Fileabs);
  while nach<>nil do 
  begin  
    Writeln(Fileabs,abs(nach^.data)); 
    Write(abs(nach^.data),' '); 
    nach:=nach^.next ;
  end;
  write('|');
  close(Fileabs);
end;

var folV:text;
    Fileabs,fol:text;
    Stk:List;

begin
assign(Fileabs,'fileabs.dat');
assign(fol,'fileforstek.dat');
//assign(folV,'filewithstekout.txt');
AddElem(Stk,fol);
Absstek(Stk,Fileabs);
vivodekr(Stk);
end.