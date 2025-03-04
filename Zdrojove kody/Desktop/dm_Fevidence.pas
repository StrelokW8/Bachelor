unit dm_Fevidence;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ActnMan,
  Data.DB, Vcl.Forms, Vcl.Menus,jpeg,Winapi.Windows,ShellApi,
   Winapi.Messages, System.Variants,  Vcl.Graphics,System.DateUtils,
    Vcl.Dialogs,  Vcl.ComCtrls, Vcl.StdCtrls, StrUtils, Data.Win.ADODB,System.UITypes;


type
  Tdm_evidence = class(TDataModule)
    ADOQuery_subkategorieALL: TADOQuery;
    DataSource_subkategorieALL: TDataSource;
    ADOQuery_subkategorieALLKod: TWideStringField;
    ADOQuery_subkategorieALLNazev: TWideStringField;
    ADOQuery_hlEvidenceStav_meridla: TWideStringField;
    published
    ActionManager_evid: TActionManager;
    ImageList_evid: TImageList;
    open_dc: TAction;
    insertNew: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    Action9: TAction;
    Action10: TAction;
    Action11: TAction;
    Action12: TAction;
    InsertVypuj: TAction;
    Action14: TAction;
    Action15: TAction;
    Action16: TAction;
    Action17: TAction;
    DataSource_typmeridel: TDataSource;
    ADOQuery_typmeridel: TADOQuery;
    Action18: TAction;
    CalOpen: TAction;
    ADOQuery_kategorie: TADOQuery;
    DataSource_kategorie: TDataSource;
    ADOQuery_oborMereni: TADOQuery;
    DataSource_obormereni: TDataSource;
    ADOQuery_vyrobce: TADOQuery;
    DataSource_vyrobce: TDataSource;
    ADOQuery_dodavatel: TADOQuery;
    DataSource_dodavatel: TDataSource;
    ADOQuery_akrDoku: TADOQuery;
    DataSource_akrDoku: TDataSource;
    ADOQuery_osoby: TADOQuery;
    DataSource_osoby: TDataSource;
    ADOQuery_pracoviste: TADOQuery;
    DataSource_pracoviste: TDataSource;
    OpenDialog1: TOpenDialog;
    ADOQuery_zavody: TADOQuery;
    DataSource_zavody: TDataSource;
    ADOQuery_zavodyKod: TWideStringField;
    ADOQuery_zavodyNazev: TWideStringField;
    ADOQuery_zavodyAdresa: TWideStringField;
    ADOQuery_subkategorie: TADOQuery;
    ADOQuery_subkategorieKod: TWideStringField;
    ADOQuery_subkategorieSubkod: TWideStringField;
    ADOQuery_subkategorieNazev: TWideStringField;
    Datesource_subkategorie: TDataSource;
    DataSource_kalpostupy: TDataSource;
    ADOQuery_kalpostupy: TADOQuery;
    ADOQuery_hlEvidence: TADOQuery;
    DataSource_hlEvidence: TDataSource;
    ADOQuery_hskalibrace: TADOQuery;
    DataSource_hskalibrace: TDataSource;
    DataSource_dokum: TDataSource;
    ADOQuery_dokum: TADOQuery;
    ADOQuery_hsStavuMeridla: TADOQuery;
    DataSource_hsStavuMeridla: TDataSource;
    ADOQuery_vydejna: TADOQuery;
    DataSource_vydejna: TDataSource;
    ADOQuery_hlEvidenceEvidencni_cislo: TWideStringField;
    ADOQuery_hlEvidencekategorie_kod: TWideStringField;
    ADOQuery_hlEvidenceVyr_cis: TWideStringField;
    ADOQuery_hlEvidenceNazev: TWideStringField;
    ADOQuery_hlEvidenceTyp_kod: TWideStringField;
    ADOQuery_hlEvidenceDatum_kalibrace: TDateTimeField;
    ADOQuery_hlEvidenceDoba_platnosti: TIntegerField;
    ADOQuery_hlEvidenceKonec_platnosti: TDateTimeField;
    ADOQuery_hlEvidenceKalibracni_metoda: TWideStringField;
    ADOQuery_hlEvidenceKalibracni_postup: TWideStringField;
    ADOQuery_hlEvidenceKal_postup_posl: TWideStringField;
    ADOQuery_hlEvidenceRok_vyroby: TSmallintField;
    ADOQuery_hlEvidenceDo_provozu: TDateTimeField;
    ADOQuery_hlEvidenceVyrobce: TWideStringField;
    ADOQuery_hlEvidencePovolena_odchylka: TWideStringField;
    ADOQuery_hlEvidenceNejistota: TWideStringField;
    ADOQuery_hlEvidenceRozsah: TWideStringField;
    ADOQuery_hlEvidenceMerici_velicina: TWideStringField;
    ADOQuery_hlEvidenceTrida_presnosti: TWideStringField;
    ADOQuery_hlEvidencePracoviste_kod_vl: TWideStringField;
    ADOQuery_hlEvidenceOs_cislo_vl: TWideStringField;
    ADOQuery_hlEvidenceDo_uzivani: TDateTimeField;
    ADOQuery_hlEvidenceKalibroval: TWideStringField;
    ADOQuery_hlEvidenceCis_protokolu: TWideStringField;
    ADOQuery_hlEvidenceVysledek: TWideStringField;
    ADOQuery_hlEvidenceOs_cislo_vyp: TWideStringField;
    ADOQuery_hlEvidencePracoviste_kod_vyp: TWideStringField;
    ADOQuery_hlEvidenceVypujceno: TDateTimeField;
    ADOQuery_hlEvidencePoznamka: TWideStringField;
    ADOQuery_hlEvidenceKalibracekde: TSmallintField;
    ADOQuery_hlEvidenceKal_stredisko: TWideStringField;
    ADOQuery_hlEvidencekalprot_cesta: TWideStringField;
    ADOQuery_hlEvidenceObor_mereni: TWideStringField;
    ADOQuery_hlEvidenceZacleneni: TWideStringField;
    ADOQuery_hlEvidenceKod_zavodu: TWideStringField;
    ADOQuery_hlEvidenceDatum_udrzby: TDateTimeField;
    ADOQuery_hlEvidenceNasledna_udrzba: TDateTimeField;
    ADOQuery_hlEvidenceProvedl_udrzbu: TWideStringField;
    ADOQuery_hlEvidencePozn_vl: TWideStringField;
    ADOQuery_hlEvidenceTypPeriody: TSmallintField;
    ADOQuery_hlEvidenceCenaMer: TFloatField;
    ADOQuery_hlEvidenceNakladyNaKal: TFloatField;
    ADOQuery_hlEvidenceMetrRetezec: TWideStringField;
    ADOQuery_hlEvidenceInvCislo: TWideStringField;
    ADOQuery_hlEvidenceDodavatel_mer: TWideStringField;
    ADOQuery_hlEvidenceObj_cislo: TWideStringField;
    ADOQuery_hlEvidenceCis_objednavky: TWideStringField;
    ADOQuery_hlEvidencePoznKalibrace: TWideStringField;
    ADOQuery_hlEvidencePresnost: TWideStringField;
    ADOQuery_hlEvidenceTypoveOznaceni: TWideStringField;
    ADOQuery_hlEvidenceDatumVyrazeni: TDateTimeField;
    ADOQuery_hlEvidenceOVyslRohodl: TWideStringField;
    ADOQuery_hlEvidenceObjDnuPred: TSmallintField;
    ADOQuery_hlEvidenceCasKalibrace: TFloatField;
    ADOQuery_dokumEvidencni_cislo: TWideStringField;
    ADOQuery_dokumPorCis: TSmallintField;
    ADOQuery_dokumPopis: TWideStringField;
    ADOQuery_dokumCesta: TWideStringField;
    ADOQuery_hskalibraceEvidencni_cislo: TWideStringField;
    ADOQuery_hskalibraceCis_protokolu: TWideStringField;
    ADOQuery_hskalibraceDatum_kalibrace: TDateTimeField;
    ADOQuery_hskalibraceKonec_platnosti: TDateTimeField;
    ADOQuery_hskalibracePovolena_odchylka: TWideStringField;
    ADOQuery_hskalibraceNejistota: TWideStringField;
    ADOQuery_hskalibraceKalibroval: TWideStringField;
    ADOQuery_hskalibraceKal_postup_posl: TWideStringField;
    ADOQuery_hskalibraceVysledek: TWideStringField;
    ADOQuery_hskalibraceNakladyNaKal: TFloatField;
    ADOQuery_hskalibracekalprot_cesta: TWideStringField;
    ADOQuery_hskalibraceKalibraceKde: TSmallintField;
    ADOQuery_hskalibraceKal_stredisko: TWideStringField;
    ADOQuery_hskalibracePoznKalibrace: TWideStringField;
    ADOQuery_hskalibraceOVyslRohodl: TWideStringField;
    ADOQuery_hskalibraceCasKalibrace: TFloatField;
    ADOQuery_hsStavuMeridlaEvidencni_cislo: TWideStringField;
    ADOQuery_hsStavuMeridlaDatum: TDateTimeField;
    ADOQuery_hsStavuMeridlaPopis: TWideStringField;
    ADOQuery_hsStavuMeridlaOdkaz: TWideStringField;
    ADOQuery_hsStavuMeridlaNakladyOpravy: TFloatField;
    ADOQuery_vydejnaEvidencni_cislo: TWideStringField;
    ADOQuery_vydejnaVydano: TDateTimeField;
    ADOQuery_vydejnaOs_cislo_vyp: TWideStringField;
    ADOQuery_vydejnaPracoviste_kod_vyp: TWideStringField;
    ADOQuery_vydejnaVraceno: TDateTimeField;
    ADOQuery_vydejnaOs_cis_vratil: TWideStringField;
    ADOQuery_kategorieKod: TWideStringField;
    ADOQuery_kategorieNazev: TWideStringField;
    ADOQuery_dodavatelKod_dodavatele: TWideStringField;
    ADOQuery_dodavatelNazev: TWideStringField;
    ADOQuery_dodavatelICO: TWideStringField;
    ADOQuery_dodavatelDIC: TWideStringField;
    ADOQuery_dodavatelUlice: TWideStringField;
    ADOQuery_dodavatelPSC: TWideStringField;
    ADOQuery_dodavatelMesto: TWideStringField;
    ADOQuery_dodavatelStat: TWideStringField;
    ADOQuery_dodavatelTelefon: TWideStringField;
    ADOQuery_dodavatelPOBOX: TWideStringField;
    ADOQuery_dodavatelmail: TWideStringField;
    ADOQuery_dodavatelwww: TWideStringField;
    ADOQuery_dodavatelperioda: TSmallintField;
    ADOQuery_dodavatelSchvaleny: TBooleanField;
    ADOQuery_dodavatelPlatnost_certifikace: TDateTimeField;
    ADOQuery_dodavatelPozn: TWideStringField;
    ADOQuery_dodavatelMobil: TWideStringField;
    ADOQuery_osobyOsobni_cislo: TWideStringField;
    ADOQuery_osobyJmeno: TWideStringField;
    ADOQuery_osobyUlice: TWideStringField;
    ADOQuery_osobyPSC: TWideStringField;
    ADOQuery_osobyMesto: TWideStringField;
    ADOQuery_osobyTelefon: TWideStringField;
    ADOQuery_osobyMail: TWideStringField;
    ADOQuery_osobyKod_zavodu: TWideStringField;
    ADOQuery_osobyNeaktivni: TBooleanField;
    ADOQuery_osobyFirma: TWideStringField;
    ADOQuery_osobyKodFunkce: TWideStringField;
    ADOQuery_akrDokuKod: TWideStringField;
    ADOQuery_akrDokuNazev: TWideStringField;
    ADOQuery_akrDokuUlice: TWideStringField;
    ADOQuery_akrDokuMesto: TWideStringField;
    ADOQuery_akrDokuPSC: TWideStringField;
    ADOQuery_akrDokuPoznamky: TWideStringField;
    ADOQuery_akrDokuDokument: TWideStringField;
    ADOQuery_akrDokuEmail: TWideStringField;
    ADOQuery_akrDokuTelefon: TWideStringField;
    ADOQuery_akrDokuICO: TWideStringField;
    ADOQuery_akrDokuDIC: TWideStringField;
    procedure Action14Execute(Sender: TObject);
    procedure ADOQuery_hlEvidenceAfterScroll(DataSet: TDataSet);
    procedure OpenKalDoc(Sender: TObject);
    procedure ADOQuery_hlEvidenceAfterPost(DataSet: TDataSet);
    procedure open_dcExecute(Sender: TObject);
    procedure insertNewExecute(Sender: TObject);
    procedure OpenKalDocTool(Sender: TObject);
    procedure ADOQuery_hlEvidenceBeforePost(DataSet: TDataSet);
    procedure InsertVypujExecute(Sender: TObject);
    procedure ADOQuery_hlEvidenceDatum_kalibraceChange(Sender: TField);

  private
    buffstring : String;
  public
    procedure SetActiveDataSource();
    function GetCurrentRowData():String;
  end;

