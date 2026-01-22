PROGRAM teststuff;
USES csp, crt;
VAR
  s : STRING;

BEGIN
  Writeln(Pow(5, 6));
  Writeln(len('Murry'));
  Writeln(Concat('Mur', 'ry'));
  Writeln(Reverse('Murry'));
  Writeln(Prefix(3, 'Murry'));
  Writeln(Substring(2, 4, 'Murry'));
  Readln(s);
  ClrScr;
END.