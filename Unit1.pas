unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, System.IniFiles;

type
  TForm1 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    PopupMenu1: TPopupMenu;
    Plik1: TMenuItem;
    Obraz1: TMenuItem;
    PokaManagerObrazw1: TMenuItem;
    Zamknij1: TMenuItem;
    N1: TMenuItem;
    Rozciagnij1: TMenuItem;
    Proporcja1: TMenuItem;
    Wycentruj1: TMenuItem;
    PenyEkran1: TMenuItem;
    Poprzedni: TMenuItem;
    N2: TMenuItem;
    Nastpny1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Rozciagnij1Click(Sender: TObject);
    procedure Proporcja1Click(Sender: TObject);
    procedure Wycentruj1Click(Sender: TObject);
    procedure PenyEkran1Click(Sender: TObject);
    procedure PoprzedniClick(Sender: TObject);
    procedure Nastpny1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PokaManagerObrazw1Click(Sender: TObject);
    procedure Zamknij1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  INI: TIniFile;
  CurDir: String;
  CurWidth, CurHeight, CurLeft, CurTop : Integer;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  CurDir := GetCurrentDir;
  Form1.DoubleBuffered := True;

  try
    INI := TIniFile.Create(CurDir+'\Settings.ini');
    Rozciagnij1.Checked := INI.ReadBool('Image1','Stretch',False);
    Proporcja1.Checked := INI.ReadBool('Image1','Proportional',False);
    Wycentruj1.Checked := INI.ReadBool('Image1','Center',True);

  finally
    FreeAndNil(INI);
  end;

  Image1.Stretch := Rozciagnij1.Checked;
  Image1.Proportional := Proporcja1.Checked;
  Image1.Center := Wycentruj1.Checked;

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  try
    INI := TIniFile.Create(CurDir+'\Settings.ini');
    INI.WriteBool('Image1','Stretch',Rozciagnij1.Checked);
    INI.WriteBool('Image1','Proportional',Proporcja1.Checked);
    INI.WriteBool('Image1','Center',Wycentruj1.Checked);
  finally
    FreeAndNil(INI);
  end;
end;


procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_DOWN:
      Nastpny1.Click;
    VK_UP:
      Poprzedni.Click;
  end;
end;

procedure TForm1.Nastpny1Click(Sender: TObject);
begin
  try
    Form2.FileListBox1.ItemIndex := Form2.FileListBox1.ItemIndex+1;
    Form2.FileListBox1.OnClick(Self);
  except
  end;
end;

procedure TForm1.PenyEkran1Click(Sender: TObject);
begin
  PenyEkran1.Checked := not PenyEkran1.Checked;

  if PenyEkran1.Checked then
    begin
     CurWidth := Form1.Width;
     CurHeight := Form1.Height;
     CurLeft := Form1.Left;
     CurTop := Form1.Top;
     Plik1.Visible := False;
     Form1.WindowState := wsMaximized;
     Form1.BorderStyle := bsNone;
    end
    else begin
     Plik1.Visible := True;
     Form1.WindowState := wsNormal;
     Form1.BorderStyle := bsSizeable;
     Form1.Width := CurWidth;
     Form1.Height := CurHeight;
     Form1.Left := CurLeft;
     Form1.Top := CurTop;
    end;

end;

procedure TForm1.PokaManagerObrazw1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.Zamknij1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.PoprzedniClick(Sender: TObject);
begin
  try
    Form2.FileListBox1.ItemIndex:=Form2.FileListBox1.ItemIndex-1;
    if Form2.FileListBox1.ItemIndex < 0 then Form2.FileListBox1.ItemIndex := 0;
    Form2.FileListBox1.OnClick(Self);
  except
  end;
end;

procedure TForm1.Proporcja1Click(Sender: TObject);
begin
   Proporcja1.Checked := not Proporcja1.Checked;
   Image1.Proportional := Proporcja1.Checked;
end;

procedure TForm1.Rozciagnij1Click(Sender: TObject);
begin
   Rozciagnij1.Checked := not Rozciagnij1.Checked;
   Image1.Stretch := Rozciagnij1.Checked;
end;

procedure TForm1.Wycentruj1Click(Sender: TObject);
begin
   Wycentruj1.Checked := not Wycentruj1.Checked;
   Image1.Center := Wycentruj1.Checked;
end;

end.
