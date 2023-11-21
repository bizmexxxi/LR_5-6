var
  numbers: array[1..20] of integer;
  max_value, min_value, max_index, min_index, last_multiple_of_5_index: integer;
  i, current_value, current_mod: integer;

begin
  for i := 1 to 20 do
    numbers[i] := random(-52, 65);

  writeln(numbers,' ');
  max_value := numbers[1];
  min_value := numbers[1];
  max_index := 1;
  min_index := 1;
  last_multiple_of_5_index := 0;

  for i := 1 to 20 do
  begin
    current_value := numbers[i];
    current_mod := current_value mod 5;

    if current_value > max_value then
    begin
      max_value := current_value;
      max_index := i;
    end;

    if current_value < min_value then
    begin
      min_value := current_value;
      min_index := i;
    end;

    if current_mod = 0 then
      last_multiple_of_5_index := i;
  end;

  writeln('Максимальное значение и индекс: ', max_value, ' - ', max_index);
  writeln('Минимальное значение и индекс: ', min_value, ' - ', min_index);
  writeln('Индекс последнего элемента кратного 5: ', last_multiple_of_5_index);
end.