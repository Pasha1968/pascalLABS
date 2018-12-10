program laba61;
{Є інформація про студентів радіофізичного факультету, подана в
такому виді:
<прізвище>,<ім'я>,<по-батькові>,<стать>,<вік>,<курс>
Скласти програму з процедурами, яка вводить цю інформацію та друкує
такі дані:
18.Прізвища (в алфавітному порядку) та ініціали тих студенток, вік яких є одночасно
найпоширенішими.}

//uses fgl;


//type TMap = specialize TFPGMap<Byte, Byte>;


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
    usegostud:byte;

procedure EnterData(x:array of studentdata);
var i:byte;
    count:byte;
    bufStudent: studentdata;
    student:array of studentdata;
begin
  writeln('skolko studentov?');
  readln(i);
  setLength(student, i);
  for count:=0 to i - 1 do
  begin
    writeln('enter Name');
    readln(bufStudent.Name);
    writeln('enter surname');
    readln(bufStudent.surname);
    writeln('enter patronymic');
    readln(bufStudent.patronymic);
    writeln('enter sex M or F');
    readln(bufStudent.sex);
    if bufStudent.sex <> 'F' then
      begin
       if bufStudent.sex <> 'M' then
        begin
          writeln('ERROR there are only 2 genders M or F');
          break;
        end;
      end;
    writeln('enter age');
    readln(bufStudent.age);
    writeln('enter course');
    readln(bufStudent.course);
    student[count] := bufStudent;
    //bufStudent:=nil;
  end;
  x:=student;
  usegostud:=i;
end;


procedure filtr(x:array of studentdata);
var i:byte;
    mass:array[1..2,byte] of integer;
    //x:TMap;
    
begin 
    for i:=0 to usegostud do
      begin
        
      end;
end;

begin
  EnterData(student);
  print();
end.