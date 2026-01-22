PROGRAM AgeClassifer(Input, Output);
USES Crt;
VAR
 Age : INTEGER;
 Class : CHAR;
PROCEDURE PrintClass(class : CHAR);
 BEGIN
 IF class = 'c'
  THEN writeln('You are a child')
 ELSE IF class = 't'
  THEN writeln('You are a teenager')
 ELSE IF class = 'a'
  THEN writeln('You are an adult')
 END;

FUNCTION ClassifyAge(age : INTEGER) : CHAR;
 BEGIN
 IF age < 13
  THEN ClassifyAge := 'c'
 ELSE IF age > 19
  THEN ClassifyAge := 'a'
 ELSE ClassifyAge := 't'
 END;

FUNCTION GetAge : INTEGER;
 VAR
   age : INTEGER;
 BEGIN
 REPEAT
 Write('Enter your age ');
 Read(age);
 IF (age < 0) OR (age > 120)
  THEN Writeln('That age is out of range')
 UNTIL (age >= 0) AND (age <= 120);
 GetAge := age;
 END;

BEGIN
 age := GetAge;
 class := ClassifyAge(age);
 PrintClass(class);
 Readln(age);
 ClrScr;
END.