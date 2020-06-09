unit uFloor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TfrmFloor = class(TForm)
    btnOk: TButton;
    btnCancel: TButton;
    spinFloor: TSpinEdit;
  private
    function GetFloor: Integer;
    { Private declarations }
  public
    function ShowValue(const Value: Integer = 0): Integer;
    property Floor: Integer read GetFloor;
    { Public declarations }
  end;

var
  frmFloor: TfrmFloor;

implementation

{$R *.dfm}

{ TftmFloor }

function TfrmFloor.GetFloor: Integer;
begin
  Result := spinFloor.Value;
end;

function TfrmFloor.ShowValue(const Value: Integer): Integer;
begin
  spinFloor.Value := Value;
  Result := ShowModal;
end;

end.
