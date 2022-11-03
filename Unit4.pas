unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.GIFImg, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Samples.Gauges;

type
  TForm4 = class(TForm)
    Image1: TImage;
    Gauge1: TGauge;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit3;

procedure TForm4.Button1Click(Sender: TObject);
begin
Timer1.Enabled:=True;
end;

procedure TForm4.FormCreate(Sender: TObject);  //вставляем гифку
begin


(Image1.Picture.Graphic as  TGIFImage).Animate:=True;
end;







procedure TForm4.Timer1Timer(Sender: TObject); //запонение бегущей строки
begin
gauge1.Progress:= gauge1.Progress+1;
if gauge1.Progress=100 then
begin
Form3.show;
Form4.Hide;
Timer1.Enabled:=false;
end;
end;
end.
