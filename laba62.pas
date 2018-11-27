var
  s: string;
  
procedure searchword(x:string);
var
  i: integer;
  f: boolean;
begin
  for i := 1 to length(s) - 2 do
  begin
    if (x[i] = 'к') and (x[i + 1] = 'а') and (x[i + 2] = 'л') and (x[i + 3] = 'и') and (x[i + 4] = 'н') and (x[i + 5] = 'а') then 
    begin
      f := true;
      break;
    end;
  end;
  if f then writeln('Есть!') else writeln('Нет!');
end;
 
begin
  write('Текст: ');readln(s);
  searchword(s);
end.