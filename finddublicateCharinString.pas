program naididubl;
uses fgl;

type TMap = specialize TFPGMap<Char, Boolean>;
var x: TMap;
	strochka:string;
	i:Byte;


function Dublpoisk(s:string):Boolean;
var leng:byte;
	hash:TMap;
	counter:byte;
	res:Boolean;
begin
	res:=False;
	leng:=length(s);
	hash:=Tmap.Create;
	counter:=0;
	while counter < leng do
	begin
		if hash.IndexOf(s[counter]) <> -1 then
			begin
				exit(True);
				break
			end;

		hash[s[counter]] := True;
		counter:=counter+1;		
	end;

	exit(False);
end;

begin
  x := TMap.Create;
  x['a'] := true;
  write(Dublpoisk('dasfgaaasfga'));
  write(Dublpoisk('zxcvbnm'));
end.