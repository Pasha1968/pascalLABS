Program laba3333;
// обчислить y = 1! + 2! + 3 !...n! Портянка
var
  answer,factorial: longint;
  n, i: word;
begin
  write('n = '); readln(n);
  i:=1;
  factorial := 1;
  repeat
      factorial:=factorial*i;
      answer:=answer+factorial;
      i:=i+1;
  until i > n;
  answer:=answer-1;
  writeln('answer ',answer );
end.