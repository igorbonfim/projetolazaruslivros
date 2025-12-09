unit uEditora;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, uHeranca, ExtCtrls, DBGrids,
  StdCtrls, Buttons, DataModule, Util;

type

  { TFrmEditora }

  TFrmEditora = class(TFrmHeranca)
    dsEditora: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  FrmEditora: TFrmEditora;

implementation

{$R *.lfm}

uses uPrincipal;

{ TFrmEditora }

procedure TFrmEditora.FormCreate(Sender: TObject);
begin
  DataModule.DataModule1.QryEditora.Open;
end;

procedure TFrmEditora.btnFecharClick(Sender: TObject);
begin
  Util.FecharAba(Self.Caption, FrmPrincipal.pgcPrincipal);
end;

end.

