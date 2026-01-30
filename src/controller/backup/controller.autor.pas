unit Controller.Autor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Model.Autor, DAO.Autor, DAO.Conexao.Interfaces, Dialogs, StdCtrls;

type

  { TControllerAutor }

  TControllerAutor = class
    public
      function Salvar(aNome: String): iEntidade;
      procedure ValidaNome(aNome: String; aEdit: TEdit);
  end;

implementation

{ TControllerAutor }

function TControllerAutor.Salvar(aNome: String): iEntidade;
var
  vAutor: TModelAutor;
  vDAO: TDAOAutor;
begin
  ValidaNome(aNome);

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

procedure TControllerAutor.ValidaNome(aNome: String; aEdit: TEdit);
begin
  if aNome = '' then
  begin
   ShowMessage('Campo descrição obrigatório');
   aEdit.SetFocus;
   exit;
  end;
end;

end.

