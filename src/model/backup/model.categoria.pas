unit Model.Categoria;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DAO.Conexao.Interfaces, Controller.Factory.Query, DB, SQLDB;

type

  { TModelCategoria }

  TModelCategoria = class(TInterfacedObject, iEntidade)
    private
      FQuery: iQuery;
      FId: Integer;
      FNome: String;
    public
      property Id : Integer read FId write FId;
      property Nome : String read FNome write FNome;
      constructor Create;
      destructor Destroy; override;
      class function New: iEntidade;
      function Listar(Value: TDataSource): iEntidade;
  end;

implementation

{ TModelCategoria }

constructor TModelCategoria.Create;
begin
  FQuery := TControllerFactoryQuery.New.Query(nil);
end;

destructor TModelCategoria.Destroy;
begin
  inherited Destroy;
end;

class function TModelCategoria.New: iEntidade;
begin
  Result := Self.Create;
end;

function TModelCategoria.Listar(Value: TDataSource): iEntidade;
begin
  FQuery.SQL.Clear;
  FQuery.SQL('SELECT * FROM CATEGORIA');
  Value.DataSet := FQuery.DataSet;
end;

end.

