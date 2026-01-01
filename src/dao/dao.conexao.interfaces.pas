unit DAO.Conexao.Interfaces;

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
    function ParamByNameString(Value, Param: String): iQuery;
  end;

  iEntidade = interface
    ['{55325106-49A9-4678-BD65-F891242D816C}']
    function Listar(Value: TDataSource): iEntidade;
  end;

implementation

end.

