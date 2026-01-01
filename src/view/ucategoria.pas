unit uCategoria;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, uHeranca, ExtCtrls,
  DBGrids, Buttons, Util, DAO.Conexao.Interfaces, Model.Categoria,
  uCadCategoria;
type

  { TFrmCategoria }

  TFrmCategoria = class(TFrmHeranca)
    dsCategoria: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FCategoria: iEntidade;
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
  FCategoria := TModelCategoria.New;
  FCategoria.Listar(dsCategoria);
end;

procedure TFrmCategoria.btnFecharClick(Sender: TObject);
begin
  Util.FecharAba(Self.Caption, FrmPrincipal.pgcPrincipal);
end;

procedure TFrmCategoria.btnIncluirClick(Sender: TObject);
begin
  Util.CriarAba(TFrmCadCategoria, FrmPrincipal.pgcPrincipal);
end;

end.

