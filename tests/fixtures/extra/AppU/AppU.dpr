program AppU;

// lint's unused-uses after the unused declarations (tests\smoke.ps1): uAfter
// lists uDisk only for WriteDisk, which nothing calls - the entry goes with
// it; uPlain for nothing; uKeep uses uDisk where it is called.

{$APPTYPE CONSOLE}

uses
  uDisk in 'uDisk.pas',
  uPlain in 'uPlain.pas',
  uKeep in 'uKeep.pas',
  uAfter in 'uAfter.pas';

begin
  RunAfter;
  RunKeep;
end.
