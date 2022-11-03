unit Rick;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit3, Unit4;



procedure TForm2.FormCreate(Sender: TObject); //открывайем на весь экран
begin
WindowState := wsMaximized;
end;



procedure TForm2.Image1Click(Sender: TObject);//открываем форму загрузки
begin
Form4.show

end;

end.
