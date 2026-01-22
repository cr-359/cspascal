Program Graphics;
uses Graph, Crt;
CONST
  MAXX = 640 ;
  MAXY = 480;
TYPE
  Triangle = ARRAY[1..4] OF PointType;
var
  Gd, Gm: Integer;
  c: Char;
  x, y, i, p: Integer;
  Color : WORD;
  MyColor, NumColor : Word;
  MyTri : Triangle;
begin
  Gd := Detect;
  InitGraph(Gd, Gm, 'C:\DOS\TP7\BGI');
  SetColor(Red);
  x := 0;
  y := 0;
  NumColor := GetMaxColor;
  Randomize;
  REPEAT
    p := Random(100);
    FOR i := 1 TO 3 DO
    BEGIN
      IF p < 30 THEN
      BEGIN
        MyTri[i].X := Random(MAXX DIV 2);
        MyTri[i].Y := Random(MAXY DIV 2);
      END
      ELSE IF p < 40 THEN
      BEGIN
        MyTri[i].X := Random(MAXX DIV 2) + MAXX DIV 2;
        MyTri[i].Y := Random(MAXY DIV 2);
      END
      ELSE IF p < 90 THEN
      BEGIN
        MyTri[i].X := Random(MAXX DIV 2);
        MyTri[i].Y := Random(MAXY DIV 2) + MAXY DIV 2;
      END
      ELSE
      BEGIN
        MyTri[i].X := Random(MAXX DIV 2) + MAXX DIV 2;
        MyTri[i].Y := Random(MAXY DIV 2) + MAXY DIV 2;
      END;
    END;
    MyColor := Random(NumColor);
    SetColor(MyColor);
    SetFillStyle(SolidFill, MyColor);
    FillPoly(4, MyTri);
  UNTIL KeyPressed;
  x := 0;
  y := 0;
  Repeat
    if KeyPressed then
    begin
      c := ReadKey;
      ClearDevice;
      CASE C of
        'w' : y := y - 5;
        's' : y := y + 5;
        'a' : x := x - 5;
        'd' : x := x + 5;
      END;
      Circle(x + 150, y + 150, 50);
    end;
  Until c = 'q';
  CloseGraph;
end.