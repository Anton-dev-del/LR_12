var
   text: text;
   a: string;
   i: integer;
begin
   assign(text, 'text.txt');
   rewrite(text);
   
   for i := 1 to 10 do
   begin
       writeln(text, i);
   end;

   close(text);

   reset(text);
   
   for i := 1 to 10 do
   begin
       readln(text, a);
       writeln(a); 
   end;
   
   close(text); 
end.