unit uServerOnlineTabController;

interface

uses
  uShellController,

  uConnectionParameters,

  Winapi.Windows,
  System.Generics.Collections,
  System.SysUtils,
  System.Classes;

type
  TServerOnlineTabController = class
    private
    public
      class function GetListDatabases(AParams : TConnectionParameters) : TStringList;
  end;

implementation

{ TServerOnlineTabController }

class function TServerOnlineTabController.GetListDatabases(AParams: TConnectionParameters): TStringList;
begin
  result := TShellController.ListDatabases(AParams);
end;

end.