var
  dm_evidence: Tdm_evidence;

implementation

uses f_evidence,dm_main,Fwin_evidence_add;

{%CLASSGROUP 'Vcl.Controls.TControl'}


{$R *.dfm}


procedure Tdm_evidence.Action14Execute(Sender: TObject);
begin
  with Twin_evidence_add.Create(nil) do
   try
    ShowModal;
   finally
       Free;
     end;


end;



procedure Tdm_evidence.OpenKalDoc(Sender: TObject);
var
  nzvsoub,workadr : String;

begin
//ShellExec
  workadr:=ExtractFilePath(Application.ExeName);

  nzvsoub:= self.DataSource_hskalibrace.DataSet.FieldByName('kalprot_cesta').AsString;
  if FileExists(workadr+'Documents\'+nzvsoub) then
  begin
    ShellExecute(0, 'open', PWidechar(workadr+'Documents\'+nzvsoub), '', '', SW_SHOWNORMAL);
  end;

end;

procedure Tdm_evidence.open_dcExecute(Sender: TObject);
var
  nzvsoub,workadr : String;
begin
    //ShellExec
  workadr:=ExtractFilePath(Application.ExeName);
  nzvsoub:= DataSource_hsStavuMeridla.DataSet.FieldByName('Odkaz').AsString;
  if FileExists(workadr+'Documents\'+nzvsoub) then
  begin
    ShellExecute(0, 'open', PWidechar(workadr+'Documents\'+nzvsoub), '', '', SW_SHOWNORMAL);
  end;


end;

procedure Tdm_evidence.OpenKalDocTool(Sender: TObject);
  var
  nzvsoub,workadr : String;
begin
    //ShellExec
  workadr:=ExtractFilePath(Application.ExeName);
  nzvsoub:= DataSource_hlEvidence.DataSet.FieldByName('kalprot_cesta').AsString;
  if FileExists(workadr+'Documents\'+nzvsoub) then
  begin
    ShellExecute(0, 'open', PWidechar(workadr+'Documents\'+nzvsoub), '', '', SW_SHOWNORMAL);
  end;


end;

procedure Tdm_evidence.ADOQuery_hlEvidenceAfterPost(DataSet: TDataSet);
var
  evcis,protid,kalibroval,
  pov_odch,nejistota,kal_postup,vysledek,nklnakalibr,sqltext
  ,kalprotcesta,kalstredisko,pozn,ovslrozhodl,caskalibrace : String;

  datum_kal,datum_konec,test : String;
  que : TADOQuery;
  fsde,fsen : TFormatSettings;   //LCID
begin
  fsde:=TFormatSettings.Create('de-de');  //1033
  fsen:=TFormatSettings.Create('en-us');  //1031

  caskalibrace :=FloatToStr(ADOQuery_hlEvidence.FieldByName('CasKalibrace').AsFloat,fsen);

  ovslrozhodl := ADOQuery_hlEvidence.FieldByName('OVyslRohodl').AsString;
  pozn := ADOQuery_hlEvidence.FieldByName('PoznKalibrace').AsString;
  kalstredisko := ADOQuery_hlEvidence.FieldByName('Kal_stredisko').AsString;
  kalprotcesta := ADOQuery_hlEvidence.FieldByName('kalprot_cesta').AsString;
  nklnakalibr := FloatToStr(ADOQuery_hlEvidence.FieldByName('NakladyNaKal').AsFloat,fsen);
  vysledek := ADOQuery_hlEvidence.FieldByName('Vysledek').AsString;
  kal_postup := ADOQuery_hlEvidence.FieldByName('Kal_postup_posl').AsString;
  nejistota := ADOQuery_hlEvidence.FieldByName('Nejistota').AsString;
  pov_odch := ADOQuery_hlEvidence.FieldByName('Povolena_odchylka').AsString;

  if ADOQuery_hlEvidence.FieldByName('Konec_platnosti').AsVariant<>null then
  begin
     datum_konec := DateTimeToStr(ADOQuery_hlEvidence.FieldByName('Konec_platnosti').AsDateTime,fsde);
     datum_konec:='CONVERT(datetime,N'+quotedStr(datum_konec)+',104)';
  end
  else
    datum_konec:='NULL';
  if ADOQuery_hlEvidence.FieldByName('Datum_kalibrace').AsVariant<>null then
  begin
     datum_kal := DateTimeToStr(ADOQuery_hlEvidence.FieldByName('Datum_kalibrace').AsDateTime,fsde);
     datum_kal:='CONVERT(datetime,N'+quotedStr(datum_kal)+',104)';
  end
  else
    datum_kal:='NULL';

   kalibroval := ADOQuery_hlEvidence.FieldByName('Kalibroval').AsString;
   evcis :=  ADOQuery_hlEvidence.FieldByName('Evidencni_cislo').AsString;
   protid :=  ADOQuery_hlEvidence.FieldByName('Cis_protokolu').AsString;
   test :=  self.GetCurrentRowData;

   //test zda byla zmena

  if CompareStr(self.buffstring,test) <> 0 then
  begin
    que:=TADOQuery.Create(self);
    que.Connection:= dmmain.ADOConnection_metr;
   if ADOQuery_HSkalibrace.Locate('Cis_protokolu', protid, []) = True then
     begin
      if MessageDlg('Vkládate údaje do existující záznamu, pøejete si zmìnit záznam poslední kalibrace ?',
       mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
        begin
          sqltext:=
          'UPDATE metr..historie_kal SET Kalibroval =N' + quotedStr(kalibroval) +

          ',Datum_kalibrace='+datum_kal+
          ',Konec_platnosti='+ datum_konec+
          ',Povolena_odchylka=' +quotedStr(pov_odch)+
          ',Nejistota=' + quotedStr(nejistota)+
          ',Kal_postup_posl=N' + quotedStr(kal_postup)+
          ',Vysledek=N'  + quotedStr(vysledek)+
          ',NakladyNaKal='+ nklnakalibr+
          ',kalprot_cesta=N'+ quotedStr(kalprotcesta)+
          ',Kal_stredisko=N' + quotedStr(kalstredisko)+
          ',PoznKalibrace=N' + quotedStr(pozn)+
          ',OVyslRohodl=N' + quotedStr(ovslrozhodl)+
          ',CasKalibrace='+caskalibrace+
          'WHERE Evidencni_cislo=N'+ quotedStr(evcis)+
           'AND Cis_protokolu=' + quotedStr(protid);
       end
       else
       begin

         que.Close;
         exit;
       end;

   end
  else
   begin
     sqltext :=
     'INSERT INTO metr..historie_kal (Evidencni_cislo,Cis_protokolu,Kalibroval,Datum_kalibrace,'+
     'Konec_platnosti,'
     +'Povolena_odchylka,Nejistota,Kal_postup_posl,Vysledek,NakladyNaKal,kalprot_cesta,Kal_stredisko,PoznKalibrace,'+
     'OVyslRohodl,CasKalibrace)'+
     'VALUES ('
     +  quotedStr(evcis)+
      ',' + quotedStr(protid) +
      ',' + quotedStr(kalibroval) +
      ',' + datum_kal +
      ',' + datum_konec +
      ',' + quotedStr(pov_odch) +
      ',' + quotedStr(nejistota) +
      ',' + quotedStr(kal_postup)+
      ',' + quotedStr(vysledek)+
      ',' + nklnakalibr+
      ',' + quotedStr(kalprotcesta)+
      ',' + quotedStr(kalstredisko)+
      ',' + quotedStr(pozn)+
      ',' + quotedStr(ovslrozhodl)+
      ',' + caskalibrace+
      ')';


   end;
   que.SQL.Text:=sqltext;
   que.ExecSQL;
   que.Close;

   que.Free;
  end;

  buffstring := '';

end;

procedure Tdm_evidence.ADOQuery_hlEvidenceAfterScroll(DataSet: TDataSet);
var
  mproud : TMemoryStream;
  Sig1,Sig2:  WORD;  //16-bit unsigned integer  = 2 bytes
  obrjpg : TJPEGImage;
  que : TADOQuery;
  evcis : String;
begin
  if (Form_evidence.DBLookupComboBox_inter.Text = '') then
  begin
     Form_evidence.DBMemo_inter.Clear;
  end;
  //nacteni foto meridla z SQL do Image
  que:=TADOQuery.Create(self);
  que.Connection:= dmmain.ADOConnection_metr;
  mproud:=TMemoryStream.Create;
  try
    evcis:= ADOQuery_hlEvidence.FieldByName('Evidencni_cislo').AsString;
    que.SQL.Text:='SELECT * FROM metr..ObrMeridel WHERE Evidencni_cislo=N'+quotedStr(evcis);
    que.Open;
    (que.FieldByName('Foto_mer') as TBlobField).SaveToStream(mproud);
    que.Close;
    //zjisteni formatu obrazku
    mproud.Seek(0, soFromBeginning);
    mproud.Read(Sig1,2);
    mproud.Position := 2;
    mproud.Read(Sig2,2);
    if (Sig1=$4D42) then  // little Endian format of the first 2 bytes of bitmap
    begin
      mproud.Position:=0;
      Form_evidence.Image_evd.Picture.Bitmap.LoadFromStream(mproud);
    end
    else
    begin
      if (Sig1 = $D8FF) and ((Sig2 = $E0FF) or (Sig2 = $E1FF)) then // little Endian format of the first 4 bytes of  JPEG
      begin
        obrjpg:=TJPEGImage.Create;
        mproud.Position:=0;
        obrjpg.LoadFromStream(mproud);
        if(Form_evidence = nil) then
        begin

        end
        else
        begin
         if Application.FindComponent('Form_evidence')<>nil then
           Form_evidence.Image_evd.Picture.Assign(obrjpg);
        end;

        obrjpg.Free;
      end
      else
      begin
        //neni zadny obr nebo chybny format
        Form_evidence.Image_evd.Picture:=nil;
      end;
    end;
  finally
    que.Free;
    mproud.free;
  end;
end;


function Tdm_evidence.GetCurrentRowData():String;
var
 checkstring : Variant;
begin
  checkstring := ADOQuery_hlEvidence.FieldByName('CasKalibrace').AsString + checkstring;
  checkstring := ADOQuery_hlEvidence.FieldByName('OVyslRohodl').AsString+ checkstring;
  checkstring := ADOQuery_hlEvidence.FieldByName('PoznKalibrace').AsString+ checkstring;
  checkstring := ADOQuery_hlEvidence.FieldByName('Kal_stredisko').AsString+ checkstring;
  checkstring := ADOQuery_hlEvidence.FieldByName('kalprot_cesta').AsString+ checkstring;
  checkstring := ADOQuery_hlEvidence.FieldByName('NakladyNaKal').AsString+ checkstring;
  checkstring := ADOQuery_hlEvidence.FieldByName('Vysledek').AsString+ checkstring;
  checkstring := ADOQuery_hlEvidence.FieldByName('Kal_postup_posl').AsString+ checkstring;
  checkstring := ADOQuery_hlEvidence.FieldByName('Nejistota').AsString+ checkstring;
  checkstring := ADOQuery_hlEvidence.FieldByName('Povolena_odchylka').AsString+ checkstring;
  checkstring := ADOQuery_hlEvidence.FieldByName('Konec_platnosti').AsString+ checkstring;
  checkstring := ADOQuery_hlEvidence.FieldByName('Datum_kalibrace').AsString+ checkstring;
  checkstring :=ADOQuery_hlEvidence.FieldByName('Kalibroval').AsString+ checkstring;
  checkstring :=  ADOQuery_hlEvidence.FieldByName('Evidencni_cislo').AsString+ checkstring;
  checkstring := ADOQuery_hlEvidence.FieldByName('Cis_protokolu').AsString+ checkstring;

  Result := VarToStr(checkstring);
end;


procedure Tdm_evidence.ADOQuery_hlEvidenceBeforePost(DataSet: TDataSet);
begin
   buffstring := GetCurrentRowData();
end;

procedure Tdm_evidence.ADOQuery_hlEvidenceDatum_kalibraceChange(Sender: TField);
 var
 dateStart,DT : TDateTime;
 value,enddate : String;
begin

   dateStart := ADOQuery_hlEvidence.FieldByName('Datum_kalibrace').AsDateTime;
   DT := dateStart;
   value := ADOQuery_hlEvidence.FieldByName('Doba_platnosti').AsString;

   if( ADOQuery_hlEvidence.FieldByName('TypPeriody').AsInteger = 1) then
   begin
     DT := IncMonth(DT, value.ToInteger);
   end
   else
   begin
      DT := IncDay(DT, value.ToInteger);
   end;


  enddate := DateTimeToStr(DT);
  ADOQuery_hlEvidence.FieldByName('Konec_platnosti').AsDateTime := DT;




end;

procedure Tdm_evidence.insertNewExecute(Sender: TObject);
var
  soub,podm,nzvsoub,workadr,evcis : string;
  today : TDateTime;

begin
   if (ADOQuery_hsStavuMeridla.DataSource.DataSet.State=dsEdit) or (ADOQuery_hsStavuMeridla.DataSource.DataSet.State=dsInsert) then
     ADOQuery_hsStavuMeridla.DataSource.DataSet.Post;
   OpenDialog1.Filter:='All|*.*|Document PDF|*.pdf|Document DOC|*.doc|Image JPG|*.jpg|Image BMP|*.bmp';
   if OpenDialog1.Execute then
   begin
      today := Now;
      soub:=OpenDialog1.FileName;
      nzvsoub:=ExtractFileName(soub);
      evcis:=ADOQuery_hlEvidence.FieldByName('Evidencni_cislo').AsString;
      DataSource_hsStavuMeridla.DataSet.Insert;

      if evcis<>NULL then
        podm:=' (Evidencni_cislo=N'+quotedStr(evcis)+')'
      else
        podm:=' (Evidencni_cislo IS NULL)';

      CopyFile(PWideChar(soub),PWideChar(workadr+'Documents\'+nzvsoub),false);
      //vlozeni dat do tab dokumenty
      with ADOQuery_hsStavuMeridla.DataSource.DataSet do
      begin
        DataSource_hsStavuMeridla.DataSet.FieldByName('Evidencni_cislo').AsString:=evcis;
         DataSource_hsStavuMeridla.DataSet.FieldByName('Datum').AsDateTime:=today;
        DataSource_hsStavuMeridla.DataSet.FieldByName('Odkaz').AsString:=nzvsoub;


      end;
      DataSource_hsStavuMeridla.DataSet.Post;
   end;





end;

procedure Tdm_evidence.InsertVypujExecute(Sender: TObject);
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

  evcis := ADOQuery_hlEvidence.FieldByName('Evidencni_cislo').AsString;



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
  ADOQuery_vydejna.Requery([]);
  que.close;
  que.Free;


end;




procedure Tdm_evidence.SetActiveDataSource();
var
i : Integer;
j: Integer;
 n : String;
begin
  i := dm_evidence.ComponentCount;
  for j := 0 to i - 1 do
  begin
    if(dm_evidence.Components[j] is TADOQuery) = True then
     begin
       n:=dm_evidence.Components[j].Name;
       TADOQuery(dm_evidence.Components[j]).Open
     end;
  end;
end;

end.
