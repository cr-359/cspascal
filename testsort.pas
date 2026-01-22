PROGRAM Test;
USES csp;
VAR
  myList : LIST;
  a : INTEGER;
BEGIN
  RandomList(myList, 10);
  PrintList(myList);
  Sort(myList);
  PrintList(myList);
  Read(a);
END.