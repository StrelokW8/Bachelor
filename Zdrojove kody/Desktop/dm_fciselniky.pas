unit dm_fciselniky;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, Vcl.Controls,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ActnMan,
  Data.DB, Data.Win.ADODB, Vcl.Forms,ShellApi,Winapi.Windows;

type
  Tdm_ciselniky = class(TDataModule)
  published
    ActionManager1: TActionManager;
    ImageList1: TImageList;
    ADOQuery_Kategorie_mer: TADOQuery;
    DataSource_kategorie_meridel: TDataSource;
    ADOQuery_subkategorie: TADOQuery;
    DataSource_subkategorie: TDataSource;
    DataSource_typmeridel: TDataSource;
    ADOQuery_kalipostup: TADOQuery;
    DataSource_kalipostup: TDataSource;
    ADOQuery_kalstrediska: TADOQuery;
    DataSource_kalstrediska: TDataSource;
    ADOQuery_zavod: TADOQuery;
    DataSource_zavody: TDataSource;
    ADOQuery_osoby: TADOQuery;
    DataSource_osoby: TDataSource;
    ADOQuery_pracoviste: TADOQuery;
    DataSource_pracoviste: TDataSource;
    ADOQuery_dodavatele: TADOQuery;
    DataSource_dodavatele: TDataSource;
    ADOQuery_txtudrzby: TADOQuery;
    DataSource_txtudrzby: TDataSource;
    ADOQuery_vyrmeridel: TADOQuery;
    DataSource_vyrmeridel: TDataSource;
    ADOQuery_typmeridel: TADOQuery;
    ADOQuery_kalipostupKod: TWideStringField;
    ADOQuery_kalipostupCislo_kalpostupu: TWideStringField;
    ADOQuery_kalipostupNazev: TWideStringField;
    ADOQuery_kalipostupTeplota: TWideStringField;
    ADOQuery_kalipostupTlak: TWideStringField;
    ADOQuery_kalipostupVlhkost: TWideStringField;
    ADOQuery_kalipostupZneni: TWideMemoField;
    OtevritPostup: TAction;
    OpenDoc: TAction;
    ADOQuery_Kategorie_merKod: TWideStringField;
    ADOQuery_Kategorie_merNazev: TWideStringField;
    ADOQuery_subkategorieKod: TWideStringField;
    ADOQuery_subkategorieSubkod: TWideStringField;
    ADOQuery_subkategorieNazev: TWideStringField;
    ADOQuery_typmeridelKod: TWideStringField;
    ADOQuery_typmeridelNazev: TWideStringField;
    ADOQuery_typmeridelPopis: TWideStringField;
    ADOQuery_typmeridelCasKalibrace: TFloatField;
    ADOQuery_typmeridelNadrazenyTyp: TWideStringField;
    ADOQuery_kalstrediskaKod: TWideStringField;
    ADOQuery_kalstrediskaNazev: TWideStringField;
    ADOQuery_kalstrediskaUlice: TWideStringField;
    ADOQuery_kalstrediskaMesto: TWideStringField;
    ADOQuery_kalstrediskaPSC: TWideStringField;
    ADOQuery_kalstrediskaPoznamky: TWideStringField;
    ADOQuery_kalstrediskaDokument: TWideStringField;
    ADOQuery_kalstrediskaEmail: TWideStringField;
    ADOQuery_kalstrediskaTelefon: TWideStringField;
    ADOQuery_kalstrediskaICO: TWideStringField;
    ADOQuery_kalstrediskaDIC: TWideStringField;
    ADOQuery_zavodKod: TWideStringField;
    ADOQuery_zavodNazev: TWideStringField;
    ADOQuery_zavodAdresa: TWideStringField;
    ADOQuery_dodavateleKod_dodavatele: TWideStringField;
    ADOQuery_dodavateleNazev: TWideStringField;
    ADOQuery_dodavateleICO: TWideStringField;
    ADOQuery_dodavateleDIC: TWideStringField;
    ADOQuery_dodavateleUlice: TWideStringField;
    ADOQuery_dodavatelePSC: TWideStringField;
    ADOQuery_dodavateleMesto: TWideStringField;
    ADOQuery_dodavateleStat: TWideStringField;
    ADOQuery_dodavateleTelefon: TWideStringField;
    ADOQuery_dodavatelePOBOX: TWideStringField;
    ADOQuery_dodavatelemail: TWideStringField;
    ADOQuery_dodavatelewww: TWideStringField;
    ADOQuery_dodavateleperioda: TSmallintField;
    ADOQuery_dodavateleSchvaleny: TBooleanField;
    ADOQuery_dodavatelePlatnost_certifikace: TDateTimeField;
    ADOQuery_dodavatelePozn: TWideStringField;
    ADOQuery_dodavateleMobil: TWideStringField;
    ADOQuery_txtudrzbyKod: TWideStringField;
    ADOQuery_txtudrzbyTexty: TWideStringField;
    ADOQuery_vyrmeridelKod: TWideStringField;
    ADOQuery_vyrmeridelNazev: TWideStringField;
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
    procedure OtevritPostupExecute(Sender: TObject);
    procedure OpenDocExecute(Sender: TObject);

  public
    procedure SetActiveDataSource();
  end;

var
  dm_ciselniky: Tdm_ciselniky;

implementation

uses f_ciselniky,dm_main;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm_ciselniky.OpenDocExecute(Sender: TObject);
var
  nzvsoub,workadr : String;
begin
    //ShellExec
  workadr:=ExtractFilePath(Application.ExeName);
  nzvsoub:= DataSource_kalipostup.DataSet.FieldByName('Dokument').AsString;
  if FileExists(workadr+'Documents\'+nzvsoub) then
  begin
    ShellExecute(0, 'open', PWidechar(workadr+'Documents\'+nzvsoub), '', '', SW_SHOWNORMAL);
  end;

end;

procedure Tdm_ciselniky.OtevritPostupExecute(Sender: TObject);
var
  nzvsoub,workadr : String;
begin
    //ShellExec
  workadr:=ExtractFilePath(Application.ExeName);
  nzvsoub:= DataSource_kalipostup.DataSet.FieldByName('Odkaz').AsString;
  if FileExists(workadr+'Documents\'+nzvsoub) then
  begin
    ShellExecute(0, 'open', PWidechar(workadr+'Documents\'+nzvsoub), '', '', SW_SHOWNORMAL);
  end;

end;

procedure Tdm_ciselniky.SetActiveDataSource();
var
  j: Integer;
  i : Integer;
begin
  i := dm_ciselniky.ComponentCount;
  for j := 0 to i - 1 do
    if(dm_ciselniky.Components[j] is TADOQuery) = True then
      begin
         with TADOQuery(dm_ciselniky.Components[j]) do
          Open;
      end;

end;
end.
