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
    procedure TableEditDorminotoryExecute(Sender: TObject);
    procedure TableDeleteDorminotoryExecute(Sender: TObject);
    procedure alMainUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure TableChangeDorminotoryExecute(Sender: TObject);
    procedure FileOpenAccept(Sender: TObject);
    procedure FileSaveAsAccept(Sender: TObject);
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

uses uDorminotory, uChangeDorminotory;

procedure TfrmMain.alMainUpdate(Action: TBasicAction; var Handled: Boolean);
begin
  TableAddDorminotory.Enabled := True;
  TableChangeDorminotory.Enabled := lvMain.ItemIndex <> -1;
  TableEditDorminotory.Enabled := lvMain.ItemIndex <> -1;
  TableDeleteDorminotory.Enabled := lvMain.ItemIndex <> -1;
end;

function Extension(const FileName, Extension: String): String;
begin
  if Length(FileName) < Length(Extension) then
    Result := FileName + Extension
  else
  begin
    if Copy(FileName, Length(FileName) - Length(Extension) + 1,
      Length(Extension)) <> Extension then
      Result := FileName + Extension
    else
      Result := FileName;
  end;
end;

procedure TfrmMain.FileOpenAccept(Sender: TObject);
var
  Stream: TFileStream;
  Tmp: Integer;
  FileName: String;
  I: Integer;
begin
  FileName := Extension((Sender as TFileOpen).Dialog.FileName, '.sf');
  Stream := TFileStream.Create(FileName, fmOpenRead);
  LoadInteger(Tmp, Stream);
  for I := 0 to Length(FDorminotories.Data) - 1 do
    FDorminotories.Data[I].Free;
  SetLength(FDorminotories.Data, Tmp);
  for I := 0 to Tmp - 1 do
  begin
    FDorminotories.Data[I] := TDorminotory.Create;
    FDorminotories.Data[I].LoadFromFStream(Stream);
  end;
  Stream.Free;
  Update;
end;

procedure TfrmMain.FileSaveAsAccept(Sender: TObject);
  var
  Stream: TFileStream;
  FileName: String;
  I: Integer;
begin
  FileName := Extension((Sender as TFileSaveAs).Dialog.FileName, '.sf');
  Stream := TFileStream.Create(FileName, fmCreate);
  SaveInteger(Length(FDorminotories.Data), Stream);
  for I := 0 to Length(FDorminotories.Data) - 1 do
    FDorminotories.Data[I].SaveToFStream(Stream);
  Stream.Free;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  FDorminotories := TDynArray<TDorminotory>.Create;
end;

procedure TfrmMain.TableAddDorminotoryExecute(Sender: TObject);
var
  Res: Integer;
  Tmp: TDorminotory;
begin
  Res := frmDorminotory.ShowVal;
  if Res = mrOk then
  begin
    Tmp := TDorminotory.Create;
    Tmp.Name := frmDorminotory.Name;
    Tmp.Addres := frmDorminotory.Address;
    FDorminotories.PushBack(Tmp);
    Update;
  end;
end;

procedure TfrmMain.TableChangeDorminotoryExecute(Sender: TObject);
begin
  frmChangeDorminotory.Dorminotory := FDorminotories.Data[lvMain.ItemIndex];
  frmChangeDorminotory.Update;
  frmChangeDorminotory.ShowModal;
end;

procedure TfrmMain.TableDeleteDorminotoryExecute(Sender: TObject);
var
  Tmp: TDorminotory;
begin
  Tmp := FDorminotories.Data[lvMain.ItemIndex];
  Tmp.Free;
  FDorminotories.Erase(lvMain.ItemIndex);
  Update;
end;

procedure TfrmMain.TableEditDorminotoryExecute(Sender: TObject);
var
  Res: Integer;
  Tmp: TDorminotory;
begin
  Tmp := FDorminotories.Data[lvMain.ItemIndex];
  Res := frmDorminotory.ShowVal(Tmp.Name, Tmp.Addres);
  if Res = mrOk then
  begin
    Tmp.Name := frmDorminotory.Name;
    Tmp.Addres := frmDorminotory.Address;
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
