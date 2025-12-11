unit uCadCategoria;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, uHerancaCadastro, Util;

type

  { TFrmCadCategoria }

  TFrmCadCategoria = class(TFrmHerancaCadastro)
    procedure btnCancelarClick(Sender: TObject);
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

end.

