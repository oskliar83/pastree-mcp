program AppDead;

// lint's unused-symbol over a routine's locals and a record layout
// (tests\smoke.ps1): Update's nested DayMinutes is dead, so is CPerDay, which
// only it reads; CTolerance, TPair and the string LText are never named
// (dcc hints none of them); TOldLayout's unused fields are one line.

{$APPTYPE CONSOLE}

uses
  uDead in 'uDead.pas';

var
  L: TOldLayout;

begin
  Update(L);
  Writeln(Minutes(L.Size));
end.
