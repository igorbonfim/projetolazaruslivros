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
    edtId: TEdit;
    edtDescricao: TEdit;
    Image1: TImage;
    lblID: TLabel;
    Label2: TLabel;
    lblCadastro: TLabel;
    pnlLineBottom: TPanel;
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

