unit uConfigController;

interface

uses
  Windows,
  System.IniFiles, uConfigApp, System.SysUtils;

type
  TConfigController = class
    private
    public
      class function SetConfiguracao : TConfigApp;
      class function GetNameComputer : String;

      class var _Config : TConfigApp;
  end;

implementation

{ TConfigController }

class function TConfigController.GetNameComputer: String;
var
  Buffer: array[0..MAX_COMPUTERNAME_LENGTH + 1] of Char;
  Size: DWORD;
begin
  Size := SizeOf(Buffer);
  if GetComputerName(Buffer, Size) then
    Result := Buffer
  else
    Result := 'Desconhecido';
end;

class function TConfigController.SetConfiguracao: TConfigApp;
begin

  Result := nil;

  try

    if not Assigned(_Config) then
      _Config := TConfigApp.Create;

    with _Config do
    begin
      ExecutablePath := ExtractFilePath(ParamStr(0));
      ComputerName := GetNameComputer;
    end;

    Result := _Config;
  except
    raise Exception.Create('Erro ao setar as configurações!');
  end;
end;

end.
