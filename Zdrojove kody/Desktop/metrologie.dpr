program metrologie;

uses
  Vcl.Forms,
  f_main in 'f_main.pas' {form_main},
  IDETheme.ActnCtrls in 'IDETheme.ActnCtrls.pas',
  dm_main in 'dm_main.pas' {dmmain: TDataModule},
  f_evidence in 'f_evidence.pas' {Form_evidence},
  f_vydejmeridel in 'f_vydejmeridel.pas' {f_vydejmer},
  f_analyzy in 'f_analyzy.pas' {f_analyz},
  f_ciselniky in 'f_ciselniky.pas' {f_cisel},
  dm_Fevidence in 'dm_Fevidence.pas' {dm_evidence: TDataModule},
  dm_fvydejmeridel in 'dm_fvydejmeridel.pas' {dm_vydejmeridel: TDataModule},
  dm_fciselniky in 'dm_fciselniky.pas' {dm_ciselniky: TDataModule},
  dm_Fanalyzy in 'dm_Fanalyzy.pas' {dm_analyzy: TDataModule},
  Fwin_evidence_add in 'Fwin_evidence_add.pas' {win_evidence_add},
  Fwin_vydejna_in in 'Fwin_vydejna_in.pas' {Vydej_in_win},
  Fwin_vydejna_out in 'Fwin_vydejna_out.pas' {win_vydejna_out},
  Fwin_main_setting in 'Fwin_main_setting.pas' {win_setting_main};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  Application.CreateForm(Tdmmain, dmmain);
  Application.CreateForm(Tform_main, form_main);
  Application.Run;
end.
