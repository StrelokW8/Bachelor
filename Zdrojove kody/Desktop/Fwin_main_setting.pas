unit Fwin_main_setting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Registry;

type
  Twin_setting_main = class(TForm)
  published
    Edit_login: TEdit;
    StaticText1: TStaticText;
    Button1: TButton;
    StaticText2: TStaticText;
    Edit_hes: TEdit;
    Edit_datasource: TEdit;
    StaticText3: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  end;

var
  win_setting_main: Twin_setting_main;

implementation

uses dm_main;

{$R *.dfm}

procedure Twin_setting_main.Button1Click(Sender: TObject);
var
  pripstr : String;
  userid,pass,datasource : String;
  reg : TRegistry;
begin
  //nacteni hodnot z formulare
  userid:='User ID='+Edit_login.Text;
  pass:='Password='+Edit_hes.Text;
  datasource:='Data Source='+Edit_datasource.Text;
  //setaveni prip. retezce
  pripstr:='Provider=SQLOLEDB.1;'+pass+';Persist Security Info=True;'+userid+';'+datasource+';Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=LAPTOP-BCOU2AHI;Use Encryption for Data=False;Tag with column collation when possible=False';
  //nastaveni connectionstring
  dmmain.ADOConnection_metr.ConnectionString := pripstr;
  dmmain.ADOConnection_vsdata.ConnectionString := pripstr;
  //ulozeni do registru
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey('Software\OVc\metr\',true);
  reg.Access:=KEY_ALL_ACCESS;
  reg.WriteString('pripstr',pripstr);
  reg.WriteString('login',Edit_login.Text);
  reg.WriteString('heslo',Edit_hes.Text);
  reg.WriteString('datasource',Edit_datasource.Text);
  reg.CloseKey;
  reg.Free;
  //uzavreni formulare
  close;
end;

procedure Twin_setting_main.FormShow(Sender: TObject);
var
  reg : TRegistry;
begin
  //nacteni prip. retezce z registru
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey('Software\OVc\metr\',true);
  reg.Access:=KEY_READ;
  Edit_login.Text:=reg.ReadString('login');
  Edit_hes.Text:=reg.ReadString('heslo');
  Edit_datasource.Text:=reg.ReadString('datasource');
  reg.CloseKey;
  reg.Free;
end;

end.
