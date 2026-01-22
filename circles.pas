PROGRAM circles; { Draw 10 circles in random spots }
USES graph;
CONST
  RAD = 120;
VAR
  x, y, r, i, gm, gd : INTEGER;
BEGIN
  Randomize; { Setup random number generator }

  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI');

  FOR i := 1 TO 10 DO
   BEGIN
    x := random(640);
    y := random(480);
    r := random(RAD);
    SetColor(Random(16));
    Circle(x, y, r);
   END;

  Read(x);
  CloseGraph;
END.
