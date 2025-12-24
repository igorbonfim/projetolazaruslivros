unit Model.Editora;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DAO.Conexao.Interfaces, Controller.Factory.Query, DB, SQLDB;

type

  { TModelEditora }

  TModelEditora = class(TInterfacedObject, iEntidade)
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

{ TModelEditora }

constructor TModelEditora.Create;
begin
  FQuery := TControllerFactoryQuery.New.Query(nil);
end;

destructor TModelEditora.Destroy;
begin
  inherited Destroy;
end;

class function TModelEditora.New: iEntidade;
begin
  Result := Self.Create;
end;

function TModelEditora.Listar(Value: TDataSource): iEntidade;
begin
  Result := Self;
  FQuery.SQL('SELECT * FROM EDITORA');
  Value.DataSet := FQuery.DataSet;
end;

end.

