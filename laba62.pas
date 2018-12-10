program laba62;

{*18.Є текст - рядок, що складається зі слів, пропусків і розділювальних знаків та завершується
крапкою. Визначити, чи зустрічається в рядку слово калина, якщо так, то надрукувати
його великими буквами.*}

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
  if f then writeln('Есть слово "КАЛИНА"!') else writeln('Нет слова "калина"!');
end;
 
begin
  write('Текст: ');readln(s);
  searchword(s);
end.