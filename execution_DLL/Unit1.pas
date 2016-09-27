unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm1 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
function calc(a, b, index: integer): integer; external 'project2.dll';
//Говорим компилятору что эта функция находится в project2.dll
//теперь библиотеку .dll в каталог с проектом и можно использовать
//объявленную в библиотеке функцию как обычную функцию
{$R *.dfm}

end.
