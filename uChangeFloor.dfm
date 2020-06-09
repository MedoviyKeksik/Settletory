object frmChangeFloor: TfrmChangeFloor
  Left = 0
  Top = 0
  Caption = 'Change floor'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lvFloor: TListView
    Left = 24
    Top = 32
    Width = 329
    Height = 225
    Columns = <
      item
        Caption = 'Room Number'
      end
      item
        Caption = 'Students'
      end>
    TabOrder = 0
    ViewStyle = vsReport
  end
  object pnlMain: TPanel
    Left = 400
    Top = 40
    Width = 185
    Height = 217
    TabOrder = 1
    object btnAdd: TButton
      Left = 48
      Top = 33
      Width = 75
      Height = 25
      Action = actAdd
      TabOrder = 0
    end
    object btnEdit: TButton
      Left = 48
      Top = 64
      Width = 75
      Height = 25
      Action = actEdit
      TabOrder = 1
    end
    object btnChange: TButton
      Left = 48
      Top = 112
      Width = 75
      Height = 25
      Action = actChange
      TabOrder = 2
    end
    object btnDelete: TButton
      Left = 48
      Top = 159
      Width = 75
      Height = 25
      Action = actDelete
      TabOrder = 3
    end
  end
  object aiChangeFloor: TActionList
    OnUpdate = aiChangeFloorUpdate
    Left = 440
    Top = 256
    object actAdd: TAction
      Caption = 'Add'
      OnExecute = actAddExecute
    end
    object actEdit: TAction
      Caption = 'Edit'
      OnExecute = actEditExecute
    end
    object actChange: TAction
      Caption = 'Change'
      OnExecute = actChangeExecute
    end
    object actDelete: TAction
      Caption = 'Delete'
      OnExecute = actDeleteExecute
    end
  end
end
