PROGRAM softballHeights(input, output);
CONST
  MAXSIZE = 22;
TYPE
  List = array[1..MAXSIZE] OF INTEGER;
VAR
  heights : List;
  teamNum, sum, i : INTEGER;
  average : REAL;
BEGIN
  Write('Enter the number of players on the softball team: ');
  Readln(teamNum);
  FOR i := 1 TO teamNum DO
   BEGIN
    Write('Enter the height of player #', i ,' : ');
    Readln(heights[i]);
   END;
  sum := 0;
  FOR i := 1 TO teamNum DO
   BEGIN
    Sum := sum + heights[i];
   END;
  average := sum/teamNum;
  Writeln('The sum of the heights is ', sum);
  Writeln('The average is of the heights is ', average);
  Readln(i);
END.