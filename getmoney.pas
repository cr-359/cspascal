PROGRAM GetMoney(INPUT, OUTPUT);
CONST
  SIZE = 5;
TYPE
  List = ARRAY[1..SIZE] OF INTEGER;
VAR
  arr : List;
  i, sum : INTEGER;
BEGIN
  Writeln('Enter ', SIZE ,' number of dollars');

  FOR i := 1 TO SIZE DO
  BEGIN
  Write(i, ': ');
  Readln(arr[i]);
  END;

  FOR i := 1 TO SIZE DO Writeln('arr[', i, '] = ', arr[i]);

  sum := 0;
  FOR i := 1 TO SIZE DO sum := sum + arr[i];

  Writeln('You have ', sum ,' dollars');

  Read(arr[1]);
END.