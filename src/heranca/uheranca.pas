unit uHeranca;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  DBGrids, StdCtrls, Util, RTTICtrls;

type

  { TFrmHeranca }

  TFrmHeranca = class(TForm)
    btnFecharTopo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    btnIncluir: TBitBtn;
    edtPesquisar: TEdit;
    grdListagem: TDBGrid;
    pnlFechar: TPanel;
    pnlCenter: TPanel;
    pnlRodape: TPanel;
    pnlTopo: TPanel;
    btnPesquisar: TSpeedButton;
    procedure btnFecharTopoClick(Sender: TObject);

  private

  public
    Util: TUtil;
  end;

var
  FrmHeranca: TFrmHeranca;

implementation

{$R *.lfm}

uses uPrincipal;

{ TFrmHeranca }


procedure TFrmHeranca.btnFecharTopoClick(Sender: TObject);
begin
  Util.FecharAba(Self.Caption, FrmPrincipal.pgcPrincipal);
end;

end.

