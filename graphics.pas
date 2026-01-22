PROGRAM graphics;
USES Graph;
VAR
  gd, gm : INTEGER;
BEGIN
  gd := Detect; { Detect is a function with 0 inputs, no parenthesis }
  InitGraph(gd, gm, 'C:\TPWDB\BGI');

  SetColor(6);
  Line(400, 250, 300, 150);
  Line(300, 150, 200, 250);

  SetColor(7);
  Rectangle(200, 400, 400, 250);

  SetColor(14);
  Circle(240, 310, 15);
  Circle(360, 310, 15);

  SetColor(8);
  Rectangle(320, 400, 280, 315);

  Readln(gd);
  CloseGraph;   { CloseGraph is a procedure with 0 inputs, no parenthesis }
END.