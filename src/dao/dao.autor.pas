unit DAO.Autor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Model.Autor, DAO.Conexao.Interfaces, dao.query.firebird,
  DB, Dialogs, SQLDB, DataModule, IBConnection;

type

  { TDAOAutor }

  TDAOAutor = class(TInterfacedObject, iEntidade)
    private
      FQuery: iQuery;
    public
      function Inserir(Autor: TModelAutor): iEntidade;
      function Atualizar(Autor: TModelAutor): iEntidade;
      function Excluir(Autor: TModelAutor): iEntidade;
      function Consultar(Autor: TModelAutor): iEntidade;
      function DataSet: TDataSet;
      function Listar(Value: TDataSource): iEntidade;
  end;

implementation

{ TDAOAutor }

function TDAOAutor.Inserir(Autor: TModelAutor): iEntidade;
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
      Query.SQL.Add('INSERT INTO AUTOR(DESCRICAO) VALUES(:DESCRICAO)');
      Query.ParamByName('DESCRICAO').AsString := Autor.Nome;
      Transaction.StartTransaction;
      Query.ExecSQL;
      Transaction.Commit;
      ShowMessage('Autor gravado com sucesso!');
    except on ex:exception do
      ShowMessage('Ocorreu um erro ao gravar o autor: ' +ex.Message);
    end;
  finally
    FreeAndNil(Query);
    FreeAndNil(Transaction);
  end;
end;

function TDAOAutor.Atualizar(Autor: TModelAutor): iEntidade;
var
  Query: TSQLQuery;
  Transaction: TSQLTransaction;
begin
  try
    Query := TSQLQuery.Create(nil);
    Transaction := TSQLTransaction.Create(nil);
    Query.Transaction := Transaction;
    Transaction.DataBase := DataModule1.Connection;
    DataModule1.Connection.StartTransaction;
    try
      Query.SQLConnection := DataModule1.Connection;
      Query.SQL.Clear;
      Query.SQL.Add('UPDATE AUTOR SET NOME = :NOME');
      Query.ParamByName('NOME').AsString := Autor.Nome;
      Transaction.StartTransaction;
      Query.ExecSQL;
      Transaction.Commit;
    except on ex:exception do
      ShowMessage('Ocorreu um erro ao atualizar o autor: ' +ex.Message);
    end;
  finally
  end;
end;

function TDAOAutor.Excluir(Autor: TModelAutor): iEntidade;
begin

end;

function TDAOAutor.Consultar(Autor: TModelAutor): iEntidade;
begin

end;

function TDAOAutor.DataSet: TDataSet;
begin
  //Result := FQuery;
end;

function TDAOAutor.Listar(Value: TDataSource): iEntidade;
begin
  //
end;

end.

