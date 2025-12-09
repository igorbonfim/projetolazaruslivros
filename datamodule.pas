unit DataModule;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, IBConnection, SQLDB, DB;

type

  { TDataModule1 }

  TDataModule1 = class(TDataModule)
    Connection: TIBConnection;
    QryAutorDESCRICAO: TStringField;
    QryAutorID: TLongintField;
    QryLivros: TSQLQuery;
    QryAutor: TSQLQuery;
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

