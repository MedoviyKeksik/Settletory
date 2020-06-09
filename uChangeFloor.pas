unit uChangeFloor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, uStructures;

type
  TfrmChangeFloor = class(TForm)
    lvFloor: TListView;
    pnlMain: TPanel;
    btnAdd: TButton;
    btnEdit: TButton;
    btnChange: TButton;
    btnDelete: TButton;
    aiChangeFloor: TActionList;
    actAdd: TAction;
    actEdit: TAction;
    actChange: TAction;
    actDelete: TAction;
    pnlLeft: TPanel;
    pnlLabel: TPanel;
    Label1: TLabel;
    procedure actAddExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure aiChangeFloorUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure actChangeExecute(Sender: TObject);
  private
  public
    Floor: TFloor;
    procedure Update;
  end;

var
  frmChangeFloor: TfrmChangeFloor;

implementation

{$R *.dfm}

uses uRoom, uChangeStudents;

{ TfrmChangeFloor }

procedure TfrmChangeFloor.actAddExecute(Sender: TObject);
var
  Tmp: TRoom;
  Res: Integer;
begin
  Res := frmRoom.ShowValue;
  if Res = mrOk then
  begin
    Tmp := TRoom.Create;
    Tmp.Number := frmRoom.Room;
    Floor.Rooms.PushBack(Tmp);
    Update;
  end;
end;

procedure TfrmChangeFloor.actChangeExecute(Sender: TObject);
begin
  frmChangeStudents.Room := Floor.Rooms.Data[lvFloor.ItemIndex];
  frmChangeStudents.Update;
  frmChangeStudents.ShowModal;
  Update;
end;

procedure TfrmChangeFloor.actDeleteExecute(Sender: TObject);
var
  Tmp: TRoom;
begin
  Tmp := Floor.Rooms.Data[lvFloor.ItemIndex];
  Tmp.Free;
  Floor.Rooms.Erase(lvFloor.ItemIndex);
  Update;
end;

procedure TfrmChangeFloor.actEditExecute(Sender: TObject);
var
  Res: Integer;
  Tmp: TRoom;
begin
  Tmp := Floor.Rooms.Data[lvFloor.ItemIndex];
  Res := frmRoom.ShowValue(Tmp.Number);
  if Res = mrOk then
  begin
    Tmp.Number := frmRoom.Room;
    Update;
  end;
end;

procedure TfrmChangeFloor.aiChangeFloorUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  actAdd.Enabled := True;
  actEdit.Enabled := lvFloor.ItemIndex <> -1;
  actChange.Enabled := lvFloor.ItemIndex <> -1;
  actDelete.Enabled := lvFloor.ItemIndex <> -1;
end;

procedure TfrmChangeFloor.Update;
var
  I, J: Integer;
  Item: TListItem;
  TmpStr: string;
begin
  lvFloor.Items.Clear;
  for I := Low(Floor.Rooms.Data) to High(Floor.Rooms.Data) do
  begin
    Item := lvFloor.Items.Add;
    TmpStr := '';
    with Floor.Rooms.Data[I] do
    begin
      Item.Caption := IntToStr(Number);
      for J := Low(Students.Data) to High(Students.Data) do
      begin
        if J <> Low(Students.Data) then TmpStr := TmpStr + ', ';
        TmpStr := TmpStr + Students.Data[J].Name;
      end;
      Item.SubItems.Add(TmpStr);
    end;
  end;
end;

end.
