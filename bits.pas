PROGRAM bits;
VAR
  i : WORD; { Unsigned ONLY POSITIVE }
BEGIN
  i := 1;
  WHILE i <> 0 DO
  BEGIN
    Writeln(i);
    i := i + 1;
  END;
  Writeln('Out of loop, i = ', i);
  Readln(i);
END.