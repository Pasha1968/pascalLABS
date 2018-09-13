const
digit = 1000;
RealConst = 3.14; 
SymbolConst = '@'; 
EscKey =#27; 
StringConst = 'section of constant';
BoolConst = false;

year:integer = 2504;
price:real = 250.56;
answer:char = 'y';
bell:char = #7;


NumericalExpression = 976+453;
StringExpression = 'Turbo'+'Pascal';
BoolExpression = 5 and 3;
ReferExpression = digit < NumericalExpression;
var
i:integer;
a:integer;
begin
writeln('Constant expression demo');
writeln('=============================');
writeln(5);
writeln('digit=',digit);
writeln('EscKey=',EscKey);
writeln('Typed const year=',year);
writeln('Control symbol bell=',bell);
writeln ('NumericalExpression 976+453=', NumericalExpression);
writeln ('StringExpression:''Turbo''+''Pascal''=',StringExpression);
writeln ('BoolExpression: 5 and 3=' ,BoolExpression);
write ('ReferExpression:digit<NumericalExpression=',ReferExpression);
writeln('=============================');
writeln;
write ('Enter integer:');
readln (i);
write ('Enter real:');  
{readln (a);
writeln ('Expression with variables demo');
writeln('=============================');
writeln ('Exponential form: a+i=', a,'+',i, '=',a+i);
writeln ('Formatted output(rigth): a+i=', a:3:3,'+',i, '=',a+1:8:3);
writeln ('Formatted output(left): a+i=', a:3:3,'+',i, '=',a+1:-8:3);
writeln('a>i=',a>i);
writeln(true);}
write ('give me zerpisune');
end.