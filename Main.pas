 {
 *    ██   ██  █████  ██      ██ ██          ██   ██  █████  ███    ██     ██████   █████  ██████  ███████ ███    ███ 
 *    ██   ██ ██   ██ ██      ██ ██          ██   ██ ██   ██ ████   ██     ██   ██ ██   ██ ██   ██ ██      ████  ████ 
 *    ███████ ███████ ██      ██ ██          ███████ ███████ ██ ██  ██     ██████  ███████ ██   ██ █████   ██ ████ ██ 
 *    ██   ██ ██   ██ ██      ██ ██          ██   ██ ██   ██ ██  ██ ██     ██   ██ ██   ██ ██   ██ ██      ██  ██  ██ 
 *    ██   ██ ██   ██ ███████ ██ ███████     ██   ██ ██   ██ ██   ████     ██████  ██   ██ ██████  ███████ ██      ██ 
 *                                                                                                                    
 *
 *}

unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, MailgunAPI;

type
  TForm1 = class(TForm)
    edtFrom: TEdit;
    Label1: TLabel;
    edtTo: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtSubject: TEdit;
    Label5: TLabel;
    memBody: TMemo;
    btnSend: TButton;
    Label4: TLabel;
    procedure btnSendClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnSendClick(Sender: TObject);
var
 MailgunAPI: TMailGunAPI;
 Result: String;
begin
 MailgunAPI := TMailGunAPI.Create;
 try
  MailgunAPI.mailgunFrom := edtFrom.Text;
  MailgunAPI.mailgunTo := edtTo.Text;
  MailgunAPI.mailgunSubject := edtSubject.Text;
  MailgunAPI.mailgunBody := memBody.Lines.Text;
  MailgunAPI.mailgunDomain := 'YOUR_DOMAIN';
  MailgunAPI.mailgunAPIKey := 'YOUR_API';
  MailgunAPI.sendMail(Result);
  ShowMessage(Result);
 finally
  MailgunAPI.Free;
 end;
end;

end.
