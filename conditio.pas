PROGRAM Conditionals;
LABEL 10;
VAR
  a, b, i : INTEGER;
BEGIN
  Randomize;
  b := random(10);
  Writeln('You have 3 guesses');


  For i := 1 TO 3 DO
  BEGIN
    Write('Guess a number between 0 and 10: ');
    Readln(a);
    IF a = 100 THEN Writeln(b)
    ELSE IF a < b THEN Writeln('Too low')
    ELSE IF a > b THEN writeln('Too high')
    ELSE
     BEGIN
      Writeln('That is correct');
      GOTO 10;
     END;
  END;
10: Writeln('Thanks for playing');
    Readln(b);
END.