unit DAO.Conexao.Firedac;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DAO.Conexao.Interfaces, DB, IBConnection;

type

  { TDAOConexaoFiredac }

  TDAOConexaoFiredac = class(TInterfacedObject, iConexao)
    private
      FConexao: TIBConnection;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iConexao;
      function Connection: TSQLConnection;
  end;

implementation

{ TDAOConexaoFiredac }

constructor TDAOConexaoFiredac.Create;
var
  ExePath, RootPath: String;
begin
  ExePath := ParamStr(0);
  RootPath := ExtractFileDir(ExePath);

  FConexao := TIBConnection.Create(nil);
  FConexao.DatabaseName := RootPath + '\database\MYBOOKS.FDB';
  FConexao.UserName := 'SYSDBA';
  FConexao.Password := 'masterkey';
  FConexao.Connected := True;
end;

destructor TDAOConexaoFiredac.Destroy;
begin
  FreeAndNil(FConexao);
  inherited Destroy;
end;

class function TDAOConexaoFiredac.New: iConexao;
begin
  Result := Self.Create;
end;

function TDAOConexaoFiredac.Connection: TSQLConnection;
begin
  Result := FConexao;
end;

end.

