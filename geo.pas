PROGRAM geo;
USES graph, crt;
VAR
  gm, gd, line : INTEGER;
  key : CHAR;
BEGIN
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI');
  key := Readkey;
  line := 1;
  SetBKColor(10);
  WHILE key <> 'q' DO
  BEGIN
    OutTextXY(0, line, 'You typed ' + key);
    key := ReadKey;
    ClearDevice;
    DrawFrame;
    line := line + TextHeight('You typed ' + key);
   END;
  CloseGraph;
END.