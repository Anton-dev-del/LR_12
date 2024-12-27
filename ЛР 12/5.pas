var
  inputFile, outputFile: text;
  number: integer;
  maxNum, minNum: integer;
  firstNum: boolean;
begin
  assign(inputFile, 'input.txt');
  reset(inputFile);

  firstNum := true;

  while not eof(inputFile) do
  begin
    readln(inputFile, number);
    
    if firstNum then
    begin
      maxNum := number;
      minNum := number;
      firstNum := false;
    end
    else
    begin
      if number > maxNum then
        maxNum := number;
      if number < minNum then
        minNum := number;
    end;
  end;

  close(inputFile);

  assign(outputFile, 'output2.txt');
  rewrite(outputFile);

  writeln(outputFile, 'Максимальное число: ', maxNum);
  writeln(outputFile, 'Минимальное число: ', minNum);

  close(outputFile);

  writeln('Максимальное и минимальное число записаны в файл output2.txt');
end.