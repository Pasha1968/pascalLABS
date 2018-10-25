Program laba333;
// обчислить y = 1! + 2! + 3 !...n! Портянка
var
  answer,factorial: longint;
  n, i: word;
begin
  write('n = '); readln(n);
  factorial := 1;
  while i<n do
    begin
      i:=i+1;
      factorial:=factorial*i;
      answer:=answer+factorial;
    end;
  answer:=answer-1;
  writeln('answer ',answer );
end.