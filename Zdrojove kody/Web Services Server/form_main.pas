unit form_main;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.AppEvnts, Vcl.StdCtrls, IdHTTPWebBrokerBridge, Web.HTTPApp;

type
  Tformmain = class(TForm)
  published
    ButtonStart: TButton;
    ButtonStop: TButton;
    EditPort: TEdit;
    Label1: TLabel;
    ApplicationEvents1: TApplicationEvents;
    ButtonOpenBrowser: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonStopClick(Sender: TObject);
    procedure ButtonOpenBrowserClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FServer: TIdHTTPWebBrokerBridge;
    procedure StartServer;
  public
    pripstr : String;
  end;

var
  formmain: Tformmain;

implementation

{$R *.dfm}

uses
  WinApi.Windows, Winapi.ShellApi,Registry;

procedure Tformmain.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
begin
  ButtonStart.Enabled := not FServer.Active;
  ButtonStop.Enabled := FServer.Active;
  EditPort.Enabled := not FServer.Active;
end;

procedure Tformmain.ButtonOpenBrowserClick(Sender: TObject);
var
  LURL: string;
begin
  StartServer;
  LURL := Format('http://localhost:%s', [EditPort.Text]);
  ShellExecute(0,
        nil,
        PChar(LURL), nil, nil, SW_SHOWNOACTIVATE);
end;

procedure Tformmain.ButtonStartClick(Sender: TObject);
begin
  StartServer;
end;

procedure Tformmain.ButtonStopClick(Sender: TObject);
begin
  FServer.Active := False;
  FServer.Bindings.Clear;
end;

procedure Tformmain.FormCreate(Sender: TObject);
var
  reg : TRegistry;
begin
  FServer := TIdHTTPWebBrokerBridge.Create(Self);
  //nacteni pripstr na sql server z registru
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey('Software\OVc\metr\',true);
  reg.Access:=KEY_ALL_ACCESS;
  pripstr:=reg.ReadString('pripstr');
  reg.CloseKey;
  reg.Free;

end;

procedure Tformmain.FormShow(Sender: TObject);
begin
  ButtonStart.Click;
end;

procedure Tformmain.StartServer;
begin
  if not FServer.Active then
  begin
    FServer.Bindings.Clear;
    FServer.DefaultPort := StrToInt(EditPort.Text);
    FServer.Active := True;
  end;
end;

end.
