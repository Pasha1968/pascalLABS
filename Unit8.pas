Unit Unit8;

interface
  type month=record
  number:1..12;
  Name:string;
  season:string;
  end;
  procedure BuildTabl;
  //в интерфейсе,все что потом будем юзать


implementation

procedure BuildTabl;
var 
    karenda:array[1..12] of month;
    i:integer;
begin
  karenda[1].Name:='January';
  karenda[2].Name:='february';
  karenda[3].Name:='march';
  karenda[4].Name:='april';
  karenda[5].Name:='may';
  karenda[6].Name:='june';
  karenda[7].Name:='july';
  karenda[8].Name:='august';
  karenda[9].Name:='september';
  karenda[10].Name:='october';
  karenda[11].Name:='november';
  karenda[12].Name:='december';
  for i:=1 to 12 do
  begin
    karenda[i].number:=i;
    if (i > 2) and (i < 6) then
    begin
      karenda[i].season:='Spring';
    end;
    if (i > 5) and (i < 9) then
    begin
      karenda[i].season:='summer';
    end;
    if (i > 8) and (i < 12) then
    begin
      karenda[i].season:='autumn';
    end;
    if (i > 11) or (i < 3) then
    begin
      karenda[i].season:='winter';
    end;
  end;
  for i:=1 to 12 do
  begin
    writeln(karenda[i].number,' | ',karenda[i].Name,' | ',karenda[i].season);
  end;
end;

begin 
//<инициирующая часть>; 
end .