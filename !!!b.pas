program doublefact;
uses crt;
var fac1,f,i,n:integer;
 begin
 writeln('enter n');
 readln(n);
 fac1:=1;
 if n mod 2 = 0 then
 	begin
 		i:=0;
 		while i<n do
 		begin
 			i:=i+2;
 			fac1:=fac1*i;
      		f:=fac1;
      		
      	end
 	end;
if n mod 2 = 1 then
 	begin
 		i:=1;
 		while i<n do
 		begin
 			i:=i+2;
 			fac1:=fac1*i;
      		f:=fac1;
      		
      	end
 	end;
 write(f)
end.