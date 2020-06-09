unit uRoom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TfrmRoom = class(TForm)
    spinRoom: TSpinEdit;
    btnOk: TButton;
    btnCancel: TButton;
  private
    function GetRoom: Integer;
  public
    function ShowValue(const Value: Integer = 0): Integer;
    property Room: Integer read GetRoom;
  end;

var
  frmRoom: TfrmRoom;

implementation

{$R *.dfm}

{ TfrmRoom }

function TfrmRoom.GetRoom: Integer;
begin
  Result := spinRoom.Value;
end;

function TfrmRoom.ShowValue(const Value: Integer): Integer;
begin
  spinRoom.Value := Value;
  Result := ShowModal;
end;

end.
