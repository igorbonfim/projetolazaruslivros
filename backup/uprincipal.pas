unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, EditBtn,
  Buttons, Menus, ButtonPanel, ComCtrls, uLivros, Util, uAutor, RTTICtrls,
  PrintersDlgs;

type

  { TFrmPrincipal }

  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    pnlSair: TPanel;
    pgcPrincipal: TPageControl;
    pnlConteudo: TPanel;
    pnlLivros: TPanel;
    pnlEditoras: TPanel;
    pnlCategorias: TPanel;
    pnlAutores: TPanel;
    pnlRodape: TPanel;
    pnlTopo: TPanel;
    btnAutores: TSpeedButton;
    btnCategorias: TSpeedButton;
    btnEditoras: TSpeedButton;
    btnLivros: TSpeedButton;
    btnSair: TSpeedButton;
    procedure btnAutoresClick(Sender: TObject);
    procedure btnLivrosClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private

  public
    Util: TUtil;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.lfm}

{ TFrmPrincipal }

procedure TFrmPrincipal.btnLivrosClick(Sender: TObject);
begin
  Util.CriarAba(TFrmLivros, pgcPrincipal)
end;

procedure TFrmPrincipal.btnAutoresClick(Sender: TObject);
begin
  Util.CriarAba(TFrmAutor, pgcPrincipal);
end;

procedure TFrmPrincipal.btnSairClick(Sender: TObject);
begin
  if(MessageDlg('Deseja encerrar a aplicação?', mtConfirmation, [mbYes, mbNo], 0) = mbYes) then
    Application.Terminate;
end;

end.

