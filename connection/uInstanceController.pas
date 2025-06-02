unit uInstanceController;

interface

uses
  uConnection;

type
  TInstanceController = class
    private
      sqlite3Connection: TConnection;

      class var FInstance : TInstanceController;
    public
      class function GetInstance : TInstanceController;
      class procedure RealeseInstance; static;

      constructor Create;
      destructor Destroy; override;

      property SQLiteConnection : TConnection read sqlite3Connection write sqlite3Connection;
  end;

implementation

{ TInstanceController }

constructor TInstanceController.Create;
begin
  sqlite3Connection := TConnection.Create();
end;

destructor TInstanceController.Destroy;
begin
  sqlite3Connection.Free;
  inherited;
end;

class function TInstanceController.GetInstance: TInstanceController;
begin
  if not Assigned(Self.FInstance) then
    Self.FInstance := TInstanceController.Create;

  Result := Self.FInstance;
end;

class procedure TInstanceController.RealeseInstance;
begin

  if FInstance <> nil then
  begin
    FInstance.Free;
    FInstance := nil;
  end;

end;


initialization

finalization
  TInstanceController.RealeseInstance;

end.
