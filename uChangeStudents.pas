unit uChangeStudents;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, uStructures;

type
  TfrmChangeStudents = class(TForm)
    lvStudents: TListView;
    pnlMain: TPanel;
    btnAdd: TButton;
    btnEdit: TButton;
    btnDelete: TButton;
    alChangeStudents: TActionList;
    actAdd: TAction;
    actEdit: TAction;
    actDelete: TAction;
    Label1: TLabel;
    pnlName: TPanel;
    pnlLeft: TPanel;
    procedure actAddExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure alChangeStudentsUpdate(Action: TBasicAction;
      var Handled: Boolean);
  private
  public
    Room: TRoom;
    procedure Update;
  end;

var
  frmChangeStudents: TfrmChangeStudents;

implementation

{$R *.dfm}

uses Student;

{ TfrmChangeStudents }

procedure TfrmChangeStudents.actAddExecute(Sender: TObject);
var
  Res: Integer;
  Tmp: TStudent;
begin
  Res := frmStudent.ShowValue;
  if Res = mrOk then
  begin
    Tmp := TStudent.Create;
    Tmp.Name := frmStudent.Name;
    Tmp.TimeIn := frmStudent.DateIn;
    Tmp.TimeOut := frmStudent.DateOut;
    Room.Students.PushBack(Tmp);
    Update;
  end;
end;

procedure TfrmChangeStudents.actDeleteExecute(Sender: TObject);
var
  Tmp: TStudent;
begin
  Tmp := Room.Students.Data[lvStudents.ItemIndex];
  Tmp.Free;
  Room.Students.Erase(lvStudents.ItemIndex);
  Update;
end;

procedure TfrmChangeStudents.actEditExecute(Sender: TObject);
var
  Tmp: TStudent;
  Res: Integer;
begin
  Tmp := Room.Students.Data[lvStudents.ItemIndex];
  Res := frmStudent.ShowValue(Tmp.Name, Tmp.TimeIn, Tmp.TimeOut);
  if Res = mrOk then
  begin
    Tmp.Name := frmStudent.Name;
    Tmp.TimeIn := frmStudent.DateIn;
    Tmp.TimeOut := frmStudent.DateOut;
    Update;
  end;
end;

procedure TfrmChangeStudents.alChangeStudentsUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  actAdd.Enabled := True;
  actEdit.Enabled := lvStudents.ItemIndex <> -1;
  actDelete.Enabled := lvStudents.ItemIndex <> -1;
end;

procedure TfrmChangeStudents.Update;
var
  I: Integer;
  Item: TListItem;
begin
  lvStudents.Items.Clear;
  for I := Low(Room.Students.Data) to High(Room.Students.Data) do
  begin
    Item := lvStudents.Items.Add;
    Item.Caption := Room.Students.Data[I].Name;
    Item.SubItems.Add(DateTimeToStr(Room.Students.Data[I].TimeIn));
    Item.SubItems.Add(DateTimeToStr(Room.Students.Data[I].TimeOut));
  end;
end;

end.
