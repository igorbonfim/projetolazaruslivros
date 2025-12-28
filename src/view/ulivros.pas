unit uLivros;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBGrids,
  Buttons, DataModule, Util, Model.Livro, DAO.Conexao.Interfaces;

type

  { TFrmLivros }

  TFrmLivros = class(TForm)
    btnExcluir: TBitBtn;
    btnFecharTopo: TBitBtn;
    btnIncluir: TBitBtn;
    btnFechar: TBitBtn;
    btnAlterar: TBitBtn;
    dsLivros: TDataSource;
    grdLivros: TDBGrid;
    edtPesquisar: TLabeledEdit;
    pnlCenter: TPanel;
    pnlFechar: TPanel;
    pnlRodape: TPanel;
    pnlTopo: TPanel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnFecharTopoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FLivro: iEntidade;
  public
    Util: TUTil;
  end;

var
  FrmLivros: TFrmLivros;

implementation

{$R *.lfm}


uses uPrincipal;

{ TFrmLivros }

procedure TFrmLivros.btnFecharClick(Sender: TObject);
begin
  Util.FecharAba(Self.Caption, FrmPrincipal.pgcPrincipal);
end;

procedure TFrmLivros.btnFecharTopoClick(Sender: TObject);
begin
  btnFecharClick(Sender);
end;

procedure TFrmLivros.FormCreate(Sender: TObject);
begin
  FLivro := TModelLivro.New;
  FLivro.Listar(dsLivros);
end;

end.

