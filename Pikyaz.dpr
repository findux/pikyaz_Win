program Pikyaz;

uses
  Vcl.Forms,
  Pikyazfrm in 'Pikyazfrm.pas' {Form1},
  pUsak in 'pUsak.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
