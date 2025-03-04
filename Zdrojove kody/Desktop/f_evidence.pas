unit f_evidence;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls, StrUtils,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ToolWin, Vcl.ActnMan,ShellApi,
  Vcl.ActnCtrls, Vcl.Grids, Vcl.DBGrids, JvExStdCtrls, JvCombobox, JvDBCombobox,
  JvExMask, JvToolEdit, JvExExtCtrls, JvExtComponent, JvDBRadioPanel, ADODB,
  JvDBControls, Vcl.WinXCalendars, JvExComCtrls, JvMonthCalendar, JvExControls,
  JvCalendar, JvSpin, JvDBSpinEdit,System.UITypes,System.Types, DateUtils;

type
  TForm_evidence = class(TForm)
    Dp_koneckal: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    procedure Dp_koneckalClick(Sender: TObject);
    procedure Dp_koneckalChange(Sender: TObject);

  published
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid_HLevd: TDBGrid;
    Panel10: TPanel;
    Panel11: TPanel;
    Bevel1: TBevel;
    cb_aktivni: TCheckBox;
    ActionToolBar1: TActionToolBar;
    Panel4: TPanel;
    Panel1: TPanel;
    tree_kategorie: TTreeView;
    tree_typ: TTreeView;
    Panel6: TPanel;
    Panel18: TPanel;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    PageControl2: TPageControl;
    Tab1: TTabSheet;
    ScrollBox1: TScrollBox;
    Panel19: TPanel;
    Panel5: TPanel;
    GridPanel1: TGridPanel;
    StaticText93: TStaticText;
    StaticText94: TStaticText;
    StaticText96: TStaticText;
    StaticText97: TStaticText;
    StaticText98: TStaticText;
    StaticText99: TStaticText;
    StaticText100: TStaticText;
    StaticText101: TStaticText;
    StaticText102: TStaticText;
    StaticText103: TStaticText;
    StaticText104: TStaticText;
    StaticText105: TStaticText;
    StaticText106: TStaticText;
    StaticText107: TStaticText;
    StaticText109: TStaticText;
    DBEdit3: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox12: TDBLookupComboBox;
    DBLookupComboBox13: TDBLookupComboBox;
    DBLookupComboBox21: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    Panel8: TPanel;
    GridPanel3: TGridPanel;
    GroupBox10: TGroupBox;
    StaticText95: TStaticText;
    StaticText108: TStaticText;
    StaticText133: TStaticText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox11: TGroupBox;
    StaticText135: TStaticText;
    StaticText136: TStaticText;
    StaticText137: TStaticText;
    StaticText138: TStaticText;
    DBLookupComboBox6: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    StaticText139: TStaticText;
    DBMemo2: TDBMemo;
    TabSheet8: TTabSheet;
    ScrollBox2: TScrollBox;
    Panel7: TPanel;
    StaticText1: TStaticText;
    Button1: TButton;
    Button2: TButton;
    TabSheet9: TTabSheet;
    dbg_dokum: TDBGrid;
    TabSheet10: TTabSheet;
    ScrollBox3: TScrollBox;
    Panel12: TPanel;
    GroupBox_kalib: TGroupBox;
    StaticText43: TStaticText;
    StaticText44: TStaticText;
    StaticText45: TStaticText;
    StaticText46: TStaticText;
    StaticText47: TStaticText;
    StaticText48: TStaticText;
    StaticText49: TStaticText;
    StaticText51: TStaticText;
    StaticText53: TStaticText;
    StaticText54: TStaticText;
    StaticText55: TStaticText;
    DBEdit_cena: TDBEdit;
    DBEdit_caskalib: TDBEdit;
    DBEdit_kalibprovedl: TDBEdit;
    DBEdit_maxdobchyba: TDBEdit;
    DBEdit_kaliprot: TDBEdit;
    Button8: TButton;
    Button9: TButton;
    GroupBox3: TGroupBox;
    StaticText36: TStaticText;
    StaticText37: TStaticText;
    StaticText38: TStaticText;
    StaticText39: TStaticText;
    StaticText40: TStaticText;
    StaticText41: TStaticText;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit_inter: TDBEdit;
    DBEdit_kalibstredisko: TDBEdit;
    periodaHod: TJvDBRadioPanel;
    Button6: TButton;
    DBLookupComboBox_kalibstredisko: TDBLookupComboBox;
    StaticText20: TStaticText;
    Button7: TButton;
    DBMemo1: TDBMemo;
    TabSheet11: TTabSheet;
    Panel13: TPanel;
    ActionToolBar3: TActionToolBar;
    DBG_kalibrHS: TDBGrid;
    TabSheet15: TTabSheet;
    Panel16: TPanel;
    ActionToolBar6: TActionToolBar;
    DBGrid_HSstavu: TDBGrid;
    TabSheet16: TTabSheet;
    Panel17: TPanel;
    DBGrid_vydejna: TDBGrid;
    DBComboBox2: TDBComboBox;
    DBComboBox10: TDBComboBox;
    Panel9: TPanel;
    Button4: TButton;
    Button10: TButton;
    JvDB_Date_Provoz: TJvDBComboEdit;
    JvDBComboEdit2: TJvDBComboEdit;
    JvDBComboEdit3: TJvDBComboEdit;
    CalendarView_provoz: TJvMonthCalendar2;
    DBComboBox_vslkalib: TDBComboBox;
    DatumKalibrEdit: TJvDBComboEdit;
    DatumKonec: TJvDBComboEdit;
    OpenDialog1: TOpenDialog;
    JvDBSpinEdit1: TJvDBSpinEdit;
    platnostEdit: TJvDBSpinEdit;
    DBLookupComboBox_vslrozhodl: TDBLookupComboBox;
    Panel14: TPanel;
    ComboBox_zavodFiltr: TComboBox;
    ADOQuery1: TADOQuery;
    SpeedButton1: TSpeedButton;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    StaticText5: TStaticText;
    DBLookupComboBox10: TDBLookupComboBox;
    StaticText6: TStaticText;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    StaticText7: TStaticText;
    DBEdit6: TDBEdit;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    DBEdit7: TDBEdit;
    JvDBComboEdit1: TJvDBComboEdit;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    JvDBComboEdit4: TJvDBComboEdit;
    JvDBComboEdit5: TJvDBComboEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBMemo4: TDBMemo;
    StaticText2: TStaticText;
    DBEdit27: TDBEdit;
    Image_evd: TImage;
    DBMemo_inter: TDBMemo;
    DBLookupComboBox_inter: TDBLookupComboBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CalendarView_provozSelect(Sender: TObject; StartDate,
      EndDate: TDateTime);
    procedure JvDB_Date_ProvozButtonClick(Sender: TObject);
    procedure ButtonAddImage(Sender: TObject);
    procedure ButtonRemoveImage(Sender: TObject);
    procedure ButtonDocOpen(Sender: TObject);
    procedure ButtonDocInsertNew(Sender: TObject);

    procedure ButtonAddKalibProtkol(Sender: TObject);
    procedure OpenLastKalibDokument(Sender: TObject);
    procedure cb_aktivniClick(Sender: TObject);
    procedure ComboBox_zavodFiltrEnter(Sender: TObject);
    procedure ComboBox_zavodFiltrSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tree_kategorieChange(Sender: TObject; Node: TTreeNode);
    procedure Button3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure DBEdit27Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);



  private
    kalendarvolal : TObject;

  public
    function KodZavodu(NzvZavodu : String) : String;

  end;

var
  Form_evidence: TForm_evidence;

implementation

uses dm_Fevidence,dm_main;

{$R *.dfm}


procedure TForm_evidence.ButtonRemoveImage(Sender: TObject);
var
  evcis : String;
begin

  //vymazani z SQL severu
  evcis:=dm_evidence.ADOQuery_hlEvidence.FieldByName('Evidencni_cislo').AsString;
  dmmain.ADOCommandMain.CommandText:='DELETE metr..ObrMeridel WHERE Evidencni_cislo=N'+quotedStr(evcis);
  dmmain.ADOCommandMain.Execute;
  //smazani do TImage
  Image_evd.Picture:=nil;
end;

procedure TForm_evidence.ButtonDocOpen(Sender: TObject);
var
  nzvsoub,workadr : String;
begin
    //ShellExec
  workadr:=ExtractFilePath(Application.ExeName);
  nzvsoub:=dbg_dokum.DataSource.DataSet.FieldByName('Cesta').AsString;
  if FileExists(workadr+'Documents\'+nzvsoub) then
  begin
    ShellExecute(Handle, 'open', PWidechar(workadr+'Documents\'+nzvsoub), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TForm_evidence.ButtonDocInsertNew(Sender: TObject);
var
  soub, sqltext,podm,nzvsoub,workadr : string;
  evcis: Variant;
  maxporcis : Integer;
  q : TADOQuery;
begin
   if (dbg_dokum.DataSource.DataSet.State=dsEdit) or (dbg_dokum.DataSource.DataSet.State=dsInsert) then
     dbg_dokum.DataSource.DataSet.Post;
   OpenDialog1.Filter:='All|*.*|Document PDF|*.pdf|Document DOC|*.doc|Image JPG|*.jpg|Image BMP|*.bmp';
   if OpenDialog1.Execute then
   begin
      soub:=OpenDialog1.FileName;
      nzvsoub:=ExtractFileName(soub);
      dbg_dokum.DataSource.DataSet.Insert;
      evcis:=dbg_dokum.DataSource.DataSet.FieldByName('Evidencni_cislo').AsVariant;
      if evcis<>NULL then
        podm:=' (Evidencni_cislo=N'+quotedStr(evcis)+')'
      else
        podm:=' (Evidencni_cislo IS NULL)';
      sqltext:='SELECT MAX(PorCis) as PorCis FROM metr..DokumMeridel WHERE'+podm;
      q:=TADOQuery.Create(nil);
      q.Connection:=dmmain.ADOConnection_metr;
      q.SQL.Text:=sqltext;
      q.Open;
      maxporcis:=q.FieldByName('PorCis').AsInteger;
      //prekopirovani souboru do adresare Documents
      workadr:=ExtractFilePath(Application.ExeName);
      CopyFile(PWideChar(soub),PWideChar(workadr+'Documents\'+nzvsoub),false);
      //vlozeni dat do tab dokumenty
      with dbg_dokum.DataSource.DataSet do
      begin
        FieldByName('PorCis').AsInteger:=maxporcis+1;
        FieldByName('Cesta').AsString:=nzvsoub;
      end;
      dbg_dokum.DataSource.DataSet.Post;
   end;

end;

procedure TForm_evidence.ButtonAddKalibProtkol(Sender: TObject);
var
  soub,podm,nzvsoub,workadr : string;
  evcis : Variant;
begin
   if (dbg_dokum.DataSource.DataSet.State=dsEdit) or (dbg_dokum.DataSource.DataSet.State=dsInsert) then
     dbg_dokum.DataSource.DataSet.Post;
   OpenDialog1.Filter:='All|*.*|Document PDF|*.pdf|Document DOC|*.doc|Image JPG|*.jpg|Image BMP|*.bmp';
   if OpenDialog1.Execute then
   begin
      soub:=OpenDialog1.FileName;
      nzvsoub:=ExtractFileName(soub);
      DBGrid_HLevd.DataSource.DataSet.Edit;
      evcis:=DBGrid_HLevd.DataSource.DataSet.FieldByName('Evidencni_cislo').AsVariant;
      if evcis<>NULL then
        podm:=' (Evidencni_cislo=N'+quotedStr(evcis)+')'
      else
        podm:=' (Evidencni_cislo IS NULL)';
      //prekopirovani souboru do adresare Documents
      workadr:=ExtractFilePath(Application.ExeName);
      CopyFile(PWideChar(soub),PWideChar(workadr+'Documents\'+nzvsoub),false);
      //vlozeni dat do tab dokumenty
      with DBGrid_HLevd.DataSource.DataSet do
      begin
        //FieldByName('PorCis').AsInteger:=maxporcis+1;
        FieldByName('kalprot_cesta').AsString:=nzvsoub;
      end;
      DBGrid_HLevd.DataSource.DataSet.Post;
   end;

end;



procedure TForm_evidence.OpenLastKalibDokument(Sender: TObject);
var
  nzvsoub,workadr : String;
begin
    //ShellExec
  workadr:=ExtractFilePath(Application.ExeName);
  nzvsoub:=DBGrid_HLevd.DataSource.DataSet.FieldByName('kalprot_cesta').AsString;
  if FileExists(workadr+'Documents\'+nzvsoub) then
  begin
    ShellExecute(Handle, 'open', PWidechar(workadr+'Documents\'+nzvsoub), '', '', SW_SHOWNORMAL);
  end;
end;

procedure TForm_evidence.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TForm_evidence.Button3Click(Sender: TObject);
begin
  (DBGrid_HLevd.DataSource.DataSet as TADOQuery).Requery();
end;

procedure TForm_evidence.Button6Click(Sender: TObject);
var
  nzvsoub,workadr : String;

begin
//ShellExec
  workadr:=ExtractFilePath(Application.ExeName);

  nzvsoub:= DBEdit_kalibstredisko.Text;
  if FileExists(workadr+'Documents\'+nzvsoub) then
  begin
    ShellExecute(0, 'open', PWidechar(workadr+'Documents\'+nzvsoub), '', '', SW_SHOWNORMAL);
  end;


end;

procedure TForm_evidence.ButtonAddImage(Sender: TObject);
var
  soub,evcis : String;
  que : TADOQuery;
begin
  que:=TADOQuery.Create(self);
  try
    que.Connection:=dmmain.ADOConnection_metr;
    OpenDialog1.Filter:='Vše|*.*|Image JPG|*.jpg|Image BMP|*.bmp';
    OpenDialog1.FileName:='';
    if OpenDialog1.Execute then
    begin
      soub:=OpenDialog1.FileName;
      if FileExists(soub) then
      begin
        try
          //ulozeni na SQL server
          evcis:=dm_evidence.ADOQuery_hlEvidence.FieldByName('Evidencni_cislo').AsString;
          que.SQL.Text:='SELECT * FROM metr..ObrMeridel WHERE Evidencni_cislo=N'+quotedStr(evcis);
          que.Open;
          if que.IsEmpty=true then
          begin
            que.Insert;
            que.FieldByName('Evidencni_cislo').AsString:=evcis;
            (que.FieldByName('Foto_mer') as TBlobField).LoadFromFile(soub);
          end
          else
          begin
            que.Edit;
            (que.FieldByName('Foto_mer') as TBlobField).LoadFromFile(soub);
          end;
          que.Post;
          //ulozeni do TImage
          Image_evd.Picture.LoadFromFile(soub);
        except
          On EInvalidGraphic do
          begin
              que.Edit;
              que.FieldByName('Foto_mer').AsVariant:=NULL;
              messagedlg('Neznámý formát souboru.',mtInformation,[mbOK],0);
          end
          else
          begin
            messagedlg('Soubor se nepodaøil naèíst.',mtInformation,[mbOK],0);
          end;
          que.Close;
          que.Free;

        end;
      end;
    end;
  finally
    que.Close;
    que.Free;
  end;
end;

procedure TForm_evidence.CalendarView_provozSelect(Sender: TObject; StartDate,
  EndDate: TDateTime);
begin
  if (dm_evidence.ADOQuery_hlEvidence.State<>dsEdit) and (dm_evidence.ADOQuery_hlEvidence.State<>dsInsert) then
    dm_evidence.ADOQuery_hlEvidence.Edit;

  (kalendarvolal as TJvDBComboEdit).Field.AsDateTime:=StartDate;
  (kalendarvolal as TJvDBComboEdit).SetFocus;
  CalendarView_provoz.Visible:=false;
end;

procedure TForm_evidence.cb_aktivniClick(Sender: TObject);
begin
  tree_kategorieChange(tree_kategorie,tree_kategorie.Selected);
  DBGrid_HLevd.SetFocus;


  {if self.CheckBox2.Checked = True then
    begin
      DBGrid_HLevd.DataSource.DataSet.Filter:='Stav_meridla <>'+QuotedSTR('Vyøazeno')
      + 'OR Stav_meridla=NULL ';
      DBGrid_HLevd.DataSource.DataSet.Filtered := True;
    end
    else
    begin
       DBGrid_HLevd.DataSource.DataSet.Filtered := False;
    end;       }


end;

procedure TForm_evidence.ComboBox_zavodFiltrEnter(Sender: TObject);
var
que : TADOQuery;
begin
  ComboBox_zavodFiltr.Items.Clear;
  que:=TADOQuery.Create(self);
  que.Connection:=dmmain.ADOConnection_metr;
  que.SQL.Text := 'SELECT Nazev FROM vsdata..Zavody';
  que.Open;

  ComboBox_zavodFiltr.Items.Add('  -  ');
  while not que.Eof do begin
   ComboBox_zavodFiltr.Items.Add(que.Fields.Fields[0].AsString);
   que.Next;
  end;



  que.Free;



end;

procedure TForm_evidence.ComboBox_zavodFiltrSelect(Sender: TObject);
var
  que : TADOQuery;

begin
  tree_kategorieChange(tree_kategorie,tree_kategorie.Selected);
  DBGrid_HLevd.SetFocus;

  {que:=TADOQuery.Create(self);
  que.Connection:=dmmain.ADOConnection_metr;


  if ComboBox_zavodFiltr.Text = '  -  ' then
  begin
    //if self.cb_vyrzeno.Checked = True then
    //begin
    //  DBGrid_HLevd.DataSource.DataSet.Filter:='Stav_meridla <>'+QuotedSTR('Vyøazeno')
    //  + 'OR Stav_meridla=NULL ';
    //  DBGrid_HLevd.DataSource.DataSet.Filtered := True;
    //end
    //else
    //begin
       DBGrid_HLevd.DataSource.DataSet.Filtered := False;
    //end;
  end
  else
  begin
    que.SQL.Text := 'SELECT Kod FROM vsdata..Zavody WHERE Nazev ='
    + QuotedSTR(ComboBox_zavodFiltr.Text);
    que.Open;

    if self.cb_vyrzeno.Checked = True then
    begin

      DBGrid_HLevd.DataSource.DataSet.Filter:='Kod_zavodu =' + QuotedSTR(que.Fields
    .Fields[0].AsString) + 'AND Stav_meridla <>'+QuotedSTR('Vyøazeno')
      + 'OR Stav_meridla=NULL';
      DBGrid_HLevd.DataSource.DataSet.Filtered := True;
    end
    else
    begin
      DBGrid_HLevd.DataSource.DataSet.Filter:='Kod_zavodu =' + QuotedSTR(que.Fields
    .Fields[0].AsString);
      DBGrid_HLevd.DataSource.DataSet.Filtered := True;
    end;



  end;


que.close;
que.Free;   }

end;

procedure TForm_evidence.DBEdit27Change(Sender: TObject);
begin
 if DBEdit27.Text <> '' then
 begin
    GroupBox_kalib.Enabled := True;
 end
 else
 begin
    GroupBox_kalib.Enabled := False;
 end;

end;

procedure TForm_evidence.DBRadioGroup1Click(Sender: TObject);
begin
   if self.DBRadioGroup1.ItemIndex = 0 then
   begin
      self.DBLookupComboBox_kalibstredisko.Enabled := False;
      self.DBEdit_kalibstredisko.Enabled := False;
      self.DBLookupComboBox_inter.Enabled := True;
      self.DBEdit_inter.Enabled := True;
      self.DBMemo_inter.Enabled := True;
   end;
   if self.DBRadioGroup1.ItemIndex = 1 then
   begin

      self.DBLookupComboBox_kalibstredisko.Enabled := True;
      self.DBEdit_kalibstredisko.Enabled := True;
      self.DBLookupComboBox_inter.Enabled := False;
      self.DBEdit_inter.Enabled := False;
      self.DBMemo_inter.Enabled := False;

   end;







end;

procedure TForm_evidence.Dp_koneckalChange(Sender: TObject);
begin
  tree_kategorieChange(tree_kategorie,tree_kategorie.Selected);
end;

procedure TForm_evidence.Dp_koneckalClick(Sender: TObject);
begin
  tree_kategorieChange(tree_kategorie,tree_kategorie.Selected);
  //DBGrid_HLevd.SetFocus;
end;

procedure TForm_evidence.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := CAFree;
end;

procedure TForm_evidence.FormDestroy(Sender: TObject);
begin
  dm_evidence.Free;

end;

procedure TForm_evidence.FormShow(Sender: TObject);
var
  tn,tnrodic,tndite : TTreeNode;

  jestrom : Boolean;
  txtdite,txtrodic : String;
  clontypy :TADOTable;
  I : Integer;
begin
  tree_typ.Items.Clear;
  tree_kategorie.Items.Clear;


  //naplneni Tree kategorie
  dm_evidence.ADOQuery_kategorie.First;
  tree_kategorie.Items.Add(tree_kategorie.TopItem,'Vše');
  //tn.SelectedIndex:=4;
  //tn.ImageIndex:=-1;//5;
  while dm_evidence.ADOQuery_kategorie.Eof=false do
  begin
   tn:=tree_kategorie.Items.Add(tree_kategorie.TopItem,dm_evidence.ADOQuery_kategorie.FieldByName('Nazev').AsString);
   if dm_evidence.ADOQuery_subkategorie.IsEmpty then
   begin
     //tn.SelectedIndex:=4;
     //tn.ImageIndex:=-1;//5;
   end
   else
   begin
     //tn.SelectedIndex:=-1;//12;
     //tn.ImageIndex:=-1;//12;
   end;
   while dm_evidence.ADOQuery_subkategorie.Eof=false do
   begin
     tree_kategorie.Items.AddChild(tn,dm_evidence.ADOQuery_subkategorie.FieldByName('Nazev').AsString);
     //tnsub.SelectedIndex:=4;
     //tnsub.ImageIndex:=-1;//5;
     dm_evidence.ADOQuery_subkategorie.next;
   end;
   dm_evidence.ADOQuery_kategorie.Next;
  end;
  //naplneni Tree typ
  dm_evidence.ADOQuery_typmeridel.First;
  tree_typ.Items.Add(tree_kategorie.TopItem,'Vše');
  clontypy:=TADOTable.Create(nil);
  clontypy.Clone(dm_evidence.ADOQuery_typmeridel);
  while dm_evidence.ADOQuery_typmeridel.Eof=false do  //vlozeni vsech typu do prvni hladiny
  begin
   tree_typ.Items.Add(tree_typ.TopItem,dm_evidence.ADOQuery_typmeridel.FieldByName('Nazev').AsString);
   dm_evidence.ADOQuery_typmeridel.Next;
  end;
  dm_evidence.ADOQuery_typmeridel.First;
  jestrom:=false;
  while dm_evidence.ADOQuery_typmeridel.Eof=false do  //presun typu dle nadrazenych ID
  begin
    if dm_evidence.ADOQuery_typmeridel.FieldByName('NadrazenyTyp').AsString<>'' then
    begin
      txtdite:=dm_evidence.ADOQuery_typmeridel.FieldByName('Nazev').AsString;
      if clontypy.Locate('Kod',dm_evidence.ADOQuery_typmeridel.FieldByName('NadrazenyTyp').AsString,[]) then
      begin
        txtrodic:=clontypy.FieldByName('Nazev').AsString;
      end
      else
      begin
        dm_evidence.ADOQuery_typmeridel.Next;
        Continue;
      end;
      for I := 0 to tree_typ.Items.Count - 1 do
      begin
        if tree_typ.Items.Item[i].Text=txtrodic then
          tnrodic:=tree_typ.Items.Item[i];
        if tree_typ.Items.Item[i].Text=txtdite then
          tndite:=tree_typ.Items.Item[i];
      end;
      tndite.MoveTo(tnrodic,naAddChild);
      jestrom:=true;
    end;
    dm_evidence.ADOQuery_typmeridel.Next;
  end;
  clontypy.Free;
  tree_typ.FullCollapse;
  if jestrom then
  begin
    tree_typ.ShowButtons:=true;
    tree_typ.ShowRoot:=true;
  end
  else
  begin
    tree_typ.ShowButtons:=false;
    tree_typ.ShowRoot:=false;
  end;
  //nastaveni aktivni prvni tree volby
  tree_kategorie.Items.Item[0].Selected:=true;
  tree_typ.Items.Item[0].Selected:=true;
  Dp_koneckal.DateTime:=today();
  Dp_koneckal.Checked:=false;
end;

function TForm_evidence.KodZavodu(NzvZavodu : String) : String;
var
  q : TADOQuery;
  kod : String;
begin
  //zjisteni kodu zavodu
  if NzvZavodu<>'' then
  begin
    q:=TADOQuery.Create(nil);
    q.Connection:=dmmain.ADOConnection_vsdata;
    q.SQL.Text:=' SELECT Kod FROM vsdata..zavody'+
                ' WHERE Nazev=N'+quotedStr(NzvZavodu)+
                '';
    q.Open;
    if q.IsEmpty then
      kod:=''
    else
      kod:=q.FieldByName('Kod').AsString;
    q.Close;
    q.Free;
  end
  else
    kod:='';
  Result:=kod;
end;


procedure TForm_evidence.tree_kategorieChange(Sender: TObject; Node: TTreeNode);
var
 kodkat,kodtyp,pol,subpol,sqltext,sqlpodm,kodzav,koneckalstr : String;
 fsde : TFormatSettings;
begin
  fsde:=TFormatSettings.Create('de-de');
 //odeslani zmen
 try
   if (DBGrid_HLevd.DataSource.State=dsEdit) or (DBGrid_HLevd.DataSource.State=dsInsert) then
       DBGrid_HLevd.DataSource.DataSet.Post;
 except
 end;
 ///////////////////zjisteni kod_druhu
 //if tree_kategorie.Tag=3 then exit;
 if (tree_kategorie.Selected.Index=-1) or (tree_typ.Selected.Index=-1) then
   exit;
 if DBGrid_HLevd.Tag=1 then
 begin
   tree_kategorie.Deselect(tree_kategorie.Selected);
   tree_typ.Deselect(tree_typ.Selected);
   //showmessage('Pøi aktivním VÝBÌRU nelze použít tyto volby.');
   exit;
 end;
 if tree_kategorie.Selected.AbsoluteIndex<>0 then
 begin
   if tree_kategorie.Selected.Parent<>nil then
   begin
     pol:=tree_kategorie.Selected.Parent.Text;
     subpol:=tree_kategorie.Selected.text;
   end
   else
   begin
     pol:=tree_kategorie.Selected.Text;
     subpol:='';
   end;
   if subpol='' then
   begin         //neni subpolzkou
     ADOQuery1.Close;
     ADOQuery1.SQL.Text:='SELECT kod FROM metr..kategorie WHERE Nazev=N'+QuotedStr(pol);
     ADOQuery1.Open;
     kodkat:=ADOQuery1.FieldByName('Kod').AsString;
     ADOQuery1.Close;
   end
   else          //je subpolozkou
   begin
     ADOQuery1.Close;
     ADOQuery1.SQL.Text:='SELECT kod FROM metr..kategorie WHERE Nazev=N'+QuotedStr(pol);
     ADOQuery1.Open;
     kodkat:=ADOQuery1.FieldByName('Kod').AsString;
     ADOQuery1.Close;
     ADOQuery1.SQL.Text:=' SELECT (Kod+''_''+Subkod) as Kod FROM metr..subkategorie'+
                         ' WHERE Kod=N'+quotedStr(kodkat)+'AND Nazev=N'+QuotedStr(subpol);
     ADOQuery1.Open;
     kodkat:=ADOQuery1.FieldByName('Kod').AsString;
     ADOQuery1.Close;
   end;
 end
 else
   kodkat:='vse';
 //zjisteni typu meridla
 if tree_typ.Selected.AbsoluteIndex<>0 then
 begin
   pol:=tree_typ.Selected.Text;
   ADOQuery1.Close;
   ADOQuery1.SQL.Text:='SELECT Kod FROM metr..typymeridel WHERE Nazev=N'+QuotedStr(pol);
   ADOQuery1.Open;
   kodtyp:=ADOQuery1.FieldByName('Kod').AsString;
   ADOQuery1.Close;
 end
 else
   kodtyp:='vse';
 //nastaveni podminky pro zavod z filtru

sqltext:='SELECT E.* FROM metr..evidence E';

 if (kodtyp<>'vse') and (kodkat<>'vse') then
 begin
     sqlpodm:=' WHERE E.kategorie_kod=N'+quotedStr(kodkat)+' AND E.Typ_kod=N'+quotedStr(kodtyp);
 end;
 if (kodtyp='vse') and (kodkat<>'vse') then
 begin
     sqlpodm:=' WHERE E.kategorie_kod=N'+quotedStr(kodkat);
 end;
 if (kodtyp<>'vse') and (kodkat='vse') then
 begin
     sqlpodm:=' WHERE E.Typ_kod=N'+quotedStr(kodtyp);
 end;
   //podminka  aktivni
   if cb_aktivni.Checked then
   begin
     if sqlpodm='' then
       sqlpodm:=' WHERE (Stav_meridla=N'+QuotedSTR('Aktivní')+' or Stav_meridla IS NULL)'
     else
       sqlpodm:=sqlpodm+' and (Stav_meridla=N'+QuotedSTR('Aktivní')+' or Stav_meridla IS NULL)';
   end;
  //podmnka zavody
  if (ComboBox_zavodFiltr.Text <> '  -  ') and (ComboBox_zavodFiltr.Text <> '') then
  begin
   //zjisteni kodu zavodu
   kodzav:=KodZavodu(ComboBox_zavodFiltr.Text);
   //vlastni podminka
   if sqlpodm='' then
     sqlpodm:=' WHERE (E.Kod_zavodu=N'+quotedStr(kodzav)+' or E.Kod_zavodu IS NULL)'
   else
     sqlpodm:=sqlpodm+' and (E.Kod_zavodu=N'+quotedStr(kodzav)+' or E.Kod_zavodu IS NULL)';
   end;
   //podmimka konec kalibrace
   if Dp_koneckal.Checked then
   begin
     koneckalstr:=DateTimeToStr(Dp_koneckal.Date,fsde);
     if sqlpodm='' then
       sqlpodm:=' WHERE (Konec_platnosti<=CONVERT(datetime,N'+quotedStr(koneckalstr)+',104))'
     else
       sqlpodm:=sqlpodm+' and (Konec_platnosti<=CONVERT(datetime,N'+quotedStr(koneckalstr)+',104))';
   end;
 //provedeni vyberu
 with (DBGrid_HLevd.DataSource.DataSet as TADOQuery) do
  begin
   close;
   SQL.Text:=sqltext+sqlpodm;
   Open;
 end;
end;

procedure TForm_evidence.JvDB_Date_ProvozButtonClick(Sender: TObject);
var
  poloha : TPoint;
begin

  if (platnostEdit.Text = '') AND (sender.Equals(DatumKalibrEdit) = True) then
  begin
    ShowMessage('První zadejte dobu platnosti.');
    exit;
  end;

  //otevrit kalendar
  if CalendarView_provoz.Visible then
    CalendarView_provoz.Visible:=false
  else
  begin
    CalendarView_provoz.Parent:=self;
    poloha:=(sender as TJvDBComboEdit).ClientToScreen(Point(0,0));
    CalendarView_provoz.Left:=self.ScreenToClient(poloha).x;
    CalendarView_provoz.Top:=self.ScreenToClient(poloha).Y+(sender as TJvDBComboEdit).Height;
    CalendarView_provoz.Visible:=true;
    kalendarvolal:=sender;
  end;
end;

end.




















