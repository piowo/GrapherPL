object Form2: TForm2
  Left = 183
  Top = 154
  Caption = 'Manager Obraz'#243'w'
  ClientHeight = 456
  ClientWidth = 330
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object DriveComboBox1: TDriveComboBox
    Left = 8
    Top = 8
    Width = 314
    Height = 19
    DirList = DirectoryListBox1
    TabOrder = 0
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 8
    Top = 33
    Width = 314
    Height = 184
    FileList = FileListBox1
    TabOrder = 1
  end
  object FilterComboBox1: TFilterComboBox
    Left = 8
    Top = 223
    Width = 314
    Height = 21
    FileList = FileListBox1
    Filter = 
      'Bitmapy i pliki JPEG|*.bmp; *.jpg; *.jpeg|Bitmapy|*.bmp|Pliki JP' +
      'EG|*.jpg; *.jpeg|Pliki TIFF|*.tiff|Wszystkie pliki|*.*'
    TabOrder = 2
  end
  object FileListBox1: TFileListBox
    Left = 8
    Top = 250
    Width = 314
    Height = 198
    ItemHeight = 13
    TabOrder = 3
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 168
    Top = 392
  end
end
