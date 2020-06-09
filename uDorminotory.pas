unit uDorminotory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmDorminotory = class(TForm)
    edtName: TLabeledEdit;
    edtAddress: TLabeledEdit;
    btnOk: TButton;
    btnCancel: TButton;
  private
    function GetAddress: String;
    function GetName: String;
    { Private declarations }
  public
    function ShowVal(const Name: String = ''; const Address: String = ''): Integer;
    property Name: String read GetName;
    property Address: String read GetAddress;
  end;

var
  frmDorminotory: TfrmDorminotory;

implementation

{$R *.dfm}

{ TfrmDorminotary }

function TfrmDorminotory.GetAddress: String;
begin
  Result := edtAddress.Text;
end;

function TfrmDorminotory.GetName: String;
begin
  Result := edtName.Text;
end;

function TfrmDorminotory.ShowVal(const Name, Address: String): Integer;
begin
  edtName.Text := Name;
  edtAddress.Text := Address;
  Result := ShowModal;
end;

end.
