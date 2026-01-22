PROGRAM assignment;
VAR
  x, y, z : INTEGER;
BEGIN
  { Assignment statements }
  x := 10;
  y := 20;
  z := 5;
  Writeln('x is equal to ', x);
  Writeln('y is equal to ', y);
  Writeln('z is equal to ', z);

  { Expressions are math with + - * / DIV MOD and/or constants }
  z := x = 2*y;
  x := 3*z;
  y := x - z;
  Writeln('x is now equal to ', x);
  Writeln('y is now equal to ', y);
  Writeln('z is now equal to ', z);
  Writeln('The sum of x, y, and z is ', x + y + z);
  Readln(x);
END.