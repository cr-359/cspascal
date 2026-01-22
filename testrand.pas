PROGRAM TestRandom;
USES csp;
VAR
  myList : List;
  n : INTEGER;
BEGIN
  REPEAT
    Write('Enter the length of the list : ');
    Readln(n);
    IF (n <= 0) OR (n > SIZE) THEN
     writeln('Pick a number between 1 and ', SIZE);
  UNTIL (n > 0) AND (n <= SIZE);
  RandomList(myList, n);
  PrintList(myList);
  Readln;
END.