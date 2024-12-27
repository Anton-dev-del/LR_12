var
  inputFile, tempFile: text;
  line: string;
begin
  assign(inputFile, 'input.txt');
  reset(inputFile);

  assign(tempFile, 'temp2.txt');
  rewrite(tempFile);

  while not eof(inputFile) do
  begin
    readln(inputFile, line);

    if line <> '' then
      writeln(tempFile, line);
  end;

  close(inputFile);
  close(tempFile);

  erase(inputFile);
  rename(tempFile, 'input.txt');

  writeln('Все пустые строки успешно удалены.');
end.