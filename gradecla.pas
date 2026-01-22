PROGRAM GradeClassifier(Input, Output);
USES Crt;
VAR
 Grade : INTEGER;
 Letter : CHAR;

FUNCTION ClassifyGrade(grade : INTEGER) : CHAR;
 BEGIN
 IF (grade <= 100) AND (grade >= 90)
  THEN ClassifyGrade := 'A'
 ELSE IF (grade <= 89) AND (grade >= 80)
  THEN ClassifyGrade := 'B'
 ELSE IF (grade <= 79) AND (grade >= 70)
  THEN ClassifyGrade := 'C'
 ELSE IF (grade <= 69) AND (grade >= 60)
  THEN ClassifyGrade := 'D'
 ELSE IF (grade <= 59) AND (grade >= 0)
  THEN ClassifyGrade := 'F'
 END;

FUNCTION GetGrade : INTEGER;
 VAR
   grade : INTEGER;
 BEGIN
 REPEAT
 Write('Enter your numerical grade ');
 Read(grade);
 IF (grade < 0) OR (grade > 100)
  THEN Writeln('That grade is out of range')
 UNTIL (grade >= 0) AND (grade <= 100);
 GetGrade := grade;
 END;

BEGIN
 grade := GetGrade;
 letter := ClassifyGrade(grade);
 Write('Your letter grade is ');
 Writeln(letter);
 Readln(grade);
 ClrScr;
END.