unit uAutor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, uHeranca, ExtCtrls, DBGrids,
  StdCtrls, Buttons, DataModule, Util, uCadAutor;

type

  { TFrmAutor }

  TFrmAutor = class(TFrmHeranca)
    dsAutor: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  FrmAutor: TFrmAutor;

implementation

{$R *.lfm}

uses uPrincipal;

{ TFrmAutor }

procedure TFrmAutor.btnFecharClick(Sender: TObject);
begin
  Util.FecharAba(Self.Caption, FrmPrincipal.pgcPrincipal);
end;

procedure TFrmAutor.btnIncluirClick(Sender: TObject);
begin
  Util.CriarAba(TFrmCadastroAutor, pgcPrincipal);
end;

procedure TFrmAutor.FormCreate(Sender: TObject);
begin
  DataModule.DataModule1.QryAutor.Open;
end;

end.

