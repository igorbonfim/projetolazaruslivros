program Livros;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, runtimetypeinfocontrols, printer4lazarus, DataModule, zcomponent,
  Model.Autor, uPrincipal, DAO.Conexao.Firedac, DAO.Conexao.Interfaces,
  uCadAutor, uCadCategoria, uCadEditora, uHeranca, uHerancaCadastro, uAutor,
  uCategoria, uEditora, uLivros, controller.factory.interfaces,
  dao.query.firebird, Controller.Factory.Query;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.

