unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.FileCtrl, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.GIFImg, Vcl.Imaging.GIFConsts,
  Vcl.Imaging.pngimage, Vcl.Imaging.pnglang, System.IniFiles;

type
  TForm2 = class(TForm)
    DriveComboBox1: TDriveComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FilterComboBox1: TFilterComboBox;
    FileListBox1: TFileListBox;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FileListBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;
{$R *.dfm}

procedure TForm2.FileListBox1Click(Sender: TObject);
begin
  Form1.Image1.Picture.LoadFromFile(FileListBox1.FileName);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  try
    INI := TINIFile.Create(CurDir+'\Settings.ini');
    DirectoryListBox1.Directory := INI.ReadString('Path','Directory','C:\');
  finally
    FreeAndNil(INI);
  end;
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
  try
    INI := TINIFile.Create(CurDir+'\Settings.ini');
    INI.WriteString('Path','Directory',DirectoryListBox1.Directory);
  finally
    FreeAndNil(INI);
  end;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  Form2.Left := Form1.Left-Form2.Width;
  Form2.Top := Form1.Top;
end;

end.
