unit Student;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmStudent = class(TForm)
    edtName: TLabeledEdit;
    dtpArrival: TDateTimePicker;
    dtpDeparture: TDateTimePicker;
    lblIn: TLabel;
    lblOut: TLabel;
    btnOk: TButton;
    btnCancel: TButton;
  private
    function GetDateIn: TDateTime;
    function GetDateOut: TDateTime;
    function GetName: String;
    { Private declarations }
  public
    property Name: String read GetName;
    property DateIn: TDateTime read GetDateIn;
    property DateOut: TDateTime read GetDateOut;
    function ShowValue(const Name: String = ''; const DateIn: TDateTime = 0; const DateOut: TDateTime = 0): Integer;
  end;

var
  frmStudent: TfrmStudent;

implementation

{$R *.dfm}

{ TfrmStudent }

function TfrmStudent.GetDateIn: TDateTime;
begin
  Result := dtpArrival.DateTime;
end;

function TfrmStudent.GetDateOut: TDateTime;
begin
  Result := dtpDeparture.DateTime;
end;

function TfrmStudent.GetName: String;
begin
  Result := edtName.Text;
end;

function TfrmStudent.ShowValue(const Name: String; const DateIn,
  DateOut: TDateTime): Integer;
begin
  edtName.Text := Name;
  dtpArrival.DateTime := DateIn;
  dtpDeparture.DateTime := DateOut;
  Result := ShowModal;
end;

end.
