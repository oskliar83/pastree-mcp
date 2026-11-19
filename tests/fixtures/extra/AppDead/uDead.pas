unit uDead;

interface

type
  TOldLayout = packed record
    Head: Integer;
    Name: array[0..9] of AnsiChar;
    Size: Word;
    Pad: array[0..3] of Byte;
  end;

procedure Update(var ALayout: TOldLayout);
function Minutes(AValue: Integer): Integer;

implementation

procedure Update(var ALayout: TOldLayout);
const
  CPerDay = 1440;
  CTolerance = 5;
  CUsed = 2;
type
  TPair = record A, B: Integer; end;
var
  LText: string;
  LHits: Integer;

  function DayMinutes(ADays: Integer): Integer;
  begin
    Result := ADays * CPerDay;
  end;

begin
  LHits := CUsed;
  ALayout.Size := LHits;
end;

function Minutes(AValue: Integer): Integer;
begin
  Result := AValue;
end;

end.
