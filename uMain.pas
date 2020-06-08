unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.ImageList,
  Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ExtCtrls, Vcl.StdActns,
  Vcl.Menus, Vcl.StdCtrls, uStructures, uDynArray;

type
  TfrmMain = class(TForm)
    lvMain: TListView;
    alMain: TActionList;
    ilMain: TImageList;
    pnlButtons: TPanel;
    mmMain: TMainMenu;
    FileOpen: TFileOpen;
    FileSaveAs: TFileSaveAs;
    FileExit: TFileExit;
    File1: TMenuItem;
    Open1: TMenuItem;
    SaveAs1: TMenuItem;
    Exit1: TMenuItem;
    TableAddDorminotory: TAction;
    able1: TMenuItem;
    Adddorminotary1: TMenuItem;
    btnAdd: TButton;
    btnEdit: TButton;
    btnChange: TButton;
    btnDelete: TButton;
    TableEditDorminotory: TAction;
    TableDeleteDorminotory: TAction;
    TableChangeDorminotory: TAction;
    Editdorminotory1: TMenuItem;
    Changedorminotory1: TMenuItem;
    Deletedorminotory1: TMenuItem;
    procedure TableAddDorminotoryExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FDorminotories: TDynArray<TDorminotory>;
    procedure Update;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uDorminotory;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FDorminotories := TDynArray<TDorminotory>.Create;
end;

procedure TfrmMain.TableAddDorminotoryExecute(Sender: TObject);
var
  Res: Integer;
  Tmp: TDorminotory;
begin
  Res := frmDorminotary.ShowVal;
  if Res = mrOk then
  begin
    Tmp := TDorminotory.Create;
    Tmp.Name := frmDorminotary.Name;
    Tmp.Addres := frmDorminotary.Address;
    FDorminotories.PushBack(Tmp);
    Update;
  end;
end;

procedure TfrmMain.Update;
var
  I: Integer;
  Item: TListItem;
begin
  lvMain.Items.Clear;
  for I := Low(FDorminotories.Data) to High(FDorminotories.Data) do
  begin
    Item := lvMain.Items.Add;
    Item.Caption := IntToStr(I + 1);
    with FDorminotories.Data[I] do
    begin
      Item.SubItems.Add(Name);
      Item.SubItems.Add(Addres);
    end;
  end;

end;

end.
