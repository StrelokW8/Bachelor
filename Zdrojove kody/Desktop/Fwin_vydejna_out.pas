unit Fwin_vydejna_out;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls,Data.DB, Data.Win.ADODB,StrUtils, Vcl.ComCtrls;


type
  Twin_vydejna_out = class(TForm)
  published
    GroupBox1: TGroupBox;
    DBLookUp_Jmeno: TDBLookupComboBox;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    DBLook_prac: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    StaticText3: TStaticText;
    evdcis_edit: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);

  end;

var
  win_vydejna_out: Twin_vydejna_out;

implementation


uses dm_fvydejmeridel,dm_main;
{$R *.dfm}




procedure Twin_vydejna_out.Button1Click(Sender: TObject);
var
que: TADOQuery;
evdcislo,jmeno,pracoviste,time_vyd : String;
today : TDateTime;
fsde : TFormatSettings;
begin
  fsde:=TFormatSettings.Create('de-de');

  today := Now;
  time_vyd := DatetimetoStr(today,fsde);



  if((evdcis_edit.Text = '')) then
  begin
    ShowMessage('Zkontrolujte vložené údaje.');
    exit;
  end;





  evdcislo := self.evdcis_edit.Text;
  jmeno := VarTOStr(self.DBLookUp_Jmeno.Field.Value);
  pracoviste := VarToStr(self.DBLook_prac.Field.Value);





  que:=TADOQuery.Create(nil);
  que.Connection := dmmain.ADOConnection_metr;

  que.SQL.Text := 'SELECT MAX(Vraceno),MAX(Vydano),COunt(Vydano) FROM metr..vydejna '+
  ' WHERE Evidencni_cislo= ' + quotedStr(evdcislo);

   que.Open;

  if((que.Fields.Fields[0].AsDateTime < que.Fields.Fields[1].AsDateTime) AND (que.Fields.Fields[2].AsInteger <> 0)) then
  begin

   ShowMessage('Nelze vložit novou výpùjèku pøed vrácením');
   que.Close;
   que.Free;
   exit;

  end;


   que.Close;


  que.SQL.Text := 'INSERT INTO metr..vydejna (Evidencni_cislo,Vydano,Os_cislo_vyp,Pracoviste_kod_vyp)' +
  'VALUES ('+quotedStr(evdcislo)+',CONVERT(datetime,N'+quotedStr(time_vyd)+',104),'
  + quotedStr(jmeno)+','+ quotedStr(pracoviste)+')';

  que.ExecSQL;

  que.Close;
  que.Free;


  Close;















end;

end.
