unit uLivros;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBGrids,
  StdCtrls, DataModule, Util;

type

  { TFrmLivros }

  TFrmLivros = class(TForm)
    btnFechar: TButton;
    dsLivros: TDataSource;
    DBGrid1: TDBGrid;
    pnlCenter: TPanel;
    pnlRodape: TPanel;
    pnlTopo: TPanel;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public
    Util: TUTil;
  end;

var
  FrmLivros: TFrmLivros;

implementation

{$R *.lfm}

{ TFrmLivros }

procedure TFrmLivros.FormCreate(Sender: TObject);
begin
  DataModule.DataModule1.QryLivros.Open;
end;

procedure TFrmLivros.btnFecharClick(Sender: TObject);
begin
  Util.FecharAba(Self.Caption, FrmPrincipal.pgcPrincipal);
end;

end.

