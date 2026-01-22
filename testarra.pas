PROGRAM testarray;

CONST
  MAX = 8;

TYPE
  List = ARRAY [1..MAX] of INTEGER;

VAR
  arr : List;
  i : INTEGER;

BEGIN
  FOR i := 1 TO MAX DO Read(arr[i]);

  FOR i := 1 TO MAX DO Write(arr[i]);
  Readln(i);
END.