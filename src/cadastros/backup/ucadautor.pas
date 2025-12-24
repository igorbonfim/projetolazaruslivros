unit uCadAutor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, uHerancaCadastro, Util;

type

  { TFrmCadastroAutor }

  TFrmCadastroAutor = class(TFrmHerancaCadastro)
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private

  public
    Util: TUtil;
  end;

var
  FrmCadastroAutor: TFrmCadastroAutor;

implementation

{$R *.lfm}

uses uPrincipal;

{ TFrmCadastroAutor }

procedure TFrmCadastroAutor.btnCancelarClick(Sender: TObject);
begin
  Util.FecharAba(Self.Caption, FrmPrincipal.pgcPrincipal);
end;

procedure TFrmCadastroAutor.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  FrmCadastroAutor.Release;
end;

end.

