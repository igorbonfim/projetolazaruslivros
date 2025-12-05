unit uLivros;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBGrids,
  DataModule;

type

  { TFrmLivros }

  TFrmLivros = class(TForm)
    dsLivros: TDataSource;
    DBGrid1: TDBGrid;
    pnlCenter: TPanel;
    pnlRodape: TPanel;
    pnlTopo: TPanel;
    procedure FormCreate(Sender: TObject);
  private

  public

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

end.

