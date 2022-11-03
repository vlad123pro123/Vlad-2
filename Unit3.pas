unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls,shellapi, Vcl.Menus;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label4: TLabel;
    Image2: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button8: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);

    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button5MouseEnter(Sender: TObject);
    procedure Button5MouseLeave(Sender: TObject);
    procedure Button8MouseEnter(Sender: TObject);
    procedure Button2MouseEnter(Sender: TObject);
    procedure Button1MouseEnter(Sender: TObject);
    procedure Button3MouseEnter(Sender: TObject);
    procedure Button4MouseEnter(Sender: TObject);
    procedure Button6MouseEnter(Sender: TObject);
    procedure Button8MouseLeave(Sender: TObject);
    procedure Button2MouseLeave(Sender: TObject);
    procedure Button1MouseLeave(Sender: TObject);
    procedure Button3MouseLeave(Sender: TObject);
    procedure Button4MouseLeave(Sender: TObject);
    procedure Button6MouseLeave(Sender: TObject);


    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses  Unit6, Unit7, Unit8, Unit9, test, Unit5, Unit11, Rick;

procedure TForm3.Button1Click(Sender: TObject);
begin
Form9.Show;
end;

procedure TForm3.Button1MouseEnter(Sender: TObject); //увеличение кнопок при навидении
begin
 with TButton(Sender)
 do begin
    Left := Left - 5;
    Top := Top - 5;
    Width := Width + 10;
    Height := Height + 10;
    Font.Size := Font.Size + 4;
    end;
end;

procedure TForm3.Button1MouseLeave(Sender: TObject);
begin
 with TButton(Sender)
 do begin
    Left := Left + 5;
    Top := Top + 5;
    Width := Width - 10;
    Height := Height - 10;
    Font.Size := Font.Size - 4;
    end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Form8.Show;
end;

procedure TForm3.Button2MouseEnter(Sender: TObject);
begin
 with TButton(Sender)
 do begin
    Left := Left - 5;
    Top := Top - 5;
    Width := Width + 10;
    Height := Height + 10;
    Font.Size := Font.Size + 4;
    end;
end;

procedure TForm3.Button2MouseLeave(Sender: TObject);
begin
 with TButton(Sender)
 do begin
    Left := Left + 5;
    Top := Top + 5;
    Width := Width - 10;
    Height := Height - 10;
    Font.Size := Font.Size - 4;
    end;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
Form6.Show;
end;

procedure TForm3.Button3MouseEnter(Sender: TObject);
begin
 with TButton(Sender)
 do begin
    Left := Left - 5;
    Top := Top - 5;
    Width := Width + 10;
    Height := Height + 10;
    Font.Size := Font.Size + 4;
    end;
end;

procedure TForm3.Button3MouseLeave(Sender: TObject);
begin
 with TButton(Sender)
 do begin
    Left := Left + 5;
    Top := Top + 5;
    Width := Width - 10;
    Height := Height - 10;
    Font.Size := Font.Size - 4;
    end;
end;
procedure TForm3.Button4Click(Sender: TObject);
begin
Form7.Show;
end;

procedure TForm3.Button4MouseEnter(Sender: TObject);
begin
 with TButton(Sender)
 do begin
    Left := Left - 5;
    Top := Top - 5;
    Width := Width + 10;
    Height := Height + 10;
    Font.Size := Font.Size + 4;
    end;
end;

procedure TForm3.Button4MouseLeave(Sender: TObject);
begin
 with TButton(Sender)
 do begin
    Left := Left + 5;
    Top := Top + 5;
    Width := Width - 10;
    Height := Height - 10;
    Font.Size := Font.Size - 4;
    end;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
Form10.Show;
end;

procedure TForm3.Button5MouseEnter(Sender: TObject);
begin
 with TButton(Sender)
 do begin
    Left := Left - 5;
    Top := Top - 5;
    Width := Width + 10;
    Height := Height + 10;
    Font.Size := Font.Size + 4;
    end;
end;

procedure TForm3.Button5MouseLeave(Sender: TObject); //это для увеличение кнопки при навидении
begin
 with TButton(Sender)
 do begin
    Left := Left + 5;
    Top := Top + 5;
    Width := Width - 10;
    Height := Height - 10;
    Font.Size := Font.Size - 4;
    end;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm3.Button6MouseEnter(Sender: TObject);
