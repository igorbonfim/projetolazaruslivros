unit Controller.Autor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Model.Autor, DAO.Autor, DAO.Conexao.Interfaces, Dialogs;

type

  { TControllerAutor }

  TControllerAutor = class
    public
      function Salvar(aNome: String): iEntidade;
  end;

implementation

{ TControllerAutor }

function TControllerAutor.Salvar(aNome: String): iEntidade;
var
  vAutor: TModelAutor;
  vDAO: TDAOAutor;
begin
  if aNome = '' then
  begin
   ShowMessage('Campo nome obrigatório');
   exit;
  end;

  vAutor := TModelAutor.Create;
  vDAO := TDAOAutor.Create;

  try
    vAutor.Nome := aNome;
    vDAO.Inserir(vAutor);
  finally
    vAutor.Free;
    vDAO.Free;
  end;
end;

end.

