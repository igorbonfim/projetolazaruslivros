unit uCategoria;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, uHeranca, ExtCtrls, DBGrids,
  StdCtrls, Buttons, DataModule, Util;
type

  { TFrmCategoria }

  TFrmCategoria = class(TFrmHeranca)
    dsCategoria: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  FrmCategoria: TFrmCategoria;

implementation

{$R *.lfm}

uses uPrincipal;

{ TFrmCategoria }

procedure TFrmCategoria.FormCreate(Sender: TObject);
begin
  DataModule.DataModule1.QryCategoria.Open;
end;

procedure TFrmCategoria.btnFecharClick(Sender: TObject);
begin
  Util.FecharAba(Self.Caption, FrmPrincipal.pgcPrincipal);
end;

end.

