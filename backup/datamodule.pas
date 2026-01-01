unit DataModule;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, ExtCtrls, IBConnection,
  SQLDB, DB;

type

  { TDataModule1 }

  TDataModule1 = class(TDataModule)
    Connection: TIBConnection;
    QryCategoriaDESCRICAO: TStringField;
    QryCategoriaID: TLongintField;
    QryAutorDESCRICAO: TStringField;
    QryAutorDESCRICAO1: TStringField;
    QryAutorID: TLongintField;
    QryAutorID1: TLongintField;
    QryLivrosANO: TStringField;
    QryLivrosDATAAQUISICAO: TDateField;
    QryLivrosID: TLongintField;
    QryLivrosIDAUTOR: TLongintField;
    QryLivrosIDCATEGORIA: TLongintField;
    QryLivrosIDEDITORA: TLongintField;
    QryLivrosIDUSUARIO: TLongintField;
    QryLivrosIMAGEM: TBlobField;
    QryLivrosISBN: TStringField;
    QryLivrosNOME: TStringField;
    QryLivrosQTDPAGINAS: TLongintField;
    QryLivrosSINOPSE: TStringField;
    SQLTransaction1: TSQLTransaction;
  private

  public

  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.lfm}

end.

