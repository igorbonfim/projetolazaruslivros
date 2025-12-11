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
  Forms, uPrincipal, runtimetypeinfocontrols, printer4lazarus, uLivros,
  DataModule, Util, uHeranca, uAutor, uEditora, uCategoria, uHerancaCadastro,
  uCadAutor, uCadCategoria, uCadEditora
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFrmHerancaCadastro, FrmHerancaCadastro);
  Application.CreateForm(TFrmCadastroAutor, FrmCadastroAutor);
  Application.CreateForm(TFrmCadCategoria, FrmCadCategoria);
  Application.CreateForm(TFrmCadEditora, FrmCadEditora);
  Application.Run;
end.

