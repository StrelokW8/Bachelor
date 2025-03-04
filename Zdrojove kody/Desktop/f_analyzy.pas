unit f_analyzy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls, StrUtils,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ToolWin, Vcl.ActnMan,ShellApi,
  Vcl.ActnCtrls, Vcl.Grids, Vcl.DBGrids, JvExStdCtrls, JvCombobox, JvDBCombobox,
  JvExMask, JvToolEdit, JvExExtCtrls, JvExtComponent, JvDBRadioPanel, ADODB,
  JvDBControls, Vcl.WinXCalendars, JvExComCtrls, JvMonthCalendar, JvExControls,
  JvCalendar, JvSpin, JvDBSpinEdit,System.UITypes,System.Types, DateUtils,
  JvListBox, JvComboListBox, VclTee.TeeGDIPlus, VCLTee.Series, VCLTee.TeEngine,
  VCLTee.TeeProcs, VCLTee.Chart;

type
  Tf_analyz = class(TForm)
  published
    Panel2: TPanel;
    Panel1: TPanel;
    StaticText1: TStaticText;
    Panel3: TPanel;
    GridPanel1: TGridPanel;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    DBGrid_bottom: TDBGrid;
    Panel9: TPanel;
    StaticText9: TStaticText;
    analyzaTyp_pick: TTreeView;
    DateTimePicker_od: TDateTimePicker;
    DateTimePicker_do: TDateTimePicker;
    graf: TChart;
    Series1: TBarSeries;
    TeeGDIPlus1: TTeeGDIPlus;
    DBLookupComboBox_vl_jmeno: TDBLookupComboBox;
    DBLookupComboBox_umisteni_osoba: TDBLookupComboBox;
    DBLookupComboBox_zavod: TDBLookupComboBox;
    DBLookupComboBox_vl_kodpracoviste: TDBLookupComboBox;
    DBLookupComboBox_umistenipracoviste: TDBLookupComboBox;
    Series2: TBarSeries;
    Panel10: TPanel;
    Edit_pocet: TEdit;
    text_pocet: TStaticText;
    text_cena: TStaticText;
    Edit_cena: TEdit;
    ScrollBox1: TScrollBox;
    SpeedButton1: TSpeedButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure analyzaTyp_pickChange(Sender: TObject; Node: TTreeNode);
    procedure SpeedButton1Click(Sender: TObject);
  private
    qdsc : TDatasource;
    q : TADOQuery;

  end;

var
  f_analyz: Tf_analyz;

implementation

uses dm_Fanalyzy,dm_main;
{$R *.dfm}



procedure Tf_analyz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CAFree;
end;

procedure Tf_analyz.FormDestroy(Sender: TObject);
begin
  dm_Fanalyzy.dm_analyzy.Free;
  if(q <> nil) then
  begin
   q.Close;
  q.Free;
  qdsc.Free;
  end;

end;

procedure Tf_analyz.SpeedButton1Click(Sender: TObject);
begin
close;
end;

procedure Tf_analyz.analyzaTyp_pickChange(Sender: TObject; Node: TTreeNode);
var
  podm,time_od,time_do : String;
  fsde : TFormatSettings;
  cena_cel,pocet_cel : Double;
