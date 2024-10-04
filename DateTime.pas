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
  Assert((d1 in (0..31)) and (d2 in (0..31)));
  Assert((m1 in (0..12)) and (m2 in (0..12)));
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
  var y1 := ReadInteger('Введите год №1');
  var y2 := ReadInteger('Введите год №2');
  var sum := 0;
  Assert((y1 > 0) and (y2 > 0));
  for var i := y1 to y2 do
  begin
    var vis2 := (i.Divs(4) and not (i.Divs(100))) or i.Divs(400);
    if vis2 then
      sum += 366
    else
      sum += 365;
  end;
  Println($'Количество дней между этими годами(Включительно): {sum}');
end.