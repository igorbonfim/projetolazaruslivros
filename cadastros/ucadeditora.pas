unit uCadEditora;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, uHerancaCadastro, Util;

type

  { TFrmCadEditora }

  TFrmCadEditora = class(TFrmHerancaCadastro)
    procedure btnCancelarClick(Sender: TObject);
  private

  public
    Util: TUtil;
  end;

var
  FrmCadEditora: TFrmCadEditora;

implementation

{$R *.lfm}

uses uPrincipal;

{ TFrmCadEditora }

procedure TFrmCadEditora.btnCancelarClick(Sender: TObject);
begin
  Util.FecharAba(Self.Caption, FrmPrincipal.pgcPrincipal);
end;

end.

