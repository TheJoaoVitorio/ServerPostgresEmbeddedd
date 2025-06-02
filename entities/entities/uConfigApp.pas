unit uConfigApp;

interface

type
  TConfigApp = class
    private
      FPathExecutavel: String;
    public
      property PathExecutavel : String read FPathExecutavel write FPathExecutavel;
  end;

implementation

end.
