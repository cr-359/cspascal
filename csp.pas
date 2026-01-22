
UNIT csp;

INTERFACE

{ List Data Type }
CONST
  SIZE = 20;

TYPE
  LIST = ARRAY[0..SIZE] OF INTEGER;

{ List Functions/Procedures }
FUNCTION Length(aList : LIST) : INTEGER;
PROCEDURE Append(VAR aList : LIST; value : INTEGER);
PROCEDURE Insert(VAR aList : LIST; i, value : INTEGER);
PROCEDURE Remove(VAR aList : LIST; i : INTEGER);
PROCEDURE PrintList(aList : LIST);
PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);

FUNCTION Sum(aList : LIST) : INTEGER;
FUNCTION Average(aList : LIST) : REAL;
FUNCTION Median(aList : LIST) : REAL;
FUNCTION IsInList(aList : LIST; val : INTEGER) : BOOLEAN;

FUNCTION Smallest(aList : LIST) : INTEGER;
PROCEDURE Swap(VAR a, b : INTEGER);
FUNCTION LinearSearch(aList : LIST; value : INTEGER) : BOOLEAN;
{FUNCTION BinarySearch(aList : LIST; value : INTEGER) : BOOLEAN;}

PROCEDURE BubbleSort(VAR aList : LIST);
PROCEDURE SelectionSort(VAR aList : LIST);
PROCEDURE InsertionSort(VAR aList : LIST);

{ String Functions }
FUNCTION Len(s : STRING) : INTEGER;
FUNCTION Concat(s1, s2 : STRING) : STRING;
FUNCTION Reverse(s : STRING) : STRING;
FUNCTION Prefix(s : STRING; num : INTEGER) : STRING;
FUNCTION Substring(s : STRING; num1, num2 : INTEGER) : STRING;

FUNCTION Pow(n, p : INTEGER) : INTEGER;

IMPLEMENTATION


{ List Functions/Procedures }

FUNCTION Length(aList : LIST) : INTEGER;
 BEGIN
   Length := aList[0];
 END;

PROCEDURE Append(VAR aList : LIST; value : INTEGER);
 BEGIN
   aList[0] := Length(aList) + 1;
   aList[Length(aList)] := value;
 END;

PROCEDURE Insert(VAR aList : LIST; i, value : INTEGER);
 VAR
   n : INTEGER;
 BEGIN
   aList[0] := Length(aList) + 1;
   IF i > Length(aList) THEN
   aList[Length(aList)] := value
   ELSE IF i <= 0 THEN
   i := 1;
   FOR n := i TO Length(aList) DO
     aList[Length(aList) - n + i] := aList[Length(aList) - n + i - 1];
   aList[i] := value;
 END;

PROCEDURE Remove(VAR aList : LIST; i : INTEGER);
 VAR
  n : INTEGER;
 BEGIN
   IF i <= aList[0] THEN
   BEGIN
   FOR n := i TO Length(aList) + 1 DO
     aList[Length(aList) - (Length(aList) - n)] := aList[Length(aList) - (Length(aList) - n) + 1];
   aList[0] := Length(aList) - 1;
   END;
 END;

PROCEDURE PrintList(aList : LIST);
 VAR
   i : INTEGER;
 BEGIN
   For i := 1 TO length(aList) DO
     Writeln('Element at index ', i ,' = ', aList[i]);
 END;

PROCEDURE RandomList(VAR aList : LIST; n : INTEGER);
 VAR
   i : INTEGER;
 BEGIN
   Randomize;
   FOR i := 1 TO n DO
     Append(aList, Random(100));
 END;

FUNCTION Sum(aList : LIST) : INTEGER;
 VAR
   i, num : INTEGER;
 BEGIN
   num := 0;
   FOR i := 1 TO length(aList) DO
     num := num + aList[i];
   sum := num;
 END;

FUNCTION Average(aList : LIST) : REAL;
 BEGIN
  average := sum(aList)/Length(aList);
 END;

 FUNCTION Median(aList : LIST) : REAL;
 VAR
   med : INTEGER;
 BEGIN
   IF Length(aList) MOD 2 = 1 THEN
     med := aList[Length(aList) DIV 2 + 1]
   ELSE
     med := (aList[Length(aList) DIV 2] + aList[Length(aList) DIV 2 + 1])/2;
   Median := med;
 END;

FUNCTION IsInList(aList : LIST; val : INTEGER) : BOOLEAN;
 VAR
   i : INTEGER;
   found : BOOLEAN;
 BEGIN
   found := false;
   FOR i := 1 TO Length(aList) DO
   BEGIN
     IF aList[i] = val THEN found := true;
   END;
   IsInList := found;
 END;



