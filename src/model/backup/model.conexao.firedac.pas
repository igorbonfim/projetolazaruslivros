unit Model.Conexao.Firedac;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Model.Conexao.Interfaces, DB;

type

  { TModelConexaoFiredac }

  TModelConexaoFiredac = class(TInterfacedObject, iConexao)
    private
      FConexao: TFDConnection;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iConexao;
      function Connection: TCustomConnection;
  end;

implementation

{ TModelConexaoFiredac }

constructor TModelConexaoFiredac.Create;
begin
  FConexao := TFDConnection.Create(nil);
  FConexao.DriverName := 'FB';
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

