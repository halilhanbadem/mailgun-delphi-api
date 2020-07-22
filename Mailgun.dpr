program Mailgun;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form1},
  MailgunAPI in 'MailgunAPI.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
