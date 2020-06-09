program Settletory;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  uStructures in 'uStructures.pas',
  uDorminotory in 'uDorminotory.pas' {frmDorminotory},
  uChangeDorminotory in 'uChangeDorminotory.pas' {frmChangeDorminotory},
  uFloor in 'uFloor.pas' {frmFloor},
  uChangeFloor in 'uChangeFloor.pas' {frmChangeFloor},
  uRoom in 'uRoom.pas' {frmRoom},
  uChangeStudents in 'uChangeStudents.pas' {frmChangeStudents},
  Student in 'Student.pas' {frmStudent};

//  uDynArray in 'uDynArray.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmDorminotory, frmDorminotory);
  Application.CreateForm(TfrmChangeDorminotory, frmChangeDorminotory);
  Application.CreateForm(TfrmFloor, frmFloor);
  Application.CreateForm(TfrmChangeFloor, frmChangeFloor);
  Application.CreateForm(TfrmRoom, frmRoom);
  Application.CreateForm(TfrmChangeStudents, frmChangeStudents);
  Application.CreateForm(TfrmStudent, frmStudent);
  Application.Run;
end.
