unit Fwin_evidence_add;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls,Data.DB, Data.Win.ADODB,StrUtils, JvExMask, JvToolEdit,
  JvDBLookup;

type
  Twin_evidence_add = class(TForm)
  published
    GroupBox1: TGroupBox;
    GridPanel1: TGridPanel;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    pl_evcis: TEdit;
    ADOQuery1: TADOQuery;
    Panel2: TPanel;
    StaticText4: TStaticText;
    pl_typ: TJvDBLookupEdit;
    procedure Button2Click(Sender: TObject);
    procedure ButtonInsert(Sender: TObject);
    procedure pl_typ1Exit(Sender: TObject);

  end;

var
  win_evidence_add: Twin_evidence_add;

implementation

uses dm_Fevidence,dm_main;

{$R *.dfm}

procedure Twin_evidence_add.ButtonInsert(Sender: TObject);
var
 buffer,sqltext,typkod : string;
q : TADOQuery;
begin
  if  pl_evcis.GetTextLen = 0 then
    begin
      ShowMessage('Prosím vyplnte evidenèní èíslo mìøidla.');
      Exit;
    end;
  typkod:=pl_typ.LookupValue;
   buffer := pl_evcis.Text;

   sqltext := 'INSERT INTO metr..evidence (Evidencni_cislo,Typ_kod) VALUES  (N'+ QuotedStr(buffer) +','+quotedStr(typkod)+')';
   q:=TADOQuery.Create(nil);
  q.Connection:=dmmain.ADOConnection_metr;
  q.SQL.Text:=sqltext;
  q.ExecSQL;
  dm_evidence.ADOQuery_hlEvidence.Requery([]);
  q.Free;
  Close;

end;

procedure Twin_evidence_add.pl_typ1Exit(Sender: TObject);
var
  typkod,sqltext,porcis,maxporcis : String;
begin
  (sender as TJvDBLookupEdit).Tag:=0;
  //generovani ev. cisla meridla
  if (pl_typ.Text<>'') and (pl_typ.LookupValue<>'') then
  begin
    typkod:=pl_typ.LookupValue;
    sqltext:=' SELECT Evidencni_cislo FROM metr..evidence WHERE Typ_kod=N'+quotedstr(typkod)+
             ' and Evidencni_cislo LIKE N'+quotedStr(typkod+'/[0-9][0-9][0-9][0-9]');
    ADOQuery1.Close;
    ADOQuery1.SQL.Text:=sqltext;
    ADOQuery1.Open;
    if ADOQuery1.IsEmpty=false then
    begin
      //zjisteni max cisla
      ADOQuery1.First;
      maxporcis:='0000';
      while ADOQuery1.Eof=false do
      begin
        porcis:=ADOQuery1.FieldByName('Evidencni_cislo').AsString;
        porcis:=RightStr(porcis,Length(porcis)-pos('/',porcis));
        try
          if StrToInt(maxporcis)<StrToInt(porcis) then
            maxporcis:=porcis;
        except
        end;
        ADOQuery1.Next;
      end;
      //nastaveni ev. cisla
      maxporcis:=IntToStr(StrToInt(maxporcis)+1);
      if Length(maxporcis)<4 then
      begin
        case Length(maxporcis) of
         1 : maxporcis:='000'+maxporcis;
         2 : maxporcis:='00'+maxporcis;
         3 : maxporcis:='0'+maxporcis;
        end;
      end;
      pl_evcis.Text:=typkod+'/'+maxporcis;
    end
    else
    begin
      pl_evcis.Text:=typkod+'/0001';
    end;
  end
  else
    pl_evcis.Text:='';
end;

procedure Twin_evidence_add.Button2Click(Sender: TObject);
begin
Close;
end;



end.
