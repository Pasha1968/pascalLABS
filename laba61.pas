program laba61;
{Є інформація про студентів радіофізичного факультету, подана в
такому виді:
<прізвище>,<ім'я>,<по-батькові>,<стать>,<вік>,<курс>
Скласти програму з процедурами, яка вводить цю інформацію та друкує
такі дані:
18.Прізвища (в алфавітному порядку) та ініціали тих студенток, вік яких є одночасно
найпоширенішими.}

type studentdata=record
  Name:string;
  surname:string;
  patronymic:string;
  sex:char;
  age:byte;
  course:1..5;
end;
var student:array of studentdata;
    x:array of studentdata;

procedure EnterData(x:array of studentdata);
var i:byte;
    count:byte;
    student:array of studentdata;
begin
  writeln('skolko studentov?');
  readln(i);
  for count:=1 to i do
  begin
    writeln('enter Name');
    readln(student[i].Name);
    writeln('enter surname');
    readln(student[i].surname);
    writeln('enter patronymic');
    readln(student[i].patronymic);
    writeln('enter sex M or F');
    readln(student[i].sex);
    if student[i].sex <> 'F' then
      begin
       if student[i].sex <> 'M' then
        begin
          writeln('ERROR there are only 2 genders M or F');
          break;
        end;
      end;
    writeln('enter age');
    readln(student[i].age);
    writeln('enter course');
    readln(student[i].course);
  end;
  x:=student;
end;

begin
  EnterData(x);
end.