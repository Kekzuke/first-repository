begin
  var N := ReadInteger('Введите ваш год:');
  Assert(N > 0);
  var vis := (N.Divs(4) and not (N.Divs(100))) or N.Divs(400);
  Println($'Ваш год високосный? {vis}');
  
  if vis then
    Println('В этом году 366 дней')
  else
    Println('В этом году 365 дней');
  
  var (d1, m1) := ReadInteger2('Введите день и месяц №1:');
  var (d2, m2) := ReadInteger2('Введите день и месяц №2:');
  if (12 - m1) < (12 - m2) then
    Println(1)
  else
    Println(2);
  if (12 - m1) = (12 - m2) then
  begin
    if (31 - d1) < (31 - d2) then
      Println(1)
    else
      Println(2);
  end;
  
end.