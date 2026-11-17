unit uPkgApi;

// A package's unit (tests\smoke.ps1, lint: a package's exported
// declarations): its interface is exported - used, not a row - and what
// only the interface uses with it; a private field and an implementation
// routine nothing uses are rows.

interface

type
  TPkgApi = class
  private
    FSpare: Integer;
    procedure Helper;
  public
    procedure Run;
  end;

procedure PkgCall(AUnused: Integer);

implementation

procedure Dead;
begin
end;

procedure TPkgApi.Helper;
begin
end;

procedure TPkgApi.Run;
begin
  Helper;
end;

procedure PkgCall(AUnused: Integer);
begin
end;

end.
