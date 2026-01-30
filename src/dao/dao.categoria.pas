unit DAO.Categoria;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Model.Categoria, DAO.Conexao.Interfaces, dao.query.firebird,
  DB, Dialogs, SQLDB, DataModule, IBConnection;

type

  { TDAOCategoria }

  TDAOCategoria = class(TInterfacedObject, iEntidade)
    private
      FQuery: iQuery;
    public
      function Inserir(Categoria: TModelCategoria): iEntidade;
      function Atualizar(Categoria: TModelCategoria): iEntidade;
      function Excluir(Categoria: TModelCategoria): iEntidade;
      function DataSet: TDataSet;
      function Listar(Value: TDataSource): iEntidade;
  end;

implementation

{ TDAOCategoria }

function TDAOCategoria.Inserir(Categoria: TModelCategoria): iEntidade;
var
  Query: TSQLQuery;
  Transaction: TSQLTransaction;
begin
  try
    Query := TSQLQuery.Create(nil);
    Transaction := TSQLTransaction.Create(nil);
    Query.Transaction := Transaction;
    Transaction.DataBase := DataModule1.Connection;
    try
      Query.SQLConnection := DataModule1.Connection;
      Query.SQL.Clear;
      Query.SQL.Add('INSERT INTO CATEGORIA(DESCRICAO) VALUES(:DESCRICAO)');
      Query.ParamByName('DESCRICAO').AsString := Categoria.Nome;
      Transaction.StartTransaction;
      Query.ExecSQL;
      Transaction.Commit;
      ShowMessage('Categoria gravada com sucesso!');
    except on ex:exception do
      ShowMessage('Ocorreu um erro ao gravar a categoria: ' +ex.Message);
    end;
  finally
    FreeAndNil(Query);
    FreeAndNil(Transaction);
  end;
end;

function TDAOCategoria.Atualizar(Categoria: TModelCategoria): iEntidade;
begin

end;

function TDAOCategoria.Excluir(Categoria: TModelCategoria): iEntidade;
begin

end;

function TDAOCategoria.DataSet: TDataSet;
begin

end;

function TDAOCategoria.Listar(Value: TDataSource): iEntidade;
begin

end;

end.

