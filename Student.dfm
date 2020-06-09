object frmStudent: TfrmStudent
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Student'
  ClientHeight = 204
  ClientWidth = 203
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblIn: TLabel
    Left = 8
    Top = 56
    Width = 65
    Height = 13
    Caption = 'Day of arrival'
  end
  object lblOut: TLabel
    Left = 8
    Top = 107
    Width = 83
    Height = 13
    Caption = 'Day of departure'
  end
  object edtName: TLabeledEdit
    Left = 8
    Top = 24
    Width = 186
    Height = 21
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.Caption = 'Name'
    TabOrder = 0
  end
  object dtpArrival: TDateTimePicker
    Left = 8
    Top = 75
    Width = 186
    Height = 21
    Date = 43991.000000000000000000
    Time = 0.173228252315311700
    TabOrder = 1
  end
  object dtpDeparture: TDateTimePicker
    Left = 8
    Top = 126
    Width = 186
    Height = 21
    Date = 43991.000000000000000000
    Time = 0.173228252315311700
    TabOrder = 2
  end
  object btnOk: TButton
    Left = 8
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Ok'
    Default = True
    ModalResult = 1
    TabOrder = 3
  end
  object btnCancel: TButton
    Left = 119
    Top = 168
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 4
  end
end
