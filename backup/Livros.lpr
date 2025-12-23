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
  Forms, runtimetypeinfocontrols, printer4lazarus, DataModule, Model.Autor,
  uPrincipal, DAO.Conexao.Firedac, DAO.Conexao.Interfaces, uCadAutor,
  uCadCategoria, uCadEditora, uHeranca, uHerancaCadastro, uAutor, uCategoria,
  uEditora, uLivros, controller.factory.interfaces, dao.query.firebird, 
  Controller.Factory.Query
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.

