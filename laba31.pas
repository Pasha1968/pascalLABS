program Laba31;
//{18.Записати вказану дію у вигляді одного умовного оператора у=tg(x) при 0<X<2; 1-
//tg(x) інакше.}
function tg (x : real) : real;
begin
tg := sin(x)/cos(x);
end;

var r,y:Real;
begin
	writeln('угол в радианах');
	read(r);
	if (r > 0) and (r < 2)// скобки бзлфяртмь
	//if (r < 0) or (r > 2) и наоборот===>>
		then begin 
				y:=tg(r);
			end
		else begin
			y:=1-tg(r);
		end;
	write(y);
end.
