{$mode objfpc} // directive to be used for defining classes
{$m+}	       // directive to be used for using constructor
program Classproject;
Uses
   sysutils, classes;

type
   userinput = string;
   Sign = class

   private
     month : string;
     day : integer;

   public
      constructor create(m , d : string);
      procedure printout;
      function createstr(sign : string) : string ;

end;
var
   m1: Sign;
   month : userinput;
   day : userinput;
   list: TStringList;

constructor Sign.create(m, d : string);
begin
  month := trim(m);
  Try
     day := StrToInt(trim(d));
   except
   On E : EConvertError do
     Writeln('Invalid number encountered');
     end;
end;

function Sign.createstr(sign : string): string;
begin
  list := TStringList.create;
  try
    list.LoadFromFile(sign +'.txt');
    Randomize;
    createstr :=  list[Random(list.Count)];
  finally
    list.Free;
  end;
end;

procedure Sign.printout;
begin
   if ((month = 'january') AND (day >= 20)) OR ((month = 'february') AND (day <= 18)) then
   begin
        writeln('Horoscope: ' + self.createstr('Horoscopes'));
        writeln('Aquarius is the most humanitarian astrological sign.');
   end

   else if ((month = 'february') AND (day >= 19)) OR ((month = 'march') AND (day <= 20)) then
   begin
        writeln('Horoscope: ' + self.createstr ('Horoscopes'));
        writeln('Pisces has absorbed every lesson - the joys and the pain, the hopes and the fears.');
   end

   else if ((month = 'march') AND (day >= 21)) OR ((month = 'april') AND (day <= 19)) then
   begin
        writeln('Horoscope: ' + self.createstr ('Horoscopes'));
        writeln('Bold and ambitious, Aries dives headfirst into even the most challenging situations.');
   end

   else if ((month = 'april') AND (day >= 20)) OR ((month = 'may') AND (day <= 20)) then
   begin
        writeln('Horoscope: ' + self.createstr ('Horoscopes'));
        writeln('Like their celestial spirit animal, Taureans enjoy relaxing in serene,'+
        'bucolic environments surrounded by soft sounds, soothing aromas, and succulent flavors.');
   end

   else if ((month = 'may') AND (day >= 21)) OR ((month = 'june') AND (day <= 20)) then
   begin
        writeln('Horoscope: ' + self.createstr ('Horoscopes'));
        writeln('Appropriately symbolized by the celestial twins, Gemini are interested in so many pursuits that it had to double itself.');
   end

   else if ((month = 'june') AND (day >= 21)) OR ((month = 'july') AND (day <= 22)) then
   begin
        writeln('Horoscope: ' + self.createstr ('Horoscopes'));
        writeln('Cancers are highly intuitive and their psychic abilities manifest in tangible spaces');
   end

   else if ((month = 'july') AND (day >= 23)) OR ((month = 'august') AND (day <= 22)) then
   begin
        writeln('Horoscope: ' + self.createstr ('Horoscopes'));
        writeln('Vivacious, theatrical, and passionate, Leos love to bask in the spotlight and celebrate themselves.');
   end

   else if ((month = 'august') AND (day >= 23)) OR ((month = 'september') AND (day <= 22)) then
   begin
        writeln('Horoscope: ' + self.createstr ('Horoscopes'));
        writeln('Virgos are logical, practical, and systematic in their approach to life');
   end

   else if ((month = 'september') AND (day >= 23)) OR ((month = 'october') AND (day <= 22)) then
   begin
        writeln('Horoscope: ' + self.createstr ('Horoscopes'));
        writeln(' Libra is obsessed with symmetry and strives to create equilibrium in all areas of life.');
   end

   else if ((month = 'october') AND (day >= 23)) OR ((month = 'november') AND (day <= 21)) then
   begin
        writeln('Horoscope: ' + self.createstr ('Horoscopes'));
        writeln('Scorpio is a water sign that derives its strength from the psychic, emotional realm.');
   end

   else if ((month = 'november') AND (day >= 22)) OR ((month = 'december') AND (day <= 21)) then
   begin
        writeln('Horoscope: ' + self.createstr ('Horoscopes'));
        writeln('sagittarius launches its many pursuits like blazing arrows, chasing after geographical, intellectual, and spiritual adventures.');
   end

   else if ((month = 'december') AND (day >= 22)) OR ((month = 'january') AND (day <= 19)) then
   begin
        writeln('Horoscope: ' + self.createstr ('Horoscopes'));
        writeln('Capricorns are skilled at navigating both the material and emotional realms.')
   end

   else

   begin
        writeln('invalid month');
   end;

end;

begin
   repeat
        //get birth month
        writeln('Please enter you month of birth: ');
        readln(month);

        //get day
        writeln('Please enter you day of birth: ');
        readln(day);

        //create sign instantance and print output
        m1:= Sign.create(month, day);
        m1.printout;
   until (month = 'quit') OR (day = 'quit');

   //end
   writeln('Please press enter!');
   readln;
end.
