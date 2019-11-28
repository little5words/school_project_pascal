{$mode objfpc} // directive to be used for defining classes
{$m+}	       // directive to be used for using constructor
program exClass;
Uses sysutils;

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
   dayint : integer;

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
   dayint := StrToInt(day);

   if ((month = 'january') AND (dayint >= 20)) OR ((month = 'february') AND (dayint <= 18)) then
   begin
        writeln('Aquarius is the most humanitarian astrological sign.');
   end;

   if ((month = 'february') AND (dayint >= 19)) OR ((month = 'march') AND (dayint <= 20)) then
   begin
        writeln('Pisces has absorbed every lesson - the joys and the pain, the hopes and the fears.');
   end;

   if ((month = 'march') AND (dayint >= 21)) OR ((month = 'april') AND (dayint <= 19)) then
   begin
        writeln('Bold and ambitious, Aries dives headfirst into even the most challenging situations.');
   end;

   if ((month = 'april') AND (dayint >= 20)) OR ((month = 'may') AND (dayint <= 20)) then
   begin
        writeln('Like their celestial spirit animal, Taureans enjoy relaxing in serene,'+
        'bucolic environments surrounded by soft sounds, soothing aromas, and succulent flavors.');
   end;

   if ((month = 'may') AND (dayint >= 21)) OR ((month = 'june') AND (dayint <= 20)) then
   begin
        writeln('Appropriately symbolized by the celestial twins, this air sign was interested in so many pursuits that it had to double itself.');
   end;

   if ((month = 'june') AND (dayint >= 21)) OR ((month = 'july') AND (dayint <= 22)) then
   begin
        writeln('Cancers are highly intuitive and their psychic abilities manifest in tangible spaces');
   end;

   if ((month = 'july') AND (dayint >= 23)) OR ((month = 'august') AND (dayint <= 22)) then
   begin
        writeln('Vivacious, theatrical, and passionate, Leos love to bask in the spotlight and celebrate themselves.');
   end;

   if ((month = 'august') AND (dayint >= 23)) OR ((month = 'september') AND (dayint <= 22)) then
   begin
        writeln('Virgos are logical, practical, and systematic in their approach to life');
   end;

   if ((month = 'september') AND (dayint >= 23)) OR ((month = 'october') AND (dayint <= 22)) then
   begin
        writeln(' Libra is obsessed with symmetry and strives to create equilibrium in all areas of life.');
   end;

   if ((month = 'october') AND (dayint >= 23)) OR ((month = 'november') AND (dayint <= 21)) then
   begin
        writeln('Scorpio is a water sign that derives its strength from the psychic, emotional realm.');
   end;

   if ((month = 'november') AND (dayint >= 22)) OR ((month = 'december') AND (dayint <= 21)) then
   begin
        writeln('sagittarius launches its many pursuits like blazing arrows, chasing after geographical, intellectual, and spiritual adventures.');
   end;

   if ((month = 'december') AND (dayint >= 22)) OR ((month = 'january') AND (dayint <= 19)) then
   begin
        writeln('Capricorns are skilled at navigating both the material and emotional realms.');
   end;

   writeln('Please press enter!: ');
   readln(month);
end.
