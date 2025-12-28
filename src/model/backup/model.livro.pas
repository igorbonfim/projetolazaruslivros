unit Model.Livro;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DAO.Conexao.Interfaces, Controller.Factory.Query, DB, SQLDB, DateUtils;

type

  { TModelLivro }

  TModelLivro = class(TInterfacedObject, iEntidade)
    private
      FQuery: iQuery;
      FId: Integer;
      FNome: String;
      FAno: String;
      FDataAquisicao: TDate;
      FSinopse: String;
      FISBN: String;
      FImagem: TBlobData;
      FPaginas: String;
      FIdAutor: Integer;
      FIdCategoria: Integer;
      FIdEditora: Integer;
    public
      property Id : Integer read FId write FId;
      property Nome : String read FNome write FNome;
      property Ano : String read FAno write FAno;
      property DataAquisicao : TDate read FDataAquisicao write FDataAquisicao;
      property Sinopse : String read FSinopse write FSinopse;
      property ISBN : String read FISBN write FISBN;
      property Imagem : TBlobData read FImagem write FImagem;
      property Paginas : String read FPaginas write FPaginas;
      property IdAutor : Integer read FIdAutor write FIdAutor;
      property IdCategoria : Integer read FIdCategoria write FIdCategoria;
      property IdEditora : Integer read FIdEditora write FIdEditora;
      constructor Create;
      destructor Destroy; override;
      class function New: iEntidade;
      function Listar(Value: TDataSource): iEntidade;
      function ConsultarLivros: String;
  end;

implementation

{ TModelLivro }

constructor TModelLivro.Create;
begin
  FQuery := TControllerFactoryQuery.New.Query(nil);
end;

destructor TModelLivro.Destroy;
begin
  inherited Destroy;
end;

class function TModelLivro.New: iEntidade;
begin
  Result := Self.Create;
end;

function TModelLivro.Listar(Value: TDataSource): iEntidade;
begin
  Result := Self;
  FQuery.SQL(ConsultarLivros);
  Value.DataSet := FQuery.DataSet;
end;

function TModelLivro.ConsultarLivros: String;
begin
  Result := 'SELECT  li.id, '+
	    'li.nome, '+
	    'a.DESCRICAO AS Autor,'+
	    'e.DESCRICAO AS Editora,'+
	    'c.DESCRICAO AS Categoria,'+
	    'li.ano,'+
	    'li.isbn,'+
	    'li.qtdpaginas'+
            'FROM LIVRO li '+
            'LEFT JOIN AUTOR a ON li.IDAUTOR = a.ID '+
            'LEFT JOIN EDITORA e ON li.IDEDITORA = e.ID '+
            'LEFT JOIN CATEGORIA c ON li.IDCATEGORIA = c.ID';
end;

end.

