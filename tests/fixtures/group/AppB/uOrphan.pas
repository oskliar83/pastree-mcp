unit uOrphan;

// No project of Fixture.groupproj uses this unit, so no tool sees it: `find`
// OrphanRoutine says where the name is written instead (tests\smoke.ps1).

interface

procedure OrphanRoutine;

implementation

// Its call of NeverCalled, written qualified, is a use outside the index:
// lint's row says so.
uses
  uBoxes;

procedure OrphanRoutine;
begin
  uBoxes.NeverCalled;
end;

end.
