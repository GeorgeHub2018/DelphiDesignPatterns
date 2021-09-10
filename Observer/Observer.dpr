program Observer;

uses
  Vcl.Forms,
  fMain in 'fMain.pas' {frmMain},
  Patterns.Observer in 'Patterns\Patterns.Observer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
