program laba52;
{18.Є дійсні числа a1, a2,... a20, цілочисельна матриця порядку 20. Ті елементи з парною
сумою індексів, що є серед a1, a2,... a20, замінити на нуль.}

type
  doubleArrayOfInteger = array[1..20,1..20] of Integer;
  ArrayOfInteger = array[1..20] of Integer;
  
  
var
  n,i,j:byte;
  mass:ArrayOfInteger;
  matr2,matr:doubleArrayOfInteger; 
  
function newmatr (matrin:doubleArrayOfInteger;massin:ArrayOfInteger):doubleArrayOfInteger;
var n,j,i:byte;

begin
  for i:=1 to 20 do
  begin
    for j:=1 to 20 do
    begin
      for n:=1 to 20 do 
      if matrin[i,j] = massin[n] then
      begin
        matrin[i,j]:=0;
      end;
      print(matrin[i,j]);
    end;
    println();
  end;
end;



begin
  for i:=1 to 20 do
  begin
    for j:=1 to 20 do
    begin
    matr[i,j]:=random(10);
    print(matr[i,j]);
    end;
    println();
  end;
  println('==================================');
  
  for n:=1 to 20 do 
  begin
    mass[n]:=random(10);
  end;
  println(mass);
  println('==================================');
  matr2:=newmatr(matr,mass);
end.