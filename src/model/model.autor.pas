unit Model.Autor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DAO.Conexao.Interfaces, DB;

type

  { TAutor }

  TAutor = class(TInterfacedObject, iEntidade)
    private
      FQuery: iQuery;
      FId : Integer;
      FNome : String;
    public
      property Id : Integer read FId write FId;
      property Nome : String read FNome write FNome;
      constructor Create;
      destructor Destroy; override;
      function Listar(Value: TDataSource): iEntidade;
      function ListarCampos(Fields: String; DataSource: TDataSource): iEntidade;
  end;

implementation

{ TAutor }

constructor TAutor.Create;
begin

end;

destructor TAutor.Destroy;
begin
  inherited Destroy;
end;

function TAutor.Listar(Value: TDataSource): iEntidade;
begin
  Result := Self;
  FQuery.SQL('SELECT * FROM AUTOR');
  Value.DataSet := FQuery.DataSet;
end;

function TAutor.ListarCampos(Fields: String; DataSource: TDataSource
  ): iEntidade;
begin
  Result := Self;
  FQuery.SQL('SELECT '+Fields+'FROM AUTOR');
  DataSource.DataSet := FQuery.DataSet;
end;

end.

