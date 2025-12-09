unit uEditora;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, uHeranca, ExtCtrls, DBGrids,
  StdCtrls, Buttons, DataModule, Util;

type

  { TFrmEditora }

  TFrmEditora = class(TFrmHeranca)
    btnExcluir: TBitBtn;
    btnIncluir: TBitBtn;
    btnFechar: TBitBtn;
    btnAlterar: TBitBtn;
    grdLivros: TDBGrid;
    edtPesquisar: TLabeledEdit;
    pnlCenter: TPanel;
    pnlRodape: TPanel;
    pnlTopo: TPanel;
    dsEditora: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public
    Util: TUtil;
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

