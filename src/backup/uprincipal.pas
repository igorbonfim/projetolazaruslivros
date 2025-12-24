unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, Menus, ComCtrls, StdCtrls, uLivros, Util, DAO.Conexao.Firedac,
  uAutor, uEditora, uCategoria, RTTICtrls;

type

  { TFrmPrincipal }

  TFrmPrincipal = class(TForm)
    lblConectaBanco: TLabel;
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
    procedure btnCategoriasClick(Sender: TObject);
    procedure btnEditorasClick(Sender: TObject);
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
  Util.CriarAba(TFrmLivros, pgcPrincipal);
end;

procedure TFrmPrincipal.btnAutoresClick(Sender: TObject);
begin
  Util.CriarAba(TFrmAutor, pgcPrincipal);
end;

procedure TFrmPrincipal.btnCategoriasClick(Sender: TObject);
begin
  Util.CriarAba(TFrmCategoria, pgcPrincipal);
end;

procedure TFrmPrincipal.btnEditorasClick(Sender: TObject);
begin
  Util.CriarAba(TFrmEditora, pgcPrincipal);
end;

procedure TFrmPrincipal.btnSairClick(Sender: TObject);
begin
  if(MessageDlg('Deseja encerrar a aplicação?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    Application.Terminate;
end;

end.

