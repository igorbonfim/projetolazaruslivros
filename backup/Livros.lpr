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
  uPrincipal, uCadAutor, uCadCategoria, uCadEditora, uHeranca, uHerancaCadastro,
  uAutor, uCategoria, uEditora, uLivros, unit1
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.

