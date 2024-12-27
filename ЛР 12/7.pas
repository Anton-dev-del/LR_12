program Zad7;

var
    n, sum, p: Int64;
    isPrime: array[1..1000000] of Boolean;

procedure Si(limit: LongInt);
var
    i, j: LongInt;
begin
    for i := 2 to limit do
        isPrime[i] := True;

    for i := 2 to trunc(Sqrt(limit)) do
        if isPrime[i] then
            for j := i * i to limit do
                if j mod i = 0 then
                    isPrime[j] := False;
end;
begin
    Assign(input, 'z3.in.txt');
    Reset(input);
    
    if not Eof(input) then begin
        ReadLn(n);
    end else begin
        WriteLn('Ошибка: файл z3.in пуст или не существует');
        Exit;
    end;
    Close(input);

    sum := 0;

    Si(1000000);

    // Поиск чисел p^4 и их суммирование
    p := 2;
    while p <= 1000000 do
    begin
        if isPrime[p] then
        begin
            if (p * p * p * p) <= n then
                sum := sum + (p * p * p * p);
        end;
        Inc(p);
    end;

    Assign(output, 'z3.out.txt');
    Rewrite(output);
    WriteLn(sum);
    Close(output);
end.