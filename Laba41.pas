program laba41;
//Портянка задаются 2 массива Х и У ,складіваем их ячейки и у тот, у кого сумма меньше-обнуляем
var 
  X,Y,zero:array [1..10] of real;
 { Y:array [1..10] of integer;
  zero:array[1..10] of integer;}
  sum1,sum2:real;
  count:integer;
begin
count:=1;
  while count <= 10 do 
    begin
      zero[count]:=0;
      X[count]:= random(1000);
      Y[count]:= random(1000);
      sum1:=X[count]+sum1;
      sum2:=Y[count]+sum2;
      count:=count+1;
    end;
    writeln(sum1,' ',sum2);
    if sum1>sum2 then 
      begin
        Y:=zero;
      end;
    if sum1<sum2 then 
      begin
        X:=zero;
      end;
    writeln(X,Y)
end.
