unit Model.Autor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

type
  TAutor = class
    private
      FId : Integer;
      FNome : String;
    public
      property Id : Integer read FId write FId;
      property Nome : String read FNome write FNome;
      constructor Create;
      destructor Destroy; override;
  end;

implementation

end.

