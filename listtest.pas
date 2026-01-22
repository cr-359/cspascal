PROGRAM listest;
USES csp;
VAR
  myList : LIST;
  i : INTEGER;
BEGIN
  Writeln('Length = ', Length(myList));
  Append(myList, 10);
  Append(myList, 8);
  Append(myList, 0);
  Append(myList, -5);

  Writeln('Length = ', Length(myList));
  Writeln(PrintList(myList));
  Readln(myList[1]);
END.