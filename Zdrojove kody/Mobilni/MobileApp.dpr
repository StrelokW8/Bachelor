program MobileApp;

uses
  System.StartUpCopy,
  FMX.Forms,
  f_hlavni in 'f_hlavni.pas' {fhlavni},
  IOVservis1 in 'IOVservis1.pas',
  f_setting in 'f_setting.pas' {Form_setting};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfhlavni, fhlavni);
  Application.CreateForm(TForm_setting, Form_setting);
  Application.Run;
end.
