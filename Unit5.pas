unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
begin
ControlStyle:=ControlStyle+[csOpaque]; // ћы велим ему не стирать изображение, а рисовать поверх
end;

procedure TForm5.Timer1Timer(Sender: TObject);
var
  Pos: TPoint; // «десь должны хранитьс€ координаты курсора.
  SRect: TRect;
  Scale: Integer;
  C: TCanvas; // ѕромежуточна€ канва дл€ вывода изображени€.
begin
  GetCursorPos(Pos);
  Scale:=10;
  SRect:=Rect(Pos.x,Pos.y,Pos.x,Pos.y); // создаем точечный пр€моугольник
  InflateRect(SRect,Trunc(Image1.Width/Scale),Trunc(Image1.Height/Scale)); // увеличиваем наш точечный пр€моугольник до нужных размеров
  C:=TCanvas.Create; // инициализаци€ промежуточной канвы
  try
    C.Handle:=GetDC(0); // получаем на канву изображение с экрана, можно и так C.Handle:=GetDesktopWindow();
    Image1.Canvas.CopyRect(Rect(0,0,Image1.Width,Image1.Height),C,SRect);
  finally
    C.Free;
  end;
end;
end.
