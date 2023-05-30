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
    Plik2: TMenuItem;
    PokaManagerObrazw1: TMenuItem;
    PokaManagerObrazw2: TMenuItem;
    N1: TMenuItem;
    Rozciagnij1: TMenuItem;
    Proporcja1: TMenuItem;
    Wycentruj1: TMenuItem;
    PenyEkran1: TMenuItem;
    PenyEkran2: TMenuItem;
    N2: TMenuItem;
    Nastpny1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Rozciagnij1Click(Sender: TObject);
    procedure Proporcja1Click(Sender: TObject);
    procedure Wycentruj1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  INI: TIniFile;
  CurDir: String;

implementation

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
    INI.Free;
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
    INI.Free;
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
