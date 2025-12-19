unit Model.Conexao.Interfaces;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB;

type
  iConexao = interface
    ['{1A73B65E-A4B9-484D-8B99-2714F884323D}']
    function Connection: TCustomConnection;
  end;

  iQuery = interface
    ['{193977A8-03C7-4763-B970-EE64FCB147F9}']
    function SQL(Value: String): iQuery;
    function DataSet: TDataSet;
  end;

implementation

end.

