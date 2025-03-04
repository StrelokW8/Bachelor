program WebSerServer;
{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  form_main in 'form_main.pas' {formmain},
  WebModuleUnit1 in 'WebModuleUnit1.pas' {WebModule1: TWebModule},
  f_main in 'f_main.pas',
  OVservisIntf in 'OVservisIntf.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(Tformmain, formmain);
  Application.Run;
end.
