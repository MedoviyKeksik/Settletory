object frmChangeFloor: TfrmChangeFloor
  Left = 0
  Top = 0
  Caption = 'Change floor'
  ClientHeight = 407
  ClientWidth = 755
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 608
    Top = 0
    Width = 147
    Height = 407
    Align = alRight
    TabOrder = 0
    ExplicitLeft = 488
    ExplicitHeight = 299
    object btnAdd: TButton
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 125
      Height = 30
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Action = actAdd
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 163
    end
    object btnEdit: TButton
      AlignWithMargins = True
      Left = 11
      Top = 61
      Width = 125
      Height = 30
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Action = actEdit
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 12
      ExplicitTop = 42
    end
    object btnChange: TButton
      AlignWithMargins = True
      Left = 11
      Top = 111
      Width = 125
      Height = 30
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Action = actChange
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ExplicitTop = 61
      ExplicitWidth = 163
    end
    object btnDelete: TButton
      AlignWithMargins = True
      Left = 11
      Top = 161
      Width = 125
      Height = 30
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Action = actDelete
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      ExplicitTop = 111
      ExplicitWidth = 163
    end
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 608
    Height = 407
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 96
    ExplicitTop = 8
    ExplicitWidth = 185
    ExplicitHeight = 41
    object lvFloor: TListView
      Left = 1
      Top = 42
      Width = 606
      Height = 364
      Align = alClient
      Columns = <
        item
          Caption = 'Room Number'
          MaxWidth = 150
          MinWidth = 100
          Width = 100
        end
        item
          AutoSize = True
          Caption = 'Students'
        end>
      ColumnClick = False
      GridLines = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      ExplicitLeft = 56
      ExplicitTop = 56
      ExplicitWidth = 329
      ExplicitHeight = 225
    end
    object pnlLabel: TPanel
      Left = 1
      Top = 1
      Width = 606
      Height = 41
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 232
      ExplicitTop = 32
      ExplicitWidth = 185
      object Label1: TLabel
        Left = 16
        Top = 10
        Width = 71
        Height = 18
        Caption = 'Rooms List'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object aiChangeFloor: TActionList
    OnUpdate = aiChangeFloorUpdate
    Left = 544
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