begin
 with TButton(Sender)
 do begin
    Left := Left - 5;
    Top := Top - 5;
    Width := Width + 10;
    Height := Height + 10;
    Font.Size := Font.Size + 4;
    end;
end;

procedure TForm3.Button6MouseLeave(Sender: TObject);
begin
 with TButton(Sender)
 do begin
    Left := Left + 5;
    Top := Top + 5;
    Width := Width - 10;
    Height := Height - 10;
    Font.Size := Font.Size - 4;
    end;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
ShellExecute(0,PChar('Open'),PChar('1.chm'),nil,nil,SW_SHOW);
end;

procedure TForm3.Button8Click(Sender: TObject);
begin
Form11.Show;
end;

procedure TForm3.Button8MouseEnter(Sender: TObject);
begin
 with TButton(Sender)
 do begin
    Left := Left - 5;
    Top := Top - 5;
    Width := Width + 10;
    Height := Height + 10;
    Font.Size := Font.Size + 4;
    end;
end;

procedure TForm3.Button8MouseLeave(Sender: TObject);
begin
 with TButton(Sender)
 do begin
    Left := Left + 5;
    Top := Top + 5;
    Width := Width - 10;
    Height := Height - 10;
    Font.Size := Font.Size - 4;
    end;
end;

procedure TForm3.FormCreate(Sender: TObject); //открываем на весь экран
begin
WindowState := wsMaximized;
end;

procedure TForm3.Image2Click(Sender: TObject); //создание искусственного интелекта
var i:integer;
begin
Label1.Visible:=True;
Label4.Caption := IntToStr (StrToInt (Label4.Caption) + 1);
if Label4.Caption='1' then
begin
Label1.Visible:=True;
Label1.Caption:='Привет меня зовут Рик Санчез' ;

 end;
if Label4.Caption='2' then
begin
Label1.Caption:='Сегодня я буду твоим путеводителем' ;

 end;
if Label4.Caption='3' then
begin
Label1.Caption:='Мы рады тебя видеть тут' ;

 end;
 if Label4.Caption='4' then
begin
Label1.Caption:='Предлагаю начать' ;

 end;
if Label4.Caption='5' then
begin
Label1.Caption:='Приложение созданно по мультфильму Рик и Морти' ;

 end;

 if Label4.Caption='6' then
begin
Label1.Caption:='Тут есть всё: и комиксы, и игры ,выбирай что хочешь' ;

 end;
 if Label4.Caption='7' then
begin
Label1.Caption:='Нравится игры рядом с тобой появилась кнопка нажми' ;
 Button1.Visible:=True;

 end;
 if Label4.Caption='8' then
begin
Label1.Caption:='Вижу тебе понравилась игра,попробуй наши комиксы' ;

 Button2.Visible:=True;
 end;
if Label4.Caption='9' then
begin
Label1.Caption:='Именно для тебя был создан сайт для знакомства с героями' ;

 Button3.Visible:=True;
 end;
 if Label4.Caption='10' then
begin
Label1.Caption:='Предлагаю посмотреть видео с отрывком Илона Маска' ;

 Button4.Visible:=True;
 end;
if Label4.Caption='11' then
begin
Label1.Caption:='Ну вот наше знакомоство подошло к концу,предлогаю пройти тест и получить отметку' ;

 Button5.Visible:=True;
 end;
 if Label4.Caption='12' then
begin
Label1.Caption:='Не знаю понабится ли тебе линза но мало ли ты захочешь рассмотреть все' ;

 Button6.Visible:=True;
 end;
 if Label4.Caption='13' then
begin
Label1.Caption:='Чисто от меня попробуй посоревноваться со мной в крестики нолики' ;

 Button8.Visible:=True;
 end;
end;

procedure TForm3.Label1Click(Sender: TObject);
begin
Form9.Show;
end;

procedure TForm3.Label2Click(Sender: TObject);
begin
Form6.Show;
end;



procedure TForm3.Label3Click(Sender: TObject);
begin
Form8.Show;
end;


procedure TForm3.Label4Click(Sender: TObject);
begin
//Form7.Show;
end;

procedure TForm3.Label5Click(Sender: TObject);
begin
Form10.Show;
end;



procedure TForm3.N3Click(Sender: TObject);
begin
Form2.Close;
end;

procedure TForm3.N4Click(Sender: TObject);
begin
 ShellExecute(0,PChar('Open'),PChar('1.chm'),nil,nil,SW_SHOW);
end;

end.
