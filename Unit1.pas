unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus;

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
    R1: TMenuItem;
    Proporcja1: TMenuItem;
    Proporcja2: TMenuItem;
    PenyEkran1: TMenuItem;
    PenyEkran2: TMenuItem;
    N2: TMenuItem;
    Nastpny1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
