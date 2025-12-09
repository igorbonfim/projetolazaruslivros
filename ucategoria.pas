unit uCategoria;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, uHeranca, ExtCtrls, DBGrids,
  StdCtrls, Buttons, DataModule, Util;
type

  { TFrmCategoria }

  TFrmCategoria = class(TFrmHeranca)
    btnExcluir: TBitBtn;
    btnIncluir: TBitBtn;
    btnFechar: TBitBtn;
    btnAlterar: TBitBtn;
    edtPesquisar: TLabeledEdit;
    pnlCenter: TPanel;
    pnlRodape: TPanel;
    pnlTopo: TPanel;
    dsCategoria: TDataSource;
    grdListagem: TDBGrid;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public
   Util: TUtil;
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

