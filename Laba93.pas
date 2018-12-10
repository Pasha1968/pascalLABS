Program derevo;
type pvusol=^tvusol;
tvusol=record
left:pvusol;
right:pvusol;
data:integer;
end;
 
Procedure Createtree(var p:pvusol;s:integer);
var t,prev:pvusol;
begin 
if p=nil then
begin 
new(p);
p^.data:=s;
p^.left:=nil;
p^.right:=nil; 
write(p^.data,' ');
end
else
begin
t:=p; 
if s<t^.data then
begin 
Createtree(t^.left,s);
end;
if s>t^.data then
begin 
Createtree(t^.right,s);
end;
end;
end;
Procedure Printtree(var p:pvusol);
begin
if p=nil then exit;
if p^.left<>nil then Printtree(p^.left); 
if p^.right<>nil then Printtree(p^.right); 
write(p^.data,' ');
end;
var x:integer;i:integer;
l,k:pvusol;
begin
k:=l;
for i:=1 to 5 do
begin
read(x);
Createtree(l,x);
end; 
writeln;
Printtree(l);
end.