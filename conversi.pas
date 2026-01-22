PROGRAM conversion;
VAR
  l : CHAR;
  i : INTEGER;
  num : STRING;
{FUNCTION ctoi(c : char) : INTEGER;
BEGIN
  IF (c >= '0') AND (c <= '9') THEN
    ctoi := Ord(c) -48
  ELSE
    ctoi := -1;
END;   }

FUNCTION atoi(S : STRING) : INTEGER;
VAR
  result, i, val : INTEGER;
BEGIN
  result := 0;
  i := 1;
  WHILE i <= Length(S) DO
  BEGIN
    IF (S[i] >= '0') AND (s[i] <= '9') THEN
    BEGIN
    val := Ord(S[i]) - ORD('0');
    result := result * 10 + val;
    i := i + 1;
    END
    ELSE
      BREAK;
  END;
  atoi := result;
END;

FUNCTION itoa(val : INTEGER) : STRING;
  VAR
    s : STRING;
  BEGIN
    s := '';
    REPEAT
      s := Chr(val MOD 10 + 48) + s;
      val := val DIV 10;
    UNTIL val = 0;
    itoa := s;
  END;
BEGIN
  Write('Type an integer : ');
  Readln(i);
  num := itoa(i);
  Writeln(num);
  Readln;
END.