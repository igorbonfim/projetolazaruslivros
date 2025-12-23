unit controller.factory.interfaces;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DAO.Conexao.Interfaces;

type
  iFactoryQuery = interface
    ['{722B7269-0A6D-4B23-87E0-A86ED6969EBB}']
    function Query(Connection: iConexao): iQuery;
  end;

implementation

end.

