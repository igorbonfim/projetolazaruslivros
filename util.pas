unit Util;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Dialogs, Controls, ComCtrls;

type

  { TUtil }

  TUtil = class

    function AbaExiste(sNomeAba: string; aPageControl: TPageControl): Boolean;
    procedure AbrirForm(aForm: TFormClass);
    procedure CriarAba(aForm: TFormClass; aPageControl: TPageControl);
    procedure FecharAba(sNomeAba: string; aPageControl: TPageControl);
end;

implementation

procedure TUtil.CriarAba(aForm: TFormClass; aPageControl: TPageControl);
var
  TabSheet: TTabSheet;
  Form: TForm;
  Util: TUtil;
begin
  Form := aForm.Create(nil);

  if AbaExiste(Form.Caption, aPageControl) then
  begin
    if Assigned(Form) then
      FreeAndNil(Form);
  end;

  TabSheet := TTabSheet.Create(nil);
  TabSheet.PageControl := aPageControl;
  TabSheet.Caption := Form.Caption;

  Form.Align := alClient;
  Form.BorderStyle := bsNone;
  Form.Parent := TabSheet;
  Form.Show;

  aPageControl.ActivePage := TabSheet;
end;

function TUtil.AbaExiste(sNomeAba: string; aPageControl: TPageControl): Boolean;
var
  i: integer;
begin
  Result := false;

  for i := 0 to aPageControl.PageCount - 1 do
  begin
    if LowerCase(aPageControl.Pages[i].Caption) = LowerCase(sNomeAba) then
    begin
      aPageControl.ActivePage := aPageControl.Pages[i];
      aPageControl.TabIndex := i;
      Result := true;
      break;
    end;
  end;
end;

procedure TUtil.FecharAba(sNomeAba: string; aPageControl: TPageControl);
var
  i: integer;
begin
  for i := 0 to aPageControl.PageCount - 1 do
  begin
    if LowerCase(aPageControl.Pages[i].Caption) = LowerCase(sNomeAba) then
    begin
      aPageControl.Pages[i].Destroy;
      aPageControl.ActivePageIndex := i - 1;
      break;
    end;
  end;
end;

procedure TUtil.AbrirForm(aForm: TFormClass);
var
  vForm: TForm;
begin
  try
    try
      vForm := TForm.Create(nil);
      vForm.ShowModal;
    finally
      vForm.Release;
    end;
  except on ex:exception do
    ShowMessage(ex.Message);
  end;
end;

end.

