PROGRAM binary;
VAR
  i : INTEGER;
  w : WORD; { 0 to 2^16-1 }
FUNCTION IntToBinary(n : INTEGER) : STRING;
  VAR
    result : STRING;
  BEGIN
    IF n = 0 THEN  result := '0'
    ELSE
    BEGIN
    result := '';
    WHILE n > 0 DO
    BEGIN
      result := Chr(Ord('0') + (n MOD 2)) + result;
      n := n DIV 2;
    END;
    END;
    IntToBinary := result;
  END;

BEGIN
  i := 1;
  w := 1;
  WHILE i <> 0 DO
  BEGIN
    Writeln(i, ' = ', IntToBinary(i));
    i := i + 1;
  END;
  Readln;

  WHILE w > 0 DO
  BEGIN
    Writeln(w, ' = ', IntToBinary(w));
    W := 2 * w;
  END;
  Readln;
END.
