unit DataModule;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, IBConnection, SQLDB, DB;

type

  { TDataModule1 }

  TDataModule1 = class(TDataModule)
    Connection: TIBConnection;
    QryLivros: TSQLQuery;
    QryAutor: TSQLQuery;
    QryLivrosANO: TStringField;
    QryLivrosANO1: TStringField;
    QryLivrosDATAAQUISICAO: TDateField;
    QryLivrosDATAAQUISICAO1: TDateField;
    QryLivrosID: TLongintField;
    QryLivrosID1: TLongintField;
    QryLivrosIDAUTOR: TLongintField;
    QryLivrosIDAUTOR1: TLongintField;
    QryLivrosIDCATEGORIA: TLongintField;
    QryLivrosIDCATEGORIA1: TLongintField;
    QryLivrosIDEDITORA: TLongintField;
    QryLivrosIDEDITORA1: TLongintField;
    QryLivrosIDUSUARIO: TLongintField;
    QryLivrosIDUSUARIO1: TLongintField;
    QryLivrosIMAGEM: TBlobField;
    QryLivrosIMAGEM1: TBlobField;
    QryLivrosISBN: TStringField;
    QryLivrosISBN1: TStringField;
    QryLivrosNOME: TStringField;
    QryLivrosNOME1: TStringField;
    QryLivrosQTDPAGINAS: TLongintField;
    QryLivrosQTDPAGINAS1: TLongintField;
    QryLivrosSINOPSE: TStringField;
    QryLivrosSINOPSE1: TStringField;
    SQLTransaction1: TSQLTransaction;
  private

  public

  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.lfm}

end.

