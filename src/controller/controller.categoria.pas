unit Controller.Categoria;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Model.Categoria, DAO.Categoria, DAO.Conexao.Interfaces, Dialogs;

type

  { TControllerCategoria }

  TControllerCategoria = class
  public
    function Salvar(aNome: String): iEntidade;
  end;

implementation

{ TControllerCategoria }

function TControllerCategoria.Salvar(aNome: String): iEntidade;
var
  vCategoria: TModelCategoria;
  vDAO: TDAOCategoria;
begin
  if aNome = '' then
  begin
   ShowMessage('Campo descrição obrigatório');
   exit;
  end;

  vCategoria := TModelCategoria.Create;
  vDAO := TDAOCategoria.Create;

  try
    vCategoria.Nome := aNome;
    vDAO.Inserir(vCategoria);
  finally
    vCategoria.Free;
    vDAO.Free;
  end;
end;

end.

