Program laba33;
// ��������� y = 1! + 2! + 3 !...n! ��������
var
  answer,factorial: longint;
  n, i: word;
begin
  write('n = '); readln(n);
  factorial := 1;
  for i:=2 to n do
    begin
      factorial := factorial * i;
      answer:=answer+factorial;
    end;
  writeln('answer = ', answer);
end.