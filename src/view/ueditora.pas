unit uEditora;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, uHeranca, ExtCtrls, DBGrids,
  Buttons, Util, Model.Editora, DAO.Conexao.Interfaces, uCadEditora;

type

  { TFrmEditora }

  TFrmEditora = class(TFrmHeranca)
    dsEditora: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FEditora: iEntidade;
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
  FEditora := TModelEditora.New;
  FEditora.Listar(dsEditora);
end;

procedure TFrmEditora.btnFecharClick(Sender: TObject);
begin
  Util.FecharAba(Self.Caption, FrmPrincipal.pgcPrincipal);
end;

procedure TFrmEditora.btnIncluirClick(Sender: TObject);
begin
  Util.CriarAba(TFrmCadEditora, FrmPrincipal.pgcPrincipal);
end;

end.

