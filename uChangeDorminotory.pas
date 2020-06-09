unit uChangeDorminotory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, uStructures, uFloor;

type
  TfrmChangeDorminotory = class(TForm)
    lvDorminotory: TListView;
    pnlMain: TPanel;
    btnAdd: TButton;
    btnEdit: TButton;
    btnChange: TButton;
    btnDelete: TButton;
    aiDorminotory: TActionList;
    actAdd: TAction;
    actEdit: TAction;
    actChange: TAction;
    actDelete: TAction;
    pnlLeft: TPanel;
    pnlLabel: TPanel;
    lblName: TLabel;
    procedure actAddExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure aiDorminotoryUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure actDeleteExecute(Sender: TObject);
    procedure actChangeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    Dorminotory: TDorminotory;
    procedure Update;
    { Public declarations }
  end;

var
  frmChangeDorminotory: TfrmChangeDorminotory;

implementation

{$R *.dfm}

uses uChangeFloor;

procedure TfrmChangeDorminotory.actAddExecute(Sender: TObject);
var
  Res: Integer;
  Tmp: TFloor;
begin
  Res := frmFloor.ShowValue;
  if Res = mrOk then
  begin
    Tmp := TFloor.Create;
    Tmp.Number := frmFloor.Floor;
    Dorminotory.Floors.PushBack(Tmp);
    Update;
  end;
end;

procedure TfrmChangeDorminotory.actChangeExecute(Sender: TObject);
begin
  frmChangeFloor.Floor := Dorminotory.Floors.Data[lvDorminotory.ItemIndex];
  frmChangeFloor.Update;
  frmChangeFloor.ShowModal;
end;

procedure TfrmChangeDorminotory.actDeleteExecute(Sender: TObject);
var
  Tmp: TFloor;
begin
  Tmp := Dorminotory.Floors.Data[lvDorminotory.ItemIndex];
  Tmp.Free;
  Dorminotory.Floors.Erase(lvDorminotory.ItemIndex);
  Update;
end;

procedure TfrmChangeDorminotory.actEditExecute(Sender: TObject);
var
  Tmp: TFloor;
  Res: Integer;
begin
  Tmp := Dorminotory.Floors.Data[lvDorminotory.ItemIndex];
  Res := frmFloor.ShowValue(Tmp.Number);
  if Res = mrOk then
  begin
    Tmp.Number := frmFloor.Floor;
    Update;
  end;
end;

procedure TfrmChangeDorminotory.aiDorminotoryUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  actAdd.Enabled := True;
  actEdit.Enabled := lvDorminotory.ItemIndex <> -1;
  actChange.Enabled := lvDorminotory.ItemIndex <> -1;
  actDelete.Enabled := lvDorminotory.ItemIndex <> -1;
end;

procedure TfrmChangeDorminotory.Update;
var
  I: INteger;
  Item: TListItem;
begin
  lvDorminotory.Items.Clear;
  for I := Low(Dorminotory.Floors.Data) to High(Dorminotory.Floors.Data) do
  begin
    Item := lvDorminotory.Items.Add;
    Item.Caption := IntToStr(Dorminotory.Floors.Data[I].Number);
  end;

end;

end.
