unit uHerancaCadastro;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, DBCtrls;

type

  { TFrmHerancaCadastro }

  TFrmHerancaCadastro = class(TForm)
    btnCancelar: TSpeedButton;
    edtID: TDBEdit;
    edtDescricao: TDBEdit;
    Image1: TImage;
    lblID: TLabel;
    Label2: TLabel;
    lblCadastro: TLabel;
    pnlRodape: TPanel;
    pnlTopoCadastro: TPanel;
    btnSalvar: TSpeedButton;
  private

  public

  end;

var
  FrmHerancaCadastro: TFrmHerancaCadastro;

implementation

{$R *.lfm}

end.

