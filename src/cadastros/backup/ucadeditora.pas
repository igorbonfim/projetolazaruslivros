unit uCadEditora;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, uHerancaCadastro, Util;

type
  TFrmCadEditora = class(TFrmHerancaCadastro)
  private

  public
    Util: TUtil;
  end;

var
  FrmCadEditora: TFrmCadEditora;

implementation

{$R *.lfm}

uses uPrincipal;

end.

