begin
  var N := ReadInteger('Введите ваш год:');
  Assert(N > 0);
  var vis := (N.Divs(4) and not(N.Divs(100))) or N.Divs(400);
  Print($'Ваш год високосный? {vis}');
end.