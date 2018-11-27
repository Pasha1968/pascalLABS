program laba52;

//type mass=array[0..19,0..19] of integer;
var t:integer;
function MatrInit20:array of integer;
  var Massiv:array[0..19,0..19] of integer;
  j,i:integer;
  begin
  i:=0;
  j:=0;
  while i < 20 do
    begin
      while j < 20 do
        begin
          Massiv[i,j]:=random(10);
          j:=j+1;
          MatrInit20[i]:=Massiv[i,j];
        end;
       i:=i+1;
    end;
  end;
function massiv20init:array of integer;
  var Massiv:array[0..19] of integer;
  x:integer;
  begin
  x:=0;
    while x < 20 do
    begin
      Massiv[x]:=random(10);
      x:=x+1;
    end;
  end;
    
begin
  
  print(MatrInit20);
  println();
  println('------------');
end.