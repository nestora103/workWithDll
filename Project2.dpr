library Project2;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  Classes;

{$R *.res}

function calc(a, b, index: integer): integer;
begin
if index = 0 then //если index = 0 то сложим числа
    Result:= a + b;
if index = 1 then //если index = 1 то вычтем из 1 числа 2 число
    Result:= a - b;
end;
exports calc;  //Позволим другим программам использовать эту функцию

begin
end.
 