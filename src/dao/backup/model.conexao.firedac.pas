unit Model.Conexao.Firedac;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Model.Conexao.Interfaces, DB, IBConnection;

type

  { TModelConexaoFiredac }

  TModelConexaoFiredac = class(TInterfacedObject, iConexao)
    private
      FConexao: TIBConnection;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iConexao;
      function Connection: TCustomConnection;
  end;

implementation

{ TModelConexaoFiredac }

constructor TModelConexaoFiredac.Create;
var
  Path: String;
begin
  Path := ExtractFileDir(GetCurrentDir);
  FConexao := TIBConnection.Create(nil);
  FConexao.DatabaseName := Path + '\database\MYBOOKS.FDB';
  FConexao.UserName := 'SYSDBA';
  FConexao.Password := 'masterkey';
end;

destructor TModelConexaoFiredac.Destroy;
begin
  FreeAndNil(FConexao);
  inherited Destroy;
end;

class function TModelConexaoFiredac.New: iConexao;
begin
  Result := Self.Create;
end;

function TModelConexaoFiredac.Connection: TCustomConnection;
begin
  Result := FConexao;
end;

end.

