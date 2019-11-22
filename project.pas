{$mode objfpc} // directive to be used for defining classes
{$m+}		   // directive to be used for using constructor

program exClass;
type
   userinput = string;
   Sign = class

   private
      length, width: integer;

   public
      constructor create(l, w: integer);
      procedure setlength(l: integer);

      function getlength(): integer;
      procedure setwidth(w: integer);

      function getwidth(): integer;
      procedure draw;
end;
var
   m1: Sign;
   month : userinput;
   day : userinput;

constructor Sign.create(l, w: integer);
begin
   length := l;
   width := w;
end;

procedure Sign.setlength(l: integer);
begin
   length := l;
end;

procedure Sign.setwidth(w: integer);
begin
   width :=w;
end;

function Sign.getlength(): integer;
begin
   getlength := length;
end;

function Sign.getwidth(): integer;
begin
   getwidth := width;
end;

procedure Sign.draw;
var
   i, j: integer;
begin
   for i:= 1 to length do
   begin
      for j:= 1 to width do
         write(' * ');
      writeln;
   end;
end;

begin
   Randomize; { This way we generate a new sequence every time
               the program is run}

   m1:= Sign.create(3,7);
   writeln(Random(11));
   writeln('Please enter you month of birth: ');
   readln(month);

   writeln('Please enter you day of birth: ');
   readln(day);
   if month = 'january' then
   begin
        writeln('starting child');
   end;

   if month = 'february' then
   begin
        writeln('cold child');
   end;
   if month = 'march' then
   begin
        writeln('band child');
   end;
   if month = 'april' then
   begin
        writeln('rain child');
   end;

   if month = 'may' then
   begin
        writeln('mayday child');
   end;

   if month = 'june' then
   begin
        writeln('summer child');
   end;
   if month = 'july' then
   begin
        writeln('independent child');
   end;

   if month = 'august' then
   begin
        writeln('school child');
   end;

   if month = 'september' then
   begin
        writeln('septer child');
   end;

   if month = 'october' then
   begin
        writeln('halloween child');
   end;

   if month = 'november' then
   begin
        writeln('novice child');
   end;

   if month = 'december' then
   begin
        writeln('snow child');
   end;
end.
