begin
  var N := ReadInteger('Введите ваш год:');
  Assert(N > 0);
  var vis := (N.Divs(4) and not(N.Divs(100))) or N.Divs(400);
  Println($'Ваш год високосный? {vis}');
  
  Println();
  Println($'Секунд в минуте: {1 * 60}');
end.