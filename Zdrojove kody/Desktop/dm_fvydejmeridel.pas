unit dm_fvydejmeridel;

interface

uses
  System.SysUtils, System.Classes, Vcl.PlatformDefaultStyleActnCtrls,
  System.Actions, Vcl.ActnList, Vcl.ActnMan, System.ImageList, Vcl.ImgList,
  Vcl.Controls, Data.DB, Data.Win.ADODB,Vcl.Dialogs, JvComponentBase,
  JvgExportComponents,WinApi.Windows,ShellApi;

type
  Tdm_vydejmeridel = class(TDataModule)
  published
    ImageList1: TImageList;
    ActionManager1: TActionManager;
    VypujSimpleInsert: TAction;
    Action2: TAction;
    in_meridlo: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    ADOQuery_Seznam_meridel: TADOQuery;
    DataSource_Seznam_meridel: TDataSource;
    ADOQuery_vypujkcy: TADOQuery;
    DataSource_vypujcky: TDataSource;
    ADOQuery_kategorie: TADOQuery;
    DataSource_kategorie: TDataSource;
    ADOQuery_subkategorie: TADOQuery;
    ADOQuery_subkategorieKod: TWideStringField;
    ADOQuery_subkategorieSubkod: TWideStringField;
    ADOQuery_subkategorieNazev: TWideStringField;
    Datesource_subkategorie: TDataSource;
    DataSource_typmeridel: TDataSource;
    ADOQuery_typmeridel: TADOQuery;
    ADOQuery_osoby: TADOQuery;
    DataSource_osoby: TDataSource;
    ADOQuery_pracoviste: TADOQuery;
    DataSource_pracoviste: TDataSource;
    JvgExportExcel1: TJvgExportExcel;
    SaveDialog1: TSaveDialog;
    ADOQuery_vypujkcyEvidencni_cislo: TWideStringField;
    ADOQuery_vypujkcyVydano: TDateTimeField;
    ADOQuery_vypujkcyOs_cislo_vyp: TWideStringField;
    ADOQuery_vypujkcyPracoviste_kod_vyp: TWideStringField;
    ADOQuery_vypujkcyVraceno: TDateTimeField;
    ADOQuery_vypujkcyOs_cis_vratil: TWideStringField;
    ADOQuery_Seznam_meridelEvidencni_cislo: TWideStringField;
    ADOQuery_Seznam_meridelkategorie_kod: TWideStringField;
    ADOQuery_Seznam_meridelVyr_cis: TWideStringField;
    ADOQuery_Seznam_meridelNazev: TWideStringField;
    ADOQuery_Seznam_meridelTyp_kod: TWideStringField;
    ADOQuery_Seznam_meridelDatum_kalibrace: TDateTimeField;
    ADOQuery_Seznam_meridelDoba_platnosti: TIntegerField;
    ADOQuery_Seznam_meridelKonec_platnosti: TDateTimeField;
    ADOQuery_Seznam_meridelKalibracni_metoda: TWideStringField;
    ADOQuery_Seznam_meridelKalibracni_postup: TWideStringField;
    ADOQuery_Seznam_meridelRok_vyroby: TSmallintField;
    ADOQuery_Seznam_meridelDo_provozu: TDateTimeField;
    ADOQuery_Seznam_meridelVyrobce: TWideStringField;
    ADOQuery_Seznam_meridelPovolena_odchylka: TWideStringField;
    ADOQuery_Seznam_meridelNejistota: TWideStringField;
    ADOQuery_Seznam_meridelMerici_velicina: TWideStringField;
    ADOQuery_Seznam_meridelTrida_presnosti: TWideStringField;
    ADOQuery_Seznam_meridelPracoviste_kod_vl: TWideStringField;
    ADOQuery_Seznam_meridelOs_cislo_vl: TWideStringField;
    ADOQuery_Seznam_meridelDo_uzivani: TDateTimeField;
    ADOQuery_Seznam_meridelKalibroval: TWideStringField;
    ADOQuery_Seznam_meridelCis_protokolu: TWideStringField;
    ADOQuery_Seznam_meridelVysledek: TWideStringField;
    ADOQuery_Seznam_meridelOs_cislo_vyp: TWideStringField;
    ADOQuery_Seznam_meridelPracoviste_kod_vyp: TWideStringField;
    ADOQuery_Seznam_meridelVypujceno: TDateTimeField;
    ADOQuery_Seznam_meridelPoznamka: TWideStringField;
    ADOQuery_Seznam_meridelKalibracekde: TSmallintField;
    ADOQuery_Seznam_meridelKal_stredisko: TWideStringField;
    ADOQuery_Seznam_meridelkalprot_cesta: TWideStringField;
    ADOQuery_Seznam_meridelStav_meridla: TWideStringField;
    ADOQuery_Seznam_meridelObor_mereni: TWideStringField;
    ADOQuery_Seznam_meridelZacleneni: TWideStringField;
    ADOQuery_Seznam_meridelKod_zavodu: TWideStringField;
    ADOQuery_Seznam_meridelDatum_udrzby: TDateTimeField;
    ADOQuery_Seznam_meridelNasledna_udrzba: TDateTimeField;
    ADOQuery_Seznam_meridelProvedl_udrzbu: TWideStringField;
    ADOQuery_Seznam_meridelPozn_vl: TWideStringField;
    ADOQuery_Seznam_meridelTypPeriody: TSmallintField;
    ADOQuery_Seznam_meridelCenaMer: TFloatField;
    ADOQuery_Seznam_meridelNakladyNaKal: TFloatField;
    ADOQuery_Seznam_meridelMetrRetezec: TWideStringField;
    ADOQuery_Seznam_meridelInvCislo: TWideStringField;
    ADOQuery_Seznam_meridelDodavatel_mer: TWideStringField;
    ADOQuery_Seznam_meridelObj_cislo: TWideStringField;
    ADOQuery_Seznam_meridelCis_objednavky: TWideStringField;
    ADOQuery_Seznam_meridelPoznKalibrace: TWideStringField;
    ADOQuery_Seznam_meridelPresnost: TWideStringField;
    ADOQuery_Seznam_meridelTypoveOznaceni: TWideStringField;
    ADOQuery_Seznam_meridelDatumVyrazeni: TDateTimeField;
    ADOQuery_Seznam_meridelOVyslRohodl: TWideStringField;
    ADOQuery_Seznam_meridelObjDnuPred: TSmallintField;
    ADOQuery_Seznam_meridelCasKalibrace: TFloatField;
    ADOQuery_Seznam_meridelRozsah: TStringField;
    ADOQuery_Seznam_meridelkal_postup_posl: TStringField;
    procedure VypujSimpleInsertExecute(Sender: TObject);
    procedure inExecute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);

  public
    procedure SetActiveDataSource();
  end;

var
  dm_vydejmeridel: Tdm_vydejmeridel;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
uses f_vydejmeridel,dm_main,Fwin_vydejna_in,Fwin_vydejna_out;

{$R *.dfm}

procedure Tdm_vydejmeridel.VypujSimpleInsertExecute(Sender: TObject);
var
 que : TADOQuery;
 evcis,nowdate : String;
 today : TDateTime;
 fsde : TFormatSettings;

begin
  fsde:=TFormatSettings.Create('de-de');
  today := Now;
  nowdate:= DateTimeToStr(today,fsde);
  nowdate:='CONVERT(datetime,N'+quotedStr(nowdate)+',104)';


  que:=TADOQuery.Create(self);
  que.Connection:= dmmain.ADOConnection_metr;

  evcis := ADOQuery_Seznam_meridel.FieldByName('Evidencni_cislo').AsString;

  que.SQL.Text := 'SELECT MAX(Vraceno),MAX(Vydano),COunt(Vydano) FROM metr..vydejna '+
  'WHERE Evidencni_cislo= ' + quotedStr(evcis);

  que.Open;

  if((que.Fields.Fields[0].AsDateTime < que.Fields.Fields[1].AsDateTime) AND (que.Fields.Fields[2].AsInteger <> 0)) then
  begin

   ShowMessage('Nelze vložit novou výpùjèku pøed vrácením');
   que.Close;
   que.Free;
   exit;

  end;
  que.Close;




  que.SQL.Text := 'INSERT INTO metr..vydejna (Evidencni_cislo,Vydano) VALUES('
  + quotedSTR(evcis)+','+nowdate +')';
  que.ExecSQL;
  ADOQuery_vypujkcy.Requery([]);
  que.close;
  que.Free;


end;


procedure Tdm_vydejmeridel.Action2Execute(Sender: TObject);
begin
   with Twin_vydejna_out.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;


end;

procedure Tdm_vydejmeridel.Action6Execute(Sender: TObject);
var
  soub : String;
  fsde,fsen : TFormatSettings;
begin
  GetLocaleFormatSettings(1031,fsde);
  GetLocaleFormatSettings(1033,fsen);
  //nastaveni souboru pro export
  if SaveDialog1.Execute(f_vydejmer.Handle)=false then
    exit;
  soub:=SaveDialog1.FileName;
  if FileExists(soub) then
  begin
    if DeleteFile(PWideChar(soub))=false then
    begin
      messagebox(f_vydejmer.handle,'Soubor již existuje a nelze jej pøepsat novým souborem. Buï je právì používán nebo namáte práva pro pøepsání tohoto souboru.','Metrologie',MB_OK or MB_ICONINFORMATION);
      exit;
    end;
  end;
  //export do excelu v jednom souboru a listu
  JvgExportExcel1.DataSet:=ADOQuery_vypujkcy;
  JvgExportExcel1.SaveToFileName:=soub;
  JvgExportExcel1.ExcelVisible:=true;
  try
    FormatSettings.ThousandSeparator:=fsen.ThousandSeparator;
    FormatSettings.DecimalSeparator:=fsen.DecimalSeparator;
    JvgExportExcel1.Execute;
  finally
    FormatSettings.ThousandSeparator:=fsde.ThousandSeparator;
    FormatSettings.DecimalSeparator:=fsde.DecimalSeparator;
  end;
  if IDYES=messagebox(f_vydejmer.Handle,'Export dokonèen. Chcete soubor otevøít?','Metrologie',MB_YESNO or MB_ICONQUESTION) then
  begin
    ShellExecute(f_vydejmer.Handle, 'open', PWidechar(soub), '', '', SW_SHOWNORMAL);
  end;
end;

procedure Tdm_vydejmeridel.inExecute(Sender: TObject);
begin
  with TVydej_in_win.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

end;

procedure Tdm_vydejmeridel.SetActiveDataSource();
var
i : Integer;
j: Integer;
begin
  i := dm_vydejmeridel.ComponentCount;
  for j := 0 to i - 1 do
    if(dm_vydejmeridel.Components[j] is TADOQuery) = True then
      begin
         with TADOQuery(dm_vydejmeridel.Components[j]) do
          Open;
      end;
end;


end.
