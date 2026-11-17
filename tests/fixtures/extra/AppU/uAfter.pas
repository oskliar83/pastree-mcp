unit uAfter;

interface

procedure RunAfter;

implementation

uses
  uDisk,
  uPlain;

procedure WriteDisk;
begin
  DiskWrite;
end;

procedure RunAfter;
begin
  Writeln('after');
end;

end.
