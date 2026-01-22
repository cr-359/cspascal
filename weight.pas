PROGRAM TeamWeights;

CONST
  MAXSIZE = 20;
TYPE
  List = ARRAY[1..MAXSIZE] OF REAL;
VAR
  weights : List;
  teamSize : INTEGER;
  average : REAL;
  sum : REAL;
  i : INTEGER;
BEGIN
  Write('Enter the number of players on the team : ');
  Readln(teamSize);
  Writeln('Enter the weight of each player on the team');
  FOR i := 1 TO teamSize DO
   BEGIN
    Write('Player #', i ,' : ');
    Readln(weights[i]);
   END;
  FOR i := 1 TO teamSize DO Writeln(weights[i]);
  sum := 0;
  FOR i := 1 TO teamSize DO sum := sum + weights[i];
  average := sum/teamSize;
  Writeln('The sum of the weights is ', sum);
  Writeln('The average weight is ', average);

  Readln(teamSize);
END.