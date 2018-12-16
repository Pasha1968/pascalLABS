type fail=file of integer;

var
   FileInp:text;
   Buff:integer;
   i:byte;
begin
    assign(FileInp,'fileforstek.dat');
    rewrite(FileInp);
    
    for i:=0 to 20 do
    writeln(FileInp,random(100));
    
    close(FileInp);
end.