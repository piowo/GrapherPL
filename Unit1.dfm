object Form1: TForm1
  Left = 549
  Top = 154
  Caption = 'Grapher PL'
  ClientHeight = 435
  ClientWidth = 690
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 690
    Height = 435
    Align = alClient
    ExplicitLeft = 24
    ExplicitTop = 16
    ExplicitWidth = 657
    ExplicitHeight = 105
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 24
    object Plik1: TMenuItem
      Caption = 'Plik'
      object PokaManagerObrazw1: TMenuItem
        Caption = 'Poka'#380' Manager Obraz'#243'w'
        ShortCut = 16467
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object PokaManagerObrazw2: TMenuItem
        Caption = 'Zamknij'
        ShortCut = 32883
      end
    end
    object Plik2: TMenuItem
      Caption = 'Obraz'
      object R1: TMenuItem
        Caption = 'Rozci'#261'gnij'
        ShortCut = 16466
      end
      object Proporcja1: TMenuItem
        Caption = 'Proporcja'
        ShortCut = 16464
      end
      object Proporcja2: TMenuItem
        Caption = 'Wycentruj'
        Checked = True
        ShortCut = 16451
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 56
    Top = 24
    object PenyEkran1: TMenuItem
      Caption = 'Pe'#322'ny Ekran'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object PenyEkran2: TMenuItem
      Caption = 'Poprzedni'
    end
    object Nastpny1: TMenuItem
      Caption = 'Nast'#281'pny'
    end
  end
end
