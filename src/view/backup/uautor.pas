unit uAutor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, uHeranca, ExtCtrls,
  DBGrids, Buttons, Util, Model.Autor, DAO.Conexao.Interfaces, uCadAutor;

type

  { TFrmAutor }

  TFrmAutor = class(TFrmHeranca)
    dsAutor: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FAutor: iEntidade;
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
  Util.CriarAba(TFrmCadastroAutor, FrmPrincipal.pgcPrincipal);

  if (TFrmCadastroAutor.Salvo) then
    grdListagem.Refresh;
end;

procedure TFrmAutor.FormCreate(Sender: TObject);
begin
  FAutor := TModelAutor.New;
  FAutor.Listar(dsAutor);
end;

end.

