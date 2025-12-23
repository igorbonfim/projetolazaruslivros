unit dao.query.firebird;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, DAO.Conexao.Interfaces, DAO.Conexao.Firedac,
  controller.factory.interfaces, DataModule, SQLDB, IBConnection, ZDataset;

type

  { TDAOQueryFirebird }

  TDAOQueryFirebird = class(TInterfacedObject, iQuery)
    private
      FParent: iConexao;
      FQuery: TSQLQuery;
      FTransaction: TSQLTransaction;
    public
      constructor Create(Parent: iConexao);
      destructor Destroy; override;
      class function New(Parent: iConexao): iQuery;
      function SQL(Value: string): iQuery;
      function DataSet: TDataSet;
  end;

implementation

{ TDAOQueryFirebird }

constructor TDAOQueryFirebird.Create(Parent: iConexao);
begin
  FParent := Parent;
  FQuery := TSQLQuery.Create(nil);

  if not Assigned(FParent) then
    FParent := TDAOConexaoFiredac.New;

  FQuery.SQLConnection := TIBConnection(FParent.Connection);
  FQuery.Transaction := FTransaction;
end;

destructor TDAOQueryFirebird.Destroy;
begin
  FreeAndNil(FQuery);
  FreeAndNil(FTransaction);
  inherited Destroy;
end;

class function TDAOQueryFirebird.New(Parent: iConexao): iQuery;
begin
  Result := Self.Create(Parent);
end;

function TDAOQueryFirebird.SQL(Value: string): iQuery;
begin
  Result := Self;
  FQuery.SQL.Clear;
  FQuery.SQL.Add(Value);
  FQuery.Active := True;
end;

function TDAOQueryFirebird.DataSet: TDataSet;
begin
  Result := FQuery;
end;

end.

