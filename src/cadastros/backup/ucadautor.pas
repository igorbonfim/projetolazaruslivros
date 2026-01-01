unit uCadAutor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, uHerancaCadastro, Util,
  Controller.Autor;

type

  { TFrmCadastroAutor }

  TFrmCadastroAutor = class(TFrmHerancaCadastro)
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public
    Util: TUtil;
    Salvo: Boolean;
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

procedure TFrmCadastroAutor.btnSalvarClick(Sender: TObject);
var
  vControllerAutor: TControllerAutor;
begin
  vControllerAutor := TControllerAutor.Create;
  try
    vControllerAutor.Salvar(edtDescricao.Text);
    Util.FecharAba(Self.Caption, FrmPrincipal.pgcPrincipal);
    Salvo := True;
  finally
    vControllerAutor.Free;
  end;
end;

procedure TFrmCadastroAutor.FormCreate(Sender: TObject);
begin
  Salvo := False;
end;

end.

