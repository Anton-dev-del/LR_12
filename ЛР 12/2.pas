var
  filetext: text;
  N, K, i, j: integer;
  line: string;
begin
  writeln('Введите количество строк (N):');
  readln(N);
  writeln('Введите количество звездочек в строке (K):');
  readln(K);
  
  assign(filetext, 'stars.txt');
  rewrite(filetext);
  
  for i := 1 to N do
  begin
    line := '';
    for j := 1 to K do
      line := line + '*';
    
    writeln(filetext, line);
  end;
  
  close(filetext);
  writeln('Файл успешно создан и записан.');
end.