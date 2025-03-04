unit f_setting;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,IOVservis1,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TForm_setting = class(TForm)
    StyleBook1: TStyleBook;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Edit_IP: TEdit;
    Edit_port: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label_test: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_setting: TForm_setting;

implementation
uses f_hlavni;
{$R *.fmx}

procedure TForm_setting.Button1Click(Sender: TObject);
var
test,adrwss,port,ip : String;
Service: IOVservis;
begin

 ip := self.Edit_IP.Text;
 if(ip = '') then
 begin
   ShowMessage('Vložte IP');
   exit;
 end;

 port := self.Edit_port.Text;

 if(port = '') then
 begin
   ShowMessage('Vložte port');
   exit;
 end;

 adrwss:='http://'+ip+':'+port+'/soap/IQLSluzby';

 Service := IOVservis1.GetIOVservis(false,adrwss,nil);

 try
   begin
     test := service.TestConnection;
     self.Label_test.Text := 'Pøipojení OK';
     self.Label_test.Visible := True;
   end;

 except
   begin
   self.Label_test.Text := 'Pøipojení nenavázáno!';
     self.Label_test.Visible := True;
   end;

 end;



end;

procedure TForm_setting.Button2Click(Sender: TObject);
var
test,adrwss,port,ip : String;

begin
 ip := self.Edit_IP.Text;
 if(ip = '') then
 begin
   ShowMessage('Vložte IP');
   exit;
 end;

 port := self.Edit_port.Text;

 if(port = '') then
 begin
   ShowMessage('Vložte port');
   exit;
 end;

 adrwss:='http://'+ip+':'+port+'/soap/IQLSluzby';

 fhlavni.adrconn := adrwss;

 Close;

end;

end.
