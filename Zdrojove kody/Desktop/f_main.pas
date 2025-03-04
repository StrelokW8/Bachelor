unit f_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ToolWin, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Menus,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.WinXCalendars,
  Vcl.AppEvnts, IDETheme.ActnCtrls, Vcl.StdStyleActnCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  Tform_main = class(TForm)
  published
    ActionToolBar1: TActionToolBar;
    ToolBar1: TToolBar;
    b_evd: TButton;
    b_vydejmer: TButton;
    b_analyz: TButton;
    b_cisel: TButton;
    pc_hlavni: TPageControl;
    procedure b_evdClick(Sender: TObject);
    procedure b_kalibrClick(Sender: TObject);
    procedure b_vydejmerClick(Sender: TObject);
    procedure b_analyzClick(Sender: TObject);
    procedure b_ciselClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pc_hlavniGetSiteInfo(Sender: TObject; DockClient: TControl;
      var InfluenceRect: TRect; MousePos: TPoint; var CanDock: Boolean);

    procedure FormDestroy(Sender: TObject);
    procedure dm_evidenceAction14Execute(Sender: TObject);

  public
    procedure DockShowFront(my_Form : String);
  end;

var
  form_main: Tform_main;

implementation

uses dm_main,f_evidence,f_ciselniky,f_analyzy
,f_vydejmeridel,dm_Fevidence,dm_fvydejmeridel,dm_Fanalyzy,
dm_fciselniky;


{$R *.dfm}


// Zvolený formuláø do popøedí
 procedure Tform_main.DockShowFront(my_Form : String);
 var
 i : Integer;
 begin
     for I := 0 to pc_hlavni.DockClientCount-1 do
          begin
            if pc_hlavni.DockClients[i].Name= my_Form then
            begin
              pc_hlavni.ActivePageIndex:=i;
            end;
          end;


 end;


// Èíselníky
procedure Tform_main.b_ciselClick(Sender: TObject);
begin
  if (Application.FindComponent('f_cisel')) = nil then
      begin
          Application.CreateForm(Tdm_ciselniky, dm_ciselniky);
          Application.CreateForm(Tf_cisel,f_cisel);
          dm_ciselniky.SetActiveDataSource();
          //otevreni formulare a zadokovani
          f_cisel.ManualDock(pc_hlavni);

          DockShowFront('f_cisel');

          f_cisel.Show;

     
      end
    else
      begin
        f_cisel.BringToFront;

      if f_cisel.Floating=true then
        f_cisel.BringToFront
      else
        DockShowFront('f_cisel');

       end;
end;

// Evidence mìøidel
procedure Tform_main.b_evdClick(Sender: TObject);
begin
    if (Application.FindComponent('Form_evidence')) = nil then
    begin
          Application.CreateForm(Tdm_evidence, dm_evidence);


          //otevreni datasetu

            Application.CreateForm(TForm_evidence,Form_evidence);
          dm_evidence.SetActiveDataSource();


          //otevreni formulare
          Form_evidence.ManualDock(pc_hlavni);

          DockShowFront('Form_evidence');

          Form_evidence.Show;


    end
    else
    begin
        Form_evidence.BringToFront;
      if Form_evidence.Floating=true then
        Form_evidence.BringToFront
      else
        DockShowFront('Form_evidence');


    end;


end;




// Kalibrace
procedure Tform_main.b_kalibrClick(Sender: TObject);
begin


end;

// Výdejna mìøidel
procedure Tform_main.b_vydejmerClick(Sender: TObject);
begin

  if (Application.FindComponent('f_vydejmer')) = nil then
     begin
      Application.CreateForm(Tdm_vydejmeridel, dm_vydejmeridel);
      Application.CreateForm(Tf_vydejmer,f_vydejmer);

      dm_vydejmeridel.SetActiveDataSource();
       f_vydejmer.ManualDock(pc_hlavni);
       DockShowFront('f_vydejmer');
       f_vydejmer.Show;


    end
  else
    begin
      f_vydejmer.BringToFront;
      if f_vydejmer.Floating=true then
        f_vydejmer.BringToFront
      else
        DockShowFront('f_vydejmer');
    end;
end;


procedure Tform_main.dm_evidenceAction14Execute(Sender: TObject);
begin

end;

// Analýzy
procedure Tform_main.b_analyzClick(Sender: TObject);
begin
  if (Application.FindComponent('f_analyz')) = nil then
     begin
      Application.CreateForm(Tdm_analyzy, dm_analyzy);
      Application.CreateForm(Tf_analyz,f_analyz);

      dm_analyzy.SetActiveDataSource();
      f_analyz.ManualDock(pc_hlavni);
       DockShowFront('f_analyz');
       f_analyz.Show;



    end
  else
    begin
      f_analyz.BringToFront;
        if f_analyz.Floating=true then
        f_analyz.BringToFront
      else
        DockShowFront('f_analyz');


    end;

end;

 // Zpùsobilost mìøidel
procedure Tform_main.FormCreate(Sender: TObject);
var
  sirka : Integer;
  vyska : Integer;
begin
  //nastaveni velikosti hlavniho form
  sirka:=screen.MonitorFromWindow(handle).Width;
  vyska:=screen.MonitorFromWindow(handle).Height;
  left:=Round(0.1*sirka);
  top:=Round(0.1*vyska);
  Width:=Round(0.8*sirka);
  Height:=Round(0.8*vyska);
  //odpojeni od sql serveru
  dm_main.dmmain.CheckConnection;
end;

procedure Tform_main.FormDestroy(Sender: TObject);
begin
dmmain.ADOConnection_vsdata.Destroy;
dmmain.ADOConnection_metr.Destroy;
end;

procedure Tform_main.pc_hlavniGetSiteInfo(Sender: TObject; DockClient: TControl;
  var InfluenceRect: TRect; MousePos: TPoint; var CanDock: Boolean);
begin
  if NOT ((DockClient is TForm_evidence)
    or (DockClient is Tf_cisel)
    or (DockClient is Tf_analyz)
    or (DockClient is Tf_vydejmer)
         )
  then
    CanDock:=false
  else
    CanDock:=true;
end;

end.
