unit uHeranca;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    btnIncluir: TBitBtn;
    edtPesquisar: TLabeledEdit;
    pnlRodape: TPanel;
    pnlTopo: TPanel;
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

end.

