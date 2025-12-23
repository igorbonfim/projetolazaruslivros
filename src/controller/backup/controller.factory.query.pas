unit Controller.Factory.Query;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, controller.factory.interfaces, DAO.Query.Firebird, DAO.Conexao.Interfaces;

type

  { TControllerFactoryQuery }

  TControllerFactoryQuery = class(TInterfacedObject, iFactoryQuery)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iFactoryQuery;
      function Query(Connection: iConexao): iQuery;
  end;

implementation

{ TControllerFactoryQuery }

constructor TControllerFactoryQuery.Create;
begin

end;

destructor TControllerFactoryQuery.Destroy;
begin
  inherited Destroy;
end;

class function TControllerFactoryQuery.New: iFactoryQuery;
begin
  Result := Self.Create;
end;

function TControllerFactoryQuery.Query(Connection: iConexao): iQuery;
begin

end;

end.

