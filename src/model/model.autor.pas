unit Model.Autor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DAO.Conexao.Interfaces, Controller.Factory.Query, DB, SQLDB;

type

  { TAutor }

  TModelAutor = class(TInterfacedObject, iEntidade)
    private
      FQuery: iQuery;
      FId : Integer;
      FNome : String;
    public
      property Id : Integer read FId write FId;
      property Nome : String read FNome write FNome;
      constructor Create;
      destructor Destroy; override;
      class function New: iEntidade;
      function Listar(Value: TDataSource): iEntidade;
  end;

implementation

{ TAutor }

constructor TModelAutor.Create;
begin
  FQuery := TControllerFactoryQuery.New.Query(nil);
end;

destructor TModelAutor.Destroy;
begin

  inherited Destroy;
end;

class function TModelAutor.New(): iEntidade;
begin
  Result := Self.Create;
end;

function TModelAutor.Listar(Value: TDataSource): iEntidade;
begin
  Result := Self;
  FQuery.SQL('SELECT * FROM AUTOR');
  Value.DataSet := FQuery.DataSet;
end;

end.

