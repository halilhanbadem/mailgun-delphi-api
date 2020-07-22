 {
 *    ██   ██  █████  ██      ██ ██          ██   ██  █████  ███    ██     ██████   █████  ██████  ███████ ███    ███ 
 *    ██   ██ ██   ██ ██      ██ ██          ██   ██ ██   ██ ████   ██     ██   ██ ██   ██ ██   ██ ██      ████  ████ 
 *    ███████ ███████ ██      ██ ██          ███████ ███████ ██ ██  ██     ██████  ███████ ██   ██ █████   ██ ████ ██ 
 *    ██   ██ ██   ██ ██      ██ ██          ██   ██ ██   ██ ██  ██ ██     ██   ██ ██   ██ ██   ██ ██      ██  ██  ██ 
 *    ██   ██ ██   ██ ███████ ██ ███████     ██   ██ ██   ██ ██   ████     ██████  ██   ██ ██████  ███████ ██      ██ 
 *                                                                                                                    
 *
 *}

unit MailgunAPI;

interface

uses
 System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent, Classes, SysUtils;


type
 TMailGunAPI = class
   constructor Create;
   destructor Destroy; override;
   procedure sendMail(out Result: String);
   private
     NetHTTPClient: TNetHTTPClient;
     NetHTTPRequest: TNetHTTPRequest;
     FMailGunDomain, FMailGunAPIKey, FFrom, FTo, FSubject, FBody: String;

     function createAPILink: String;
   public
     property mailgunDomain: string read FMailGunDomain write FMailGunDomain;
     property mailgunAPIKey: string read FMailGunAPIKey write FMailGunAPIKey;
     property mailgunFrom: string read FFrom write FFrom;
     property mailgunTo: string read FTo write FTo;
     property mailgunSubject: string read FSubject write FSubject;
     property mailgunBody: string read FBody write FBody;
 end;

implementation

{ TMailGunAPI }

constructor TMailGunAPI.Create;
begin
 inherited;
 NetHTTPClient := TNetHTTPClient.Create(nil);
 NetHTTPRequest := TNetHTTPRequest.Create(nil);
 NetHTTPRequest.Client := NetHTTPClient;
end;

function TMailGunAPI.createAPILink: String;
begin
 Result := 'https://api:' + mailgunAPIKey + '@api.mailgun.net/v3/' + mailgunDomain + '/messages';
end;

destructor TMailGunAPI.Destroy;
begin
  inherited;
 NetHTTPClient.Free;
 NetHTTPRequest.Free;
end;

procedure TMailGunAPI.sendMail(out Result: String);
var
 Params: TStringList;
begin
 Params := TStringList.Create;
 try
  Params.Clear;
  Params.Add('from='+mailgunFrom);
  Params.Add('to='+mailgunTo);
  Params.Add('subject='+mailgunSubject);
  Params.Add('text='+mailgunBody);

  Result := NetHTTPRequest.Post(createAPILink, Params).ContentAsString;
 finally
  FreeAndNil(Params);
 end;
end;

end.