begin

  fsde:=TFormatSettings.Create('de-de');
  q:=TADOQuery.Create(f_analyz);
  qdsc := TDatasource.Create(f_analyz);
  q.Connection:=dmmain.ADOConnection_metr;
  if(self.DateTimePicker_od.DateTime > self.DateTimePicker_do.DateTime) then
  begin
    ShowMessage('Poèáteèní datum nemùže pøesahovat koncové datum.');
    exit;
  end;


  try
    case node.AbsoluteIndex of
      1 : begin
            cena_cel := 0;
            pocet_cel := 0;
            graf.Series[0].Clear;
            graf.Series[1].Clear;
            q.Close;

            podm := 'SELECT Typ_kod as Typ,COUNT(Evidencni_cislo)AS Poèet,SUM(CenaMer) as Cena FROM metr..evidence';
            //sestaveni vyberove podminky
            time_od := DatetimetoStr(DateTimePicker_od.DateTime,fsde);
            time_do := DatetimetoStr(DateTimePicker_do.DateTime,fsde);
            podm:=podm + ' WHERE (Do_uzivani>=CONVERT(datetime,N'+ quotedStr(time_od)
            +',104))and (Do_uzivani<=CONVERT(datetime,N'+quotedStr(time_do)+',104))';

            if DBLookupComboBox_vl_jmeno.Text<>'' then
            begin
              podm:=podm+' and Os_cislo_vl=N'+quotedStr(DBLookupComboBox_vl_jmeno.Field.Value);
            end;

            if DBLookupComboBox_vl_kodpracoviste.Text<>'' then
            begin
              podm:=podm+' and Pracoviste_kod_vl=N'+quotedStr(DBLookupComboBox_vl_kodpracoviste.Text);
            end;

            if DBLookupComboBox_umisteni_osoba.Text<>'' then
            begin
              podm:=podm+' and Os_cislo_vyp=N'+quotedStr(DBLookupComboBox_umisteni_osoba.Field.Value);
            end;

            if DBLookupComboBox_umistenipracoviste.Text<>'' then
            begin
              podm:=podm+' and Pracoviste_kod_vyp=N'+quotedStr(DBLookupComboBox_umistenipracoviste.Text);
            end;

            if DBLookupComboBox_zavod.Text<>'' then
            begin
              podm:=podm+' and Kod_zavodu=N'+quotedStr(DBLookupComboBox_zavod.Field.Value);
            end;


            podm := podm + 'GROUP BY Typ_kod';


            //vyber dat
            q.SQL.Text:=podm;
            q.Open;

            qdsc.DataSet := q;
            DBGrid_bottom.DataSource:=qdsc;

            //popis os
            graf.BottomAxis.Title.Text:='Mìøidla';
            graf.LeftAxis.Title.Text:='Poèet mìøidel';
            graf.RightAxis.Title.Text:='Cena mìøidel';
            //nastvaeni title
            graf.Title.Text.Text:='Cena a poèet dle typu';
            //vlozeni hodnot

            graf.Series[0].Title := 'Poèet mìøidel';
            graf.Series[1].Title := 'Cena mìøidel';


            while q.Eof=false do
            begin
              graf.Series[0].AddY(q.Fields.Fields[1].AsFloat,q.Fields.Fields[0].AsString);
              graf.Series[1].AddY(q.Fields.Fields[2].AsFloat,q.Fields.Fields[0].AsString);
              cena_cel := cena_cel + q.Fields.Fields[2].AsFloat;
              pocet_cel := pocet_cel + q.Fields.Fields[1].AsFloat;

              q.Next;
            end;

            self.text_pocet.Caption := 'Poèet mìøidel celkem:';
            self.text_cena.Caption := 'Cena mìøidel celkem:';
            self.text_pocet.Visible := True;
            self.text_cena.Visible:= True;

            self.Edit_pocet.Text := FloatToStr(pocet_cel);
            self.Edit_cena.Text := FloatToStr(cena_cel);

            self.Edit_pocet.Visible := True;
            self.Edit_cena.Visible := True;


          end;
      2 : begin

            cena_cel := 0;
            pocet_cel := 0;

            graf.Series[0].Clear;
            graf.Series[1].Clear;
            q.Close;
            podm := 'SELECT kategorie_kod as Kategorie,COUNT(Evidencni_cislo)AS Poèet,SUM(CenaMer) as Cena FROM metr..evidence';
             time_od := DatetimetoStr(DateTimePicker_od.DateTime,fsde);
            time_do := DatetimetoStr(DateTimePicker_do.DateTime,fsde);
            podm:=podm + ' WHERE (Do_uzivani>=CONVERT(datetime,N'+ quotedStr(time_od)
            +',104))and (Do_uzivani<=CONVERT(datetime,N'+quotedStr(time_do)+',104))';

            if DBLookupComboBox_vl_jmeno.Text<>'' then
            begin
              podm:=podm+' and Os_cislo_vl=N'+quotedStr(DBLookupComboBox_vl_jmeno.Field.Value);
            end;

            if DBLookupComboBox_vl_kodpracoviste.Text<>'' then
            begin
              podm:=podm+' and Pracoviste_kod_vl=N'+quotedStr(DBLookupComboBox_vl_kodpracoviste.Text);
            end;

            if DBLookupComboBox_umisteni_osoba.Text<>'' then
            begin
              podm:=podm+' and Os_cislo_vyp=N'+quotedStr(DBLookupComboBox_umisteni_osoba.Field.Value);
            end;

            if DBLookupComboBox_umistenipracoviste.Text<>'' then
            begin
              podm:=podm+' and Pracoviste_kod_vyp=N'+quotedStr(DBLookupComboBox_umistenipracoviste.Text);
            end;

            if DBLookupComboBox_zavod.Text<>'' then
            begin
              podm:=podm+' and Kod_zavodu=N'+quotedStr(DBLookupComboBox_zavod.Field.Value);
            end;


            podm := podm + 'GROUP BY Kategorie_kod';

            graf.BottomAxis.Title.Text:='Mìøidla';
            graf.LeftAxis.Title.Text:='Poèet mìøidel';
            graf.RightAxis.Title.Text:='Cena mìøidel';
            //nastvaeni title
            graf.Title.Text.Text:='Cena a poèet dle kategorie';

            graf.Series[0].Title := 'Poèet mìøidel';
            graf.Series[1].Title := 'Cena mìøidel';

            //vyber dat
            q.SQL.Text:=podm;
            q.Open;

            qdsc.DataSet := q;
            DBGrid_bottom.DataSource:=qdsc;

            while q.Eof=false do
            begin
              graf.Series[0].AddY(q.Fields.Fields[1].AsFloat,q.Fields.Fields[0].AsString);
              graf.Series[1].AddY(q.Fields.Fields[2].AsFloat,q.Fields.Fields[0].AsString);

              cena_cel := cena_cel + q.Fields.Fields[2].AsFloat;
              pocet_cel := pocet_cel + q.Fields.Fields[1].AsFloat;

              q.Next;
            end;


            self.text_pocet.Caption := 'Poèet mìøidel celkem:';
            self.text_cena.Caption := 'Cena mìøidel celkem:';
            self.text_pocet.Visible := True;
            self.text_cena.Visible:= True;

            self.Edit_pocet.Text := FloatToStr(pocet_cel);
            self.Edit_cena.Text := FloatToStr(cena_cel);

            self.Edit_pocet.Visible := True;
            self.Edit_cena.Visible := True;

          end;

       3: begin

            cena_cel := 0;
            pocet_cel := 0;


            graf.Series[0].Clear;
            graf.Series[1].Clear;
            q.Close;
            podm := 'SELECT Stav_meridla as Stav,COUNT(Evidencni_cislo)AS Poèet,SUM(CenaMer) as Cena FROM metr..evidence';
             time_od := DatetimetoStr(DateTimePicker_od.DateTime,fsde);
            time_do := DatetimetoStr(DateTimePicker_do.DateTime,fsde);
            podm:=podm + ' WHERE (Do_uzivani>=CONVERT(datetime,N'+ quotedStr(time_od)
            +',104))and (Do_uzivani<=CONVERT(datetime,N'+quotedStr(time_do)+',104))';

            if DBLookupComboBox_vl_jmeno.Text<>'' then
            begin
              podm:=podm+' and Os_cislo_vl=N'+quotedStr(DBLookupComboBox_vl_jmeno.Field.Value);
            end;

            if DBLookupComboBox_vl_kodpracoviste.Text<>'' then
            begin
              podm:=podm+' and Pracoviste_kod_vl=N'+quotedStr(DBLookupComboBox_vl_kodpracoviste.Text);
            end;

            if DBLookupComboBox_umisteni_osoba.Text<>'' then
            begin
              podm:=podm+' and Os_cislo_vyp=N'+quotedStr(DBLookupComboBox_umisteni_osoba.Field.Value);
            end;

            if DBLookupComboBox_umistenipracoviste.Text<>'' then
            begin
              podm:=podm+' and Pracoviste_kod_vyp=N'+quotedStr(DBLookupComboBox_umistenipracoviste.Text);
            end;

            if DBLookupComboBox_zavod.Text<>'' then
            begin
              podm:=podm+' and Kod_zavodu=N'+quotedStr(DBLookupComboBox_zavod.Field.Value);
            end;


            podm := podm + 'GROUP BY Stav_meridla '+'Order BY Poèet DESC';
             graf.BottomAxis.Title.Text:='Mìøidla';
            graf.LeftAxis.Title.Text:='Poèet mìøidel';
            graf.RightAxis.Title.Text:='Cena mìøidel';
            //nastvaeni title
            graf.Title.Text.Text:='Cena a poèet dle stavu';
            graf.Series[0].Title := 'Poèet mìøidel';
            graf.Series[1].Title := 'Cena mìøidel';

            //vyber dat
            q.SQL.Text:=podm;
            q.Open;

            qdsc.DataSet := q;
            DBGrid_bottom.DataSource:=qdsc;

            while q.Eof=false do
            begin
              graf.Series[0].AddY(q.Fields.Fields[1].AsFloat,q.Fields.Fields[0].AsString);
              graf.Series[1].AddY(q.Fields.Fields[2].AsFloat,q.Fields.Fields[0].AsString);

              cena_cel := cena_cel + q.Fields.Fields[2].AsFloat;
              pocet_cel := pocet_cel + q.Fields.Fields[1].AsFloat;

              q.Next;
            end;

             self.text_pocet.Caption := 'Poèet mìøidel celkem:';
            self.text_cena.Caption := 'Cena mìøidel celkem:';
            self.text_pocet.Visible := True;
            self.text_cena.Visible:= True;

            self.Edit_pocet.Text := FloatToStr(pocet_cel);
            self.Edit_cena.Text := FloatToStr(cena_cel);

            self.Edit_pocet.Visible := True;
            self.Edit_cena.Visible := True;


           end;

          5:begin

            cena_cel := 0;
            pocet_cel := 0;

             graf.Series[0].Clear;
            graf.Series[1].Clear;
            q.Close;
            podm := 'SELECT A.Typ_kod as Kod ,T.Nazev as Nazev,COUNT(H.Cis_protokolu)AS Poèet,SUM(H.NakladyNaKal) as Cena' +
            ' FROM metr..historie_kal H '+
            'LEFT OUTER JOIN metr..evidence A ON A.Evidencni_cislo = H.Evidencni_cislo '+
             'LEFT OUTER JOIN metr..typymeridel T ON T.Kod = A.Typ_kod';

            time_od := DatetimetoStr(DateTimePicker_od.DateTime,fsde);
            time_do := DatetimetoStr(DateTimePicker_do.DateTime,fsde);
            podm:=podm + ' WHERE (Do_uzivani>=CONVERT(datetime,N'+ quotedStr(time_od)
            +',104))and (Do_uzivani<=CONVERT(datetime,N'+quotedStr(time_do)+',104))';

              if DBLookupComboBox_vl_jmeno.Text<>'' then
            begin
              podm:=podm+' and Os_cislo_vl=N'+quotedStr(DBLookupComboBox_vl_jmeno.Field.Value);
            end;

            if DBLookupComboBox_vl_kodpracoviste.Text<>'' then
            begin
              podm:=podm+' and Pracoviste_kod_vl=N'+quotedStr(DBLookupComboBox_vl_kodpracoviste.Text);
            end;

            if DBLookupComboBox_umisteni_osoba.Text<>'' then
            begin
              podm:=podm+' and Os_cislo_vyp=N'+quotedStr(DBLookupComboBox_umisteni_osoba.Field.Value);
            end;

            if DBLookupComboBox_umistenipracoviste.Text<>'' then
            begin
              podm:=podm+' and Pracoviste_kod_vyp=N'+quotedStr(DBLookupComboBox_umistenipracoviste.Text);
            end;

            if DBLookupComboBox_zavod.Text<>'' then
            begin
              podm:=podm+' and Kod_zavodu=N'+quotedStr(DBLookupComboBox_zavod.Field.Value);
            end;

            podm := podm + 'GROUP BY A.Typ_kod ,T.Nazev'+' Order BY Poèet DESC';
            graf.BottomAxis.Title.Text:='Mìøidla';
            graf.LeftAxis.Title.Text:='Poèet kalibrací';
            graf.RightAxis.Title.Text:='Náklady na kalibraci';
            //nastvaeni title
            graf.Title.Text.Text:='Náklady na kalibrace dle typu';
            graf.Series[0].Title := 'Poèet kalibrací';
            graf.Series[1].Title := 'Náklady na kalibraci';

            q.SQL.Text:=podm;
            q.Open;

            qdsc.DataSet := q;
            DBGrid_bottom.DataSource:=qdsc;

            while q.Eof=false do
            begin
              graf.Series[0].AddY(q.Fields.Fields[2].AsFloat,q.Fields.Fields[0].AsString);
              graf.Series[1].AddY(q.Fields.Fields[3].AsFloat,q.Fields.Fields[0].AsString);

              cena_cel := cena_cel + q.Fields.Fields[3].AsFloat;
              pocet_cel := pocet_cel + q.Fields.Fields[2].AsFloat;

              q.Next;
            end;

            self.text_pocet.Caption := 'Poèet kalibrací celkem:';
            self.text_cena.Caption := 'Náklady na kalibrace celkem:';
            self.text_pocet.Visible := True;
            self.text_cena.Visible:= True;

            self.Edit_pocet.Text := FloatToStr(pocet_cel);
            self.Edit_cena.Text := FloatToStr(cena_cel);

            self.Edit_pocet.Visible := True;
            self.Edit_cena.Visible := True;





          end;

          6:begin

            cena_cel := 0;
            pocet_cel := 0;

            graf.Series[0].Clear;
            graf.Series[1].Clear;
            q.Close;
             podm := 'SELECT A.kategorie_kod as Kod ,T.Nazev as Nazev,COUNT(H.Cis_protokolu)AS Poèet,SUM(H.NakladyNaKal) as Cena' +
            ' FROM metr..historie_kal H '+
            'LEFT OUTER JOIN metr..evidence A ON A.Evidencni_cislo = H.Evidencni_cislo '+
             'LEFT OUTER JOIN metr..kategorie T ON T.Kod = A.kategorie_kod';

              time_od := DatetimetoStr(DateTimePicker_od.DateTime,fsde);
            time_do := DatetimetoStr(DateTimePicker_do.DateTime,fsde);
            podm:=podm + ' WHERE (Do_uzivani>=CONVERT(datetime,N'+ quotedStr(time_od)
            +',104))and (Do_uzivani<=CONVERT(datetime,N'+quotedStr(time_do)+',104))';

              if DBLookupComboBox_vl_jmeno.Text<>'' then
            begin
              podm:=podm+' and Os_cislo_vl=N'+quotedStr(DBLookupComboBox_vl_jmeno.Field.Value);
            end;

            if DBLookupComboBox_vl_kodpracoviste.Text<>'' then
            begin
              podm:=podm+' and Pracoviste_kod_vl=N'+quotedStr(DBLookupComboBox_vl_kodpracoviste.Text);
            end;

            if DBLookupComboBox_umisteni_osoba.Text<>'' then
            begin
              podm:=podm+' and Os_cislo_vyp=N'+quotedStr(DBLookupComboBox_umisteni_osoba.Field.Value);
            end;

            if DBLookupComboBox_umistenipracoviste.Text<>'' then
            begin
              podm:=podm+' and Pracoviste_kod_vyp=N'+quotedStr(DBLookupComboBox_umistenipracoviste.Text);
            end;

            if DBLookupComboBox_zavod.Text<>'' then
            begin
              podm:=podm+' and Kod_zavodu=N'+quotedStr(DBLookupComboBox_zavod.Field.Value);
            end;

            podm := podm + 'GROUP BY A.kategorie_kod ,T.Nazev'+' Order BY Poèet DESC';

             graf.BottomAxis.Title.Text:='Mìøidla';
            graf.LeftAxis.Title.Text:='Poèet kalibrací';
            graf.RightAxis.Title.Text:='Náklady na kalibraci';
            //nastvaeni title
            graf.Title.Text.Text:='Náklady na kalibrace dle kategorie';
            graf.Series[0].Title := 'Poèet kalibrací';
            graf.Series[1].Title := 'Náklady na kalibraci';

            q.SQL.Text:=podm;
            q.Open;

            qdsc.DataSet := q;
            DBGrid_bottom.DataSource:=qdsc;

            while q.Eof=false do
            begin
              graf.Series[0].AddY(q.Fields.Fields[2].AsFloat,q.Fields.Fields[0].AsString);
              graf.Series[1].AddY(q.Fields.Fields[3].AsFloat,q.Fields.Fields[0].AsString);

              cena_cel := cena_cel + q.Fields.Fields[3].AsFloat;
              pocet_cel := pocet_cel + q.Fields.Fields[2].AsFloat;
              q.Next;
            end;

            self.text_pocet.Caption := 'Poèet kalibrací celkem:';
            self.text_cena.Caption := 'Náklady na kalibrace celkem:';
            self.text_pocet.Visible := True;
            self.text_cena.Visible:= True;

            self.Edit_pocet.Text := FloatToStr(pocet_cel);
            self.Edit_cena.Text := FloatToStr(cena_cel);

            self.Edit_pocet.Visible := True;
            self.Edit_cena.Visible := True;


          end;

         8:begin

            cena_cel := 0;
            pocet_cel := 0;

            graf.Series[0].Clear;
            graf.Series[1].Clear;
            q.Close;

            podm := 'SELECT A.Evidencni_cislo as Kod,COUNT(H.Datum)AS Poèet,SUM(H.NakladyOpravy) as Cena' +
             ' FROM metr..historie H '+
             'LEFT OUTER JOIN metr..evidence A ON A.Evidencni_cislo = H.Evidencni_cislo';

            time_od := DatetimetoStr(DateTimePicker_od.DateTime,fsde);
            time_do := DatetimetoStr(DateTimePicker_do.DateTime,fsde);
            podm:=podm + ' WHERE (Do_uzivani>=CONVERT(datetime,N'+ quotedStr(time_od)
            +',104))and (Do_uzivani<=CONVERT(datetime,N'+quotedStr(time_do)+',104))';

              if DBLookupComboBox_vl_jmeno.Text<>'' then
            begin
              podm:=podm+' and Os_cislo_vl=N'+quotedStr(DBLookupComboBox_vl_jmeno.Field.Value);
            end;

            if DBLookupComboBox_vl_kodpracoviste.Text<>'' then
            begin
              podm:=podm+' and Pracoviste_kod_vl=N'+quotedStr(DBLookupComboBox_vl_kodpracoviste.Text);
            end;

            if DBLookupComboBox_umisteni_osoba.Text<>'' then
            begin
              podm:=podm+' and Os_cislo_vyp=N'+quotedStr(DBLookupComboBox_umisteni_osoba.Field.Value);
            end;

            if DBLookupComboBox_umistenipracoviste.Text<>'' then
            begin
              podm:=podm+' and Pracoviste_kod_vyp=N'+quotedStr(DBLookupComboBox_umistenipracoviste.Text);
            end;

            if DBLookupComboBox_zavod.Text<>'' then
            begin
              podm:=podm+' and Kod_zavodu=N'+quotedStr(DBLookupComboBox_zavod.Field.Value);
            end;

            podm := podm + 'GROUP BY A.Evidencni_cislo'+' Order BY Poèet DESC';

            graf.BottomAxis.Title.Text:='Mìøidla';
            graf.LeftAxis.Title.Text:='Poèet oprav';
            graf.RightAxis.Title.Text:='Náklady na opravy';
            //nastvaeni title
            graf.Title.Text.Text:='Náklady na servis dle mìøidel';
            graf.Series[0].Title := 'Poèet oprav';
            graf.Series[1].Title := 'Náklady na opravy';

            q.SQL.Text:=podm;
            q.Open;

            qdsc.DataSet := q;
            DBGrid_bottom.DataSource:=qdsc;

             while q.Eof=false do
            begin
              graf.Series[0].AddY(q.Fields.Fields[1].AsFloat,q.Fields.Fields[0].AsString);
              graf.Series[1].AddY(q.Fields.Fields[2].AsFloat,q.Fields.Fields[0].AsString);
                cena_cel := cena_cel + q.Fields.Fields[2].AsFloat;
              pocet_cel := pocet_cel + q.Fields.Fields[1].AsFloat;

              q.Next;
            end;

                self.text_pocet.Caption := 'Poèet oprav celkem:';
            self.text_cena.Caption := 'Náklady na opravy celkem:';
            self.text_pocet.Visible := True;
            self.text_cena.Visible:= True;

            self.Edit_pocet.Text := FloatToStr(pocet_cel);
            self.Edit_cena.Text := FloatToStr(cena_cel);

            self.Edit_pocet.Visible := True;
            self.Edit_cena.Visible := True;

         end;

        9:begin

             cena_cel := 0;
            pocet_cel := 0;

            graf.Series[0].Clear;
            graf.Series[1].Clear;
            q.Close;

            podm := 'SELECT  T.Kod as Kod,T.Nazev as Nazev,COUNT(H.Datum) AS Poèet,SUM(H.NakladyOpravy) as Cena' +
             ' FROM metr..historie H '+
             'LEFT OUTER JOIN metr..evidence A ON A.Evidencni_cislo = H.Evidencni_cislo'+
             ' LEFT OUTER JOIN metr..typymeridel T ON T.Kod = A.Typ_kod';

              time_od := DatetimetoStr(DateTimePicker_od.DateTime,fsde);
            time_do := DatetimetoStr(DateTimePicker_do.DateTime,fsde);
            podm:=podm + ' WHERE (Do_uzivani>=CONVERT(datetime,N'+ quotedStr(time_od)
            +',104))and (Do_uzivani<=CONVERT(datetime,N'+quotedStr(time_do)+',104))';

              if DBLookupComboBox_vl_jmeno.Text<>'' then
            begin
              podm:=podm+' and Os_cislo_vl=N'+quotedStr(DBLookupComboBox_vl_jmeno.Field.Value);
            end;

            if DBLookupComboBox_vl_kodpracoviste.Text<>'' then
            begin
              podm:=podm+' and Pracoviste_kod_vl=N'+quotedStr(DBLookupComboBox_vl_kodpracoviste.Text);
            end;

            if DBLookupComboBox_umisteni_osoba.Text<>'' then
            begin
              podm:=podm+' and Os_cislo_vyp=N'+quotedStr(DBLookupComboBox_umisteni_osoba.Field.Value);
            end;

            if DBLookupComboBox_umistenipracoviste.Text<>'' then
            begin
              podm:=podm+' and Pracoviste_kod_vyp=N'+quotedStr(DBLookupComboBox_umistenipracoviste.Text);
            end;

            if DBLookupComboBox_zavod.Text<>'' then
            begin
              podm:=podm+' and Kod_zavodu=N'+quotedStr(DBLookupComboBox_zavod.Field.Value);
            end;

            podm := podm + 'GROUP BY  T.Kod ,T.Nazev'+' Order BY Poèet DESC';

            graf.BottomAxis.Title.Text:='Mìøidla';
            graf.LeftAxis.Title.Text:='Poèet oprav';
            graf.RightAxis.Title.Text:='Náklady na opravy';
            //nastvaeni title
            graf.Title.Text.Text:='Náklady na servis dle typu';
            graf.Series[0].Title := 'Poèet oprav';
            graf.Series[1].Title := 'Náklady na opravy';

            q.SQL.Text:=podm;
            q.Open;

             qdsc.DataSet := q;
            DBGrid_bottom.DataSource:=qdsc;

             while q.Eof=false do
            begin
              graf.Series[0].AddY(q.Fields.Fields[2].AsFloat,q.Fields.Fields[0].AsString);
              graf.Series[1].AddY(q.Fields.Fields[3].AsFloat,q.Fields.Fields[0].AsString);

                  cena_cel := cena_cel + q.Fields.Fields[3].AsFloat;
              pocet_cel := pocet_cel + q.Fields.Fields[2].AsFloat;

              q.Next;
            end;

               self.text_pocet.Caption := 'Poèet oprav celkem:';
            self.text_cena.Caption := 'Náklady na opravy celkem:';
            self.text_pocet.Visible := True;
            self.text_cena.Visible:= True;

            self.Edit_pocet.Text := FloatToStr(pocet_cel);
            self.Edit_cena.Text := FloatToStr(cena_cel);

            self.Edit_pocet.Visible := True;
            self.Edit_cena.Visible := True;



        end;




    end;


  finally
    
  end;
end;

end.