FUNCTION Smallest(aList : LIST) : INTEGER;
 VAR
   i, min : INTEGER;
 BEGIN
   min := aList[1];
   FOR i := 2 TO Length(aList) DO
     IF aList[i] < min THEN
       min := aList[i];
   Smallest := min;
 END;

PROCEDURE Swap(VAR a, b : INTEGER);
 VAR
   temp : INTEGER;
 BEGIN
   temp := a;
   a := b;
   b := temp;
 END;

FUNCTION LinearSearch(aList : LIST; value : INTEGER) : BOOLEAN;
 VAR
   i, count : INTEGER;
   Found : BOOLEAN;
 BEGIN
   Found := FALSE;
   count := 0;
   FOR i := 1 TO Length(aList) DO
   BEGIN
     count := count + 1;
     IF aList[i] = value THEN
     BEGIN
       Found := TRUE;
       Break;
     END;
   END;
   Writeln('Number of searches = ', count);
   LinearSearch := Found;
 END;

{FUNCTION BinarySearch(aList : LIST; value : INTEGER) : BOOLEAN;
VAR l, r, mid, count : INTEGER;
  FOUND : BOOLEAN;
BEGIN
  FOUND := FALSE;
  l := 1;
  r := Length(aList);
  count := 0;
  REPEAT
    count := count + 1;
    mid := (l + r) DIV 2;
    IF aList[mid] = value THEN
    BEGIN
      Found := TRUE;
      Break;
    END;
    ELSE IF aList[mid] < value THEN l := mid + 1
    ELSE r := mid - 1;
  UNTIL l > r;
  Writeln('Number of searches = ', count);
  BinarySearch := FOUND;
END;   }

PROCEDURE BubbleSort(VAR aList : LIST);
 VAR
   i, j : INTEGER;
 BEGIN
   FOR i := 1 TO Length(aList) - 1 DO
     FOR j := 1 TO Length(aList) - i DO
       IF aList[j] > aList[j+ 1] THEN
         Swap(aList[j], aList[j + 1]);
 END;

PROCEDURE SelectionSort(VAR aList : LIST);
 VAR
   i, j, min : INTEGER;
 BEGIN
   FOR i := 1 TO Length(aList) - 1 DO
   BEGIN
     min := i;
     FOR j := i + 1 TO Length(aList) DO
       IF aList[j] < aList[min] THEN min := j;
     Swap(aList[i], aList[min]);
   END;
 END;

PROCEDURE InsertionSort(VAR aList : LIST);
 VAR
   i, j : INTEGER;
 BEGIN
   FOR i := 1 TO Length(aList) -1 DO
   BEGIN
     FOR j := i TO Length(aList) DO
       IF aList[j] < aList[j - 1] THEN
       Swap(aList[j], aList[j -1])
       ELSE
       break;
   END;
 END;








{ String Functions }

FUNCTION Len(s : STRING) : INTEGER;
 BEGIN
   Len := ord(s[0]);
 END;

FUNCTION Concat(s1, s2 : STRING) : STRING;
 VAR
   i : INTEGER;
   temps : STRING;
 BEGIN
   FOR i := 1 to len(s1) DO
     temps[i] := s1[i];
   FOR i := 1 to len(s2) DO
     temps[i + len(s1)] := s2[i];
   temps[0] := chr(Len(s1) + Len(s2));
   Concat := temps;
 END;

FUNCTION Reverse(s : STRING) : STRING;
 VAR
   i : INTEGER;
   temps : STRING;
 BEGIN
   FOR i := 1 to len(s) DO
     temps[i] := s[len(s) - i + 1];
   temps[0] := s[0];
   Reverse := temps;
 END;

FUNCTION Prefix(s : STRING; num : INTEGER) : STRING;
 VAR
   i : INTEGER;
   temps : STRING;
 BEGIN
   IF num > len(s) THEN num := len(s);
   FOR i := 1 to num DO
     temps[i] := s[i];
   temps[0] := chr(num);
   Prefix := temps;
 END;

FUNCTION Substring(s : STRING; num1, num2 : INTEGER) : STRING;
 VAR
   i : INTEGER;
   temps : STRING;
 BEGIN
   FOR i := num1 to (num1 + num2) DO
     temps[i - num1 + 1] := s[i];
   temps[0] := chr(num1 + num2);
   Substring := temps;
 END;

FUNCTION Pow(n, p : INTEGER) : INTEGER;
 VAR
   i, num : INTEGER;
 BEGIN
   num := 1;
   FOR i := 1 to p DO
     num := num * n;
   Pow := num;
 END;
END.