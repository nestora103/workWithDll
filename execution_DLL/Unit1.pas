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
//������� ����������� ��� ��� ������� ��������� � project2.dll
//������ ���������� .dll � ������� � �������� � ����� ������������
//����������� � ���������� ������� ��� ������� �������
{$R *.dfm}

end.
