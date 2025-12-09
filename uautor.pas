unit uAutor;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, uHeranca, ExtCtrls, DBGrids,
  StdCtrls, Buttons, DataModule, Util;

type

  { TFrmAutor }

  TFrmAutor = class(TFrmHeranca)
    dsAutor: TDataSource;
    btnExcluir: TBitBtn;
    btnIncluir: TBitBtn;
    btnFechar: TBitBtn;
    btnAlterar: TBitBtn;
    dsLivros: TDataSource;
    grdLivros: TDBGrid;
    edtPesquisar: TLabeledEdit;
    pnlCenter: TPanel;
    pnlRodape: TPanel;
    pnlTopo: TPanel;
    procedure btnFecharClick(Sender: TObject);
  private

  public
    Util: TUtil;
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

end.

