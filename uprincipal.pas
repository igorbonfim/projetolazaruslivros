unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, EditBtn,
  Buttons, Menus, ButtonPanel, RTTICtrls;

type

  { TFrmPrincipal }

  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
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
  private

  public

  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.lfm}

end.

