object frmChangeStudents: TfrmChangeStudents
  Left = 0
  Top = 0
  Caption = 'Change students'
  ClientHeight = 390
  ClientWidth = 749
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
    Left = 596
    Top = 0
    Width = 153
    Height = 390
    Align = alRight
    TabOrder = 0
    ExplicitLeft = 552
    ExplicitHeight = 365
    object btnAdd: TButton
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 131
      Height = 40
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
      Top = 71
      Width = 131
      Height = 40
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
      ExplicitTop = 131
      ExplicitWidth = 163
    end
    object btnDelete: TButton
      AlignWithMargins = True
      Left = 11
      Top = 131
      Width = 131
      Height = 40
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
      TabOrder = 2
      ExplicitLeft = 13
      ExplicitTop = 207
    end
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 596
    Height = 390
    Align = alClient
    AutoSize = True
    TabOrder = 1
    ExplicitLeft = 192
    ExplicitTop = 24
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnlName: TPanel
      Left = 1
      Top = 1
      Width = 594
      Height = 41
      Align = alTop
      TabOrder = 0
      ExplicitLeft = -249
      ExplicitTop = 58
      ExplicitWidth = 705
      object Label1: TLabel
        Left = 16
        Top = 10
        Width = 71
        Height = 18
        Caption = 'Student list'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
    object lvStudents: TListView
      Left = 1
      Top = 42
      Width = 594
      Height = 347
      Align = alClient
      Columns = <
        item
          AutoSize = True
          Caption = 'Name'
        end
        item
          Caption = 'Day of Arrival'
          MaxWidth = 150
          MinWidth = 100
          Width = 100
        end
        item
          Caption = 'Day of Departure'
          MaxWidth = 150
          MinWidth = 100
          Width = 100
        end>
      ColumnClick = False
      GridLines = True
      RowSelect = True
      TabOrder = 1
      ViewStyle = vsReport
      ExplicitWidth = 550
      ExplicitHeight = 322
    end
  end
  object alChangeStudents: TActionList
    OnUpdate = alChangeStudentsUpdate
    Left = 608
    Top = 312
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
