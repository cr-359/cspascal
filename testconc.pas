PROGRAM testconcat;
USES csp, crt;
VAR
  s : STRING;

BEGIN
  Writeln(Concat('Mr', 'Murry'));
  Writeln(Concat('Hello ', 'world!'));
  Writeln(Concat('CSP ', 'rules'));
  Writeln(Concat('McIntosh', 'HighSchool'));
  Writeln(Concat('Yes', 'No'));
  Readln(s);
  ClrScr;
END.