var
  inp, tem: text;
  line: string;
  K, cur: integer;
begin
  writeln('Введите номер строки K для вставки пустой строки:');
  readln(K);

  assign(inp, 'cat.txt');
  reset(inp);

  // Открытие временного файла для записи
  assign(tem, 'temp.txt');
  rewrite(tem);

  cur := 1;

  while not eof(inp) do
  begin
    readln(inp, line);

    if cur = K then
      writeln(tem, '');

    writeln(tem, line);
    
    cur := cur + 1;
  end;
  close(inp);
  close(tem);

  // Замена ориг файла временным
  erase(inp);
  rename(tem, 'cat.txt');

  writeln('Пустая строка успешно вставлена перед строкой номер ', K, '.');
end.