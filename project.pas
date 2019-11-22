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
   r1: Sign;
   month : userinput;

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
   writeln('Please enter you month of birth: ');
   readln(month);
end.
