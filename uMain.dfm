object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Settletory'
  ClientHeight = 556
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmMain
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lvMain: TListView
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 708
    Height = 550
    Align = alClient
    Columns = <
      item
        Caption = 'Id'
        MinWidth = 50
        Width = -2
        WidthType = (
          -2)
      end
      item
        Caption = 'Name'
        MinWidth = 50
        Width = -2
        WidthType = (
          -2)
      end
      item
        Caption = 'Addres'
        MinWidth = 50
        Width = -2
        WidthType = (
          -2)
      end>
    GridLines = True
    ReadOnly = True
    TabOrder = 0
    ViewStyle = vsReport
  end
  object pnlButtons: TPanel
    Left = 714
    Top = 0
    Width = 250
    Height = 556
    Align = alRight
    TabOrder = 1
    object btnAdd: TButton
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 228
      Height = 50
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Action = TableAddDorminotory
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object btnEdit: TButton
      AlignWithMargins = True
      Left = 11
      Top = 81
      Width = 228
      Height = 50
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Action = TableEditDorminotory
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object btnChange: TButton
      AlignWithMargins = True
      Left = 11
      Top = 151
      Width = 228
      Height = 50
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Action = TableChangeDorminotory
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object btnDelete: TButton
      AlignWithMargins = True
      Left = 11
      Top = 221
      Width = 228
      Height = 50
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Action = TableDeleteDorminotory
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object alMain: TActionList
    Images = ilMain
    OnUpdate = alMainUpdate
    Left = 536
    Top = 448
    object FileOpen: TFileOpen
      Category = 'File'
      Caption = '&Open...'
      Hint = 'Open|Opens an existing file'
      ImageIndex = 0
      ShortCut = 16463
      OnAccept = FileOpenAccept
    end
    object FileSaveAs: TFileSaveAs
      Category = 'File'
      Caption = 'Save &As...'
      Hint = 'Save As|Saves the active file with a new name'
      ImageIndex = 1
      ShortCut = 16467
      OnAccept = FileSaveAsAccept
    end
    object FileExit: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 2
    end
    object TableAddDorminotory: TAction
      Caption = 'Add dorminotory'
      ShortCut = 16462
      OnExecute = TableAddDorminotoryExecute
    end
    object TableEditDorminotory: TAction
      Caption = 'Edit dorminotory'
      OnExecute = TableEditDorminotoryExecute
    end
    object TableDeleteDorminotory: TAction
      Caption = 'Delete dorminotory'
      ShortCut = 46
      OnExecute = TableDeleteDorminotoryExecute
    end
    object TableChangeDorminotory: TAction
      Caption = 'Change dorminotory'
      OnExecute = TableChangeDorminotoryExecute
    end
  end
  object ilMain: TImageList
    Left = 592
    Top = 448
    Bitmap = {
      494C010103000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860086868600868686008686
      8600868686008686860086868600868686008686860086868600FFFFFF00C0C0
      C00086868600C0C0C000FFFFFF00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860086868600868686008686
      860086868600868686008686860086868600868686008686860086868600FFFF
      FF0086868600FFFFFF0086868600868686000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008000000080000000800000008000
      00000000000000000000868686008686860086868600FFFFFF00FFFFFF00FFFF
      FF00800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000008080000080800000808000008080000080800000808000008080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000C0C0C0000000
      0000008080000000000000000000000000000000000000000000000000008000
      0000FF00000080000000000000000000000086868600FFFFFF00FFFFFF00FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00000000000080
      8000008080000080800000808000008080000080800000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000C0C0C0000000
      0000008080000000000000000000000000000000000000000000000000008000
      000080000000FF0000008000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF000000
      0000008080000080800000808000008080000080800000808000008080000080
      8000008080000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000008080000000000000000000000000000000000000000000000000008000
      0000FF00000080000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000080800000808000008080000080800000808000008080000080
      8000008080000080800000000000000000000000000000000000000000000000
      0000008080000080800000808000008080000080800000808000008080000080
      8000008080000000000000000000000000000000000000000000000000008000
      000080000000FF0000008000000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000000000000000000000000000000000000000000080
      8000008080000000000000000000000000000000000000000000000000008000
      0000FF00000080000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000008080000000000000000000000000000000000000000000000000008000
      000080000000FF0000008000000000000000FFFFFF00FFFF0000FFFFFF00FFFF
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000008080000000000000000000000000000000000000000000000000008000
      0000FF00000080000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
      FF00800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000080800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000800000008000000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFF7E00000000FFFFBFFF00000000
      001FF00300000000000FE003E00700000007E003E00700000003E003E0070000
      0001E003E007000000002003E0070000001FE002E0070000001FE003E0070000
      001FE003E00700008FF1E003FFFF0000FFF9E003F81F0000FF75FFFFF81F0000
      FF8FBF7DF81F0000FFFF7F7EFFFF000000000000000000000000000000000000
      000000000000}
  end
  object mmMain: TMainMenu
    Images = ilMain
    Left = 464
    Top = 448
    object File1: TMenuItem
      Caption = 'File'
      object Open1: TMenuItem
        Action = FileOpen
      end
      object SaveAs1: TMenuItem
        Action = FileSaveAs
      end
      object Exit1: TMenuItem
        Action = FileExit
      end
    end
    object able1: TMenuItem
      Caption = 'Table'
      object Adddorminotary1: TMenuItem
        Action = TableAddDorminotory
      end
      object Editdorminotory1: TMenuItem
        Action = TableEditDorminotory
      end
      object Changedorminotory1: TMenuItem
        Action = TableChangeDorminotory
      end
      object Deletedorminotory1: TMenuItem
        Action = TableDeleteDorminotory
      end
    end
  end
end
