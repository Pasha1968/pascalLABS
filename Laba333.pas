Program laba333;
// ��������� y = 1! + 2! + 3 !...n! ��������
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