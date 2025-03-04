unit dm_Fanalyzy;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Tdm_analyzy = class(TDataModule)
  published
    ADOQuery_typmeridel: TADOQuery;
    DataSource_typmeridel: TDataSource;
    ADOQuery_kategorie: TADOQuery;
    DataSource_kategorie: TDataSource;
    ADOQuery_hlEvidence: TADOQuery;
    DataSource_hlEvidence: TDataSource;
    ADOQuery_osoby: TADOQuery;
    DataSource_osoby: TDataSource;
    ADOQuery_zavody: TADOQuery;
    ADOQuery_zavodyKod: TWideStringField;
    ADOQuery_zavodyNazev: TWideStringField;
    ADOQuery_zavodyAdresa: TWideStringField;
    DataSource_zavody: TDataSource;
    ADOQuery_pracoviste: TADOQuery;
    DataSource_pracoviste: TDataSource;
    DataSource_grid: TDataSource;
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
    ADOQuery_hlEvidenceRok_vyroby: TSmallintField;
    ADOQuery_hlEvidenceDo_provozu: TDateTimeField;
    ADOQuery_hlEvidenceVyrobce: TWideStringField;
    ADOQuery_hlEvidencePovolena_odchylka: TWideStringField;
    ADOQuery_hlEvidenceNejistota: TWideStringField;
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
    ADOQuery_hlEvidenceStav_meridla: TWideStringField;
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
    ADOQuery_hlEvidenceRozsah: TStringField;
    ADOQuery_hlEvidencekal_postup_posl: TStringField;
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
    ADOQuery_pracovistekod: TWideStringField;
    ADOQuery_pracovisteNazev: TWideStringField;
    ADOQuery_pracovisteTel: TWideStringField;
    ADOQuery_pracovisteEmail: TWideStringField;

  public
    procedure SetActiveDataSource();
  end;

var
  dm_analyzy: Tdm_analyzy;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm_analyzy.SetActiveDataSource();
var
i : Integer;
j: Integer;
begin
  i := dm_analyzy.ComponentCount;
  for j := 0 to i - 1 do
  begin
    if(dm_analyzy.Components[j] is TADOQuery) = True then
     begin
       TADOQuery(dm_analyzy.Components[j]).Open
     end;
  end;
end;

end.
