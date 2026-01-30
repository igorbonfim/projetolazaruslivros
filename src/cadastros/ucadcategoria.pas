unit uCadCategoria;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, uHerancaCadastro, Util,
  Controller.Categoria;

type

  { TFrmCadCategoria }

  TFrmCadCategoria = class(TFrmHerancaCadastro)
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private

  public
    Util: TUtil;
  end;

var
  FrmCadCategoria: TFrmCadCategoria;

implementation

{$R *.lfm}

uses uPrincipal;

{ TFrmCadCategoria }

procedure TFrmCadCategoria.btnCancelarClick(Sender: TObject);
begin
  Util.FecharAba(Self.Caption, FrmPrincipal.pgcPrincipal);
end;

procedure TFrmCadCategoria.btnSalvarClick(Sender: TObject);
var
  vControllerCategoria: TControllerCategoria;
begin
  vControllerCategoria := TControllerCategoria.Create;

  try
    vControllerCategoria.Salvar(edtDescricao.Text);
    Util.FecharAba(Self.Caption, FrmPrincipal.pgcPrincipal);
  finally
    vControllerCategoria.Free;
  end;
end;

end.

