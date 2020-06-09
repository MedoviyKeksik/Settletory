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
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 488
    Top = 0
    Width = 147
    Height = 299
    Align = alRight
    TabOrder = 0
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
      ExplicitTop = 111
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
      ExplicitLeft = 13
      ExplicitTop = 134
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
      ExplicitTop = 156
    end
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 488
    Height = 299
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 32
    ExplicitTop = 8
    ExplicitWidth = 434
    object lvDorminotory: TListView
      Left = 1
      Top = 42
      Width = 486
      Height = 256
      Align = alClient
      Columns = <
        item
          AutoSize = True
          Caption = 'Number'
        end>
      ColumnClick = False
      GridLines = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      ExplicitLeft = 24
      ExplicitTop = 48
      ExplicitWidth = 257
      ExplicitHeight = 201
    end
    object pnlLabel: TPanel
      Left = 1
      Top = 1
      Width = 486
      Height = 41
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 152
      ExplicitTop = 16
      ExplicitWidth = 185
      object lblName: TLabel
        Left = 16
        Top = 10
        Width = 64
        Height = 18
        Caption = 'Floors List'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
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
