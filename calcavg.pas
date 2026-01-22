PROGRAM GradeCalculator (input, output);
USES Crt;
CONST
  MAXSIZE = 20;
TYPE
  List = array[1..MAXSIZE] OF INTEGER;
VAR
  GradeNum : Integer;
  Grades : List;
  i : Integer;
  Average, sum : Real;
  Letter : CHAR;

FUNCTION ClassifyGrade(average : REAL) : CHAR;
BEGIN
 IF (average >= 90)
  THEN ClassifyGrade := 'A'
 ELSE IF (average >= 80)
  THEN ClassifyGrade := 'B'
 ELSE IF (average >= 70)
  THEN ClassifyGrade := 'C'
 ELSE IF (average >= 60)
  THEN ClassifyGrade := 'D'
 ELSE ClassifyGrade := 'F';
END;

BEGIN
  REPEAT
   Write('How many assignments do you have? : ');
   Readln(GradeNum);
   IF (GradeNum > 20) OR (GradeNum < 1)
    THEN Writeln('Please enter a number between 0 and 20');
  UNTIL (0 < GradeNum) AND (GradeNum < 21);
  FOR i := 1 TO GradeNum DO
   Begin
    Write('Enter the grade of assignment #', i ,' : ');
    Readln(Grades[i])
   End;
  sum := 0;
  FOR i := 1 TO GradeNum DO sum := sum + Grades[i];
  average := sum/GradeNum;
  Writeln('The average is : ', average);
  Letter := ClassifyGrade(Average);
  Writeln('Your letter grade is : ', letter);
  Readln(i);
  ClrScr;
END.