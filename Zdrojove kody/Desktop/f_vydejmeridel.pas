unit f_vydejmeridel;

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
  Tf_vydejmer = class(TForm)
  published
    Panel24: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel29: TPanel;
    StaticText89: TStaticText;
    DBGrid_vydejEVD: TDBGrid;
    Panel31: TPanel;
    Panel32: TPanel;
    StaticText91: TStaticText;
    ActionToolBar10: TActionToolBar;
    Panel28: TPanel;
    Panel30: TPanel;
    StaticText90: TStaticText;
    DBGrid12: TDBGrid;
    Panel1: TPanel;
    tree_kategorie: TTreeView;
    tree_typ: TTreeView;
    Panel6: TPanel;
    StaticText3: TStaticText;
    Panel18: TPanel;
    StaticText4: TStaticText;
    ADOQuery1: TADOQuery;
    ComboBox_zavodFiltr: TComboBox;
    SpeedButton1: TSpeedButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tree_kategorieChange(Sender: TObject; Node: TTreeNode);
    procedure FormShow(Sender: TObject);
    procedure ComboBox_zavodFiltrEnter(Sender: TObject);
    procedure ComboBox_zavodFiltrSelect(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  end;

var
  f_vydejmer: Tf_vydejmer;

implementation

uses dm_fvydejmeridel,dm_main;

{$R *.dfm}

procedure Tf_vydejmer.ComboBox_zavodFiltrEnter(Sender: TObject);
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









procedure Tf_vydejmer.ComboBox_zavodFiltrSelect(Sender: TObject);
var
  que : TADOQuery;

begin
  que:=TADOQuery.Create(self);
  que.Connection:=dmmain.ADOConnection_metr;


  if ComboBox_zavodFiltr.Text = '  -  ' then
  begin
    DBGrid_vydejEVD.DataSource.DataSet.Filtered := False;
  end
  else
  begin
    que.SQL.Text := 'SELECT Kod FROM vsdata..Zavody WHERE Nazev ='
    + QuotedSTR(ComboBox_zavodFiltr.Text);
    que.Open;

    DBGrid_vydejEVD.DataSource.DataSet.Filter:='Kod_zavodu =' + QuotedSTR(que.Fields
    .Fields[0].AsString);
    DBGrid_vydejEVD.DataSource.DataSet.Filtered := True;



  end;

que.Free;

end;


procedure Tf_vydejmer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CAFree;
end;

procedure Tf_vydejmer.FormDestroy(Sender: TObject);
begin
    dm_fvydejmeridel.dm_vydejmeridel.Free;
end;

procedure Tf_vydejmer.FormShow(Sender: TObject);
var
  tn,tnrodic,tndite : TTreeNode;

  jestrom : Boolean;
  txtdite,txtrodic : String;
  clontypy :TADOTable;
  I : Integer;
begin

  tree_kategorie.Items.Clear;
  tree_typ.Items.Clear;

  //naplneni Tree kategorie
  dm_vydejmeridel.ADOQuery_kategorie.First;
  tree_kategorie.Items.Add(tree_kategorie.TopItem,'Vše');
  //tn.SelectedIndex:=4;
  //tn.ImageIndex:=-1;//5;
  while dm_vydejmeridel.ADOQuery_kategorie.Eof=false do
  begin
   tn:=tree_kategorie.Items.Add(tree_kategorie.TopItem,dm_vydejmeridel.ADOQuery_kategorie.FieldByName('Nazev').AsString);
   if dm_vydejmeridel.ADOQuery_subkategorie.IsEmpty then
   begin
     //tn.SelectedIndex:=4;
     //tn.ImageIndex:=-1;//5;
   end
   else
   begin
     //tn.SelectedIndex:=-1;//12;
     //tn.ImageIndex:=-1;//12;
   end;
   while dm_vydejmeridel.ADOQuery_subkategorie.Eof=false do
   begin
     tree_kategorie.Items.AddChild(tn,dm_vydejmeridel.ADOQuery_subkategorie.FieldByName('Nazev').AsString);
     //tnsub.SelectedIndex:=4;
     //tnsub.ImageIndex:=-1;//5;
     dm_vydejmeridel.ADOQuery_subkategorie.next;
   end;
   dm_vydejmeridel.ADOQuery_kategorie.Next;
  end;
  //naplneni Tree typ
  dm_vydejmeridel.ADOQuery_typmeridel.First;
  tree_typ.Items.Add(tree_kategorie.TopItem,'Vše');
  //tn.SelectedIndex:=4;
  //tn.ImageIndex:=-1;//5;
  //tn.StateIndex:=-1;
  //tn.ExpandedImageIndex:=-1;
  clontypy:=TADOTable.Create(nil);
  clontypy.Clone(dm_vydejmeridel.ADOQuery_typmeridel);
  while dm_vydejmeridel.ADOQuery_typmeridel.Eof=false do  //vlozeni vsech typu do prvni hladiny
  begin
   tree_typ.Items.Add(tree_typ.TopItem,dm_vydejmeridel.ADOQuery_typmeridel.FieldByName('Nazev').AsString);
   //tn.SelectedIndex:=4;
   //tn.ImageIndex:=-1;//5;
   //tn.StateIndex:=-1;
   //tn.ExpandedImageIndex:=-1;
   dm_vydejmeridel.ADOQuery_typmeridel.Next;
  end;
  dm_vydejmeridel.ADOQuery_typmeridel.First;
  jestrom:=false;
  while dm_vydejmeridel.ADOQuery_typmeridel.Eof=false do  //presun typu dle nadrazenych ID
  begin
    if dm_vydejmeridel.ADOQuery_typmeridel.FieldByName('NadrazenyTyp').AsString<>'' then
    begin
      txtdite:=dm_vydejmeridel.ADOQuery_typmeridel.FieldByName('Nazev').AsString;
      if clontypy.Locate('Kod',dm_vydejmeridel.ADOQuery_typmeridel.FieldByName('NadrazenyTyp').AsString,[]) then
      begin
        txtrodic:=clontypy.FieldByName('Nazev').AsString;
      end
      else
      begin
        dm_vydejmeridel.ADOQuery_typmeridel.Next;
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
      //tnrodic.SelectedIndex:=-1;//12;
      //tnrodic.ImageIndex:=-1;//12;
      //tn.StateIndex:=-1;
      //tn.ExpandedImageIndex:=11;
      jestrom:=true;
    end;
    dm_vydejmeridel.ADOQuery_typmeridel.Next;
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
end;

procedure Tf_vydejmer.SpeedButton1Click(Sender: TObject);
begin
close;
end;

procedure Tf_vydejmer.tree_kategorieChange(Sender: TObject; Node: TTreeNode);
var
 kodkat,kodtyp,pol,subpol,sqltext,sqlpodm : String;
begin
 //odeslani zmen
 try
   if (DBGrid_vydejEVD.DataSource.State=dsEdit) or (DBGrid_vydejEVD.DataSource.State=dsInsert) then
       DBGrid_vydejEVD.DataSource.DataSet.Post;
 except
 end;
 ///////////////////zjisteni kod_druhu
 //if tree_kategorie.Tag=3 then exit;
 if (tree_kategorie.Selected.Index=-1) or (tree_typ.Selected.Index=-1) then
   exit;
 if DBGrid_vydejEVD.Tag=1 then
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

 //provedeni vyberu
 with (DBGrid_vydejEVD.DataSource.DataSet as TADOQuery) do
  begin
   close;
   SQL.Text:=sqltext+sqlpodm;
   Open;
 end;
end;


end.
