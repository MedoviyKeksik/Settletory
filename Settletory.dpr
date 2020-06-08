program Settletory;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uStructures in 'uStructures.pas',
  uDorminotory in 'uDorminotory.pas' {frmDorminotary};

//  uDynArray in 'uDynArray.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmDorminotary, frmDorminotary);
  Application.Run;
end.
