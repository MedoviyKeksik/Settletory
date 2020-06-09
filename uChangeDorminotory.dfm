object frmChangeDorminotory: TfrmChangeDorminotory
  Left = 0
  Top = 0
  Caption = 'Change dorminotory'
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
  object lvDorminotory: TListView
    Left = 24
    Top = 48
    Width = 257
    Height = 201
    Columns = <
      item
        Caption = 'Number'
      end>
    TabOrder = 0
    ViewStyle = vsReport
  end
  object pnlMain: TPanel
    Left = 408
    Top = 86
    Width = 201
    Height = 163
    TabOrder = 1
    object btnAdd: TButton
      Left = 48
      Top = 16
      Width = 75
      Height = 25
      Action = actAdd
      TabOrder = 0
    end
    object btnEdit: TButton
      Left = 48
      Top = 47
      Width = 75
      Height = 25
      Action = actEdit
      TabOrder = 1
    end
    object btnChange: TButton
      Left = 48
      Top = 78
      Width = 75
      Height = 25
      Action = actChange
      TabOrder = 2
    end
    object btnDelete: TButton
      Left = 48
      Top = 109
      Width = 75
      Height = 25
      Action = actDelete
      TabOrder = 3
    end
  end
  object aiDorminotory: TActionList
    OnUpdate = aiDorminotoryUpdate
    Left = 336
    Top = 112
    object actAdd: TAction
      Caption = 'Add'
      OnExecute = actAddExecute
    end
    object actEdit: TAction
      Caption = 'actEdit'
      OnExecute = actEditExecute
    end
    object actChange: TAction
      Caption = 'actChange'
      OnExecute = actChangeExecute
    end
    object actDelete: TAction
      Caption = 'actDelete'
      OnExecute = actDeleteExecute
    end
  end
end
