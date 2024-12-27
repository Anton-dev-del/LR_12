var
  filetext: text;
  S: string;
begin
  writeln('Введите строку для добавления в файл:');
  readln(S);

  assign(filetext, 'output.txt');
  append(filetext);

  writeln(filetext, S);

  close(filetext);
  writeln('Строка успешно добавлена в файл.');
end.