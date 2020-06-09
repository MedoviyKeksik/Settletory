object frmChangeStudents: TfrmChangeStudents
  Left = 0
  Top = 0
  Caption = 'Change students'
  ClientHeight = 365
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lvStudents: TListView
    Left = 8
    Top = 80
    Width = 297
    Height = 177
    Columns = <
      item
        Caption = 'Name'
      end
      item
        Caption = 'Day of Arrival'
      end
      item
        Caption = 'Day of Departure'
      end>
    TabOrder = 0
    ViewStyle = vsReport
  end
  object pnlMain: TPanel
    Left = 392
    Top = 29
    Width = 249
    Height = 201
    TabOrder = 1
    object btnAdd: TButton
      Left = 80
      Top = 64
      Width = 75
      Height = 25
      Action = actAdd
      TabOrder = 0
    end
    object btnEdit: TButton
      Left = 80
      Top = 95
      Width = 75
      Height = 25
      Action = actEdit
      TabOrder = 1
    end
    object btnDelete: TButton
      Left = 80
      Top = 136
      Width = 75
      Height = 25
      Action = actDelete
      TabOrder = 2
    end
  end
  object alChangeStudents: TActionList
    OnUpdate = alChangeStudentsUpdate
    Left = 424
    Top = 272
    object actAdd: TAction
      Caption = 'Add'
      OnExecute = actAddExecute
    end
    object actEdit: TAction
      Caption = 'Edit'
      OnExecute = actEditExecute
    end
    object actDelete: TAction
      Caption = 'Delete'
      OnExecute = actDeleteExecute
    end
  end
end
