unit Fwin_vydejna_in;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls,Data.DB, Data.Win.ADODB,StrUtils, Vcl.ComCtrls;

type
  TVydej_in_win = class(TForm)
  published
    GroupBox1: TGroupBox;
    DBLookUp_Jmeno: TDBLookupComboBox;
    StaticText1: TStaticText;
    GroupBox2: TGroupBox;
    StaticText3: TStaticText;
    evdcis_edit: TEdit;
    Over_edit: TButton;
    procedure Over_editClick(Sender: TObject);

  end;

var
  Vydej_in_win: TVydej_in_win;

implementation

uses dm_fvydejmeridel,dm_main;

{$R *.dfm}

procedure TVydej_in_win.Over_editClick(Sender: TObject);
var
que: TADOQuery;
evdcislo,jmeno,posledni_rec,time_vr : String;
today : TDateTime;
fsde : TFormatSettings;
begin
  fsde:=TFormatSettings.Create('de-de');


  today := Now;

  time_vr := DatetimetoStr(today,fsde);

  if((evdcis_edit.Text = '')) then
  begin
    ShowMessage('Zkontrolujte vložené údaje.');
    exit;
  end;


  evdcislo := self.evdcis_edit.Text;
  jmeno := VarTOStr(self.DBLookUp_Jmeno.Field.Value);




  que:=TADOQuery.Create(nil);
  que.Connection := dmmain.ADOConnection_metr;


  que.SQL.Text := 'select MAX(Vydano) FROM metr..vydejna '+
  'WHERE Evidencni_cislo=N'+ quotedStr(evdcislo);

  que.Open;

  posledni_rec := que.Fields.Fields[0].AsString;

  que.Close;

  que.SQL.Text := 'UPDATE metr..vydejna ' +
  'SET Vraceno =CONVERT(datetime,N'+quotedStr(time_vr)+',104),'
  + 'Os_cis_vratil = ' + quotedStr(jmeno)+
  ' WHERE Vydano=CONVERT(datetime,N'+ quotedStr(posledni_rec)+',104)';

  que.ExecSQL;

  que.Close;
  que.Free;


  Close;




end;

end.
