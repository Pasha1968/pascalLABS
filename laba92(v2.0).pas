program laba92;
//https://wm-help.net/lib/b/book/1298783189/137#lt__1
//https://habr.com/post/247015/(js)
//Компараторы - объекты, которые позволяют сравнивать другие объекты.

type
  Tinf = Integer;
 
procedure Checkandel(var L : List<Tinf>);
begin
L := L.Distinct.ToList;
//L.Distinct.ToLinkedList;
end;
  
  
var i,n:integer;
var L := New List<Tinf>;

begin
  writeln('Сколько чисел будет всего?');
  read(n);
  while i<n do begin
  L.Add(random(5));
  i:=i+1;
  end;
  L.Println;
  Checkandel(L);
  L.Println;
end.
