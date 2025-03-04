unit dm_main;

interface

uses
  System.SysUtils, System.Classes, Vcl.AppEvnts, Vcl.Menus, System.ImageList,
  Vcl.ImgList, Vcl.Controls, System.Actions, Vcl.ActnList,Registry,StrUtils,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Data.DB, Data.Win.ADODB,Vcl.Dialogs,
  Vcl.DBCtrls,Vcl.Grids, Vcl.DBGrids,JvDBControls,Vcl.Forms,ShellApi,System.UITypes,
  Winapi.Windows;

type
  Tdmmain = class(TDataModule)
  published
    ActionManager1: TActionManager;
    ac_akce1: TAction;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    ImageList1: TImageList;
    Action15: TAction;
    ADOConnection_vsdata: TADOConnection;
    Action18: TAction;
    Action19: TAction;
    Remove: TAction;
    Brefresh: TAction;
    Action22: TAction;
    ADOConnection_metr: TADOConnection;
    ADOCommandMain: TADOCommand;
    UnDock: TAction;
    Dock: TAction;
    Setting: TAction;
    Android: TAction;
    procedure ac_akce1Execute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);

    procedure RemoveExecute(Sender: TObject);
    procedure Action22Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action15Execute(Sender: TObject);
    procedure Action18Execute(Sender: TObject);
    procedure Action19Execute(Sender: TObject);
    procedure Copy(Sender: TObject);
    procedure Refresh(Sender: TObject);
    procedure UnDockExecute(Sender: TObject);
    procedure DockExecute(Sender: TObject);
    procedure SettingExecute(Sender: TObject);
    procedure AndroidExecute(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);

  public
    procedure CheckConnection();
  end;

var
  dmmain: Tdmmain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses f_main,f_evidence,f_ciselniky,f_analyzy
,f_vydejmeridel,dm_Fevidence,dm_fvydejmeridel,dm_Fanalyzy,
dm_fciselniky,Fwin_main_setting;




procedure Tdmmain.CheckConnection();
begin
  if(ADOConnection_vsdata.Connected = True) then
     begin
       ADOConnection_vsdata.Connected := False;
     end;

  if(ADOConnection_metr.Connected = True) then
     begin
       ADOConnection_metr.Connected := False;
     end;

end;

procedure Tdmmain.Copy(Sender: TObject);
begin
  ShowMessage('aaaa');
end;

procedure Tdmmain.DataModuleCreate(Sender: TObject);
var
  reg : TRegistry;
  pripstr : String;
begin
  //nacteni prip. retezce z registru
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey('Software\OVc\metr\',true);
  reg.Access:=KEY_ALL_ACCESS;
  pripstr:=reg.ReadString('pripstr');
  reg.CloseKey;
  reg.Free;
  if pripstr<>'' then
  begin
    ADOConnection_vsdata.ConnectionString:=pripstr;
    ADOConnection_metr.ConnectionString:=pripstr;
  end
  else
  begin
    messagebox(application.Handle,'Nejdříve nastavte udaje pro přípojení k SQL serveru.','',MB_OK or MB_ICONINFORMATION or MB_TOPMOST);
  end;
end;

procedure Tdmmain.DockExecute(Sender: TObject);
begin

  if (Application.FindComponent('Form_evidence') <> nil) and (Form_evidence.Floating) then
   Form_evidence.ManualDock(form_main.pc_hlavni);

  if (Application.FindComponent('f_vydejmer') <> nil) and (f_vydejmer.Floating) then
   f_vydejmer.ManualDock(form_main.pc_hlavni);

  if (Application.FindComponent('f_analyz') <> nil) and (f_analyz.Floating) then
   f_analyz.ManualDock(form_main.pc_hlavni);

  if(Application.FindComponent('f_cisel') <> nil) and (f_cisel.Floating) then
   f_cisel.ManualDock(form_main.pc_hlavni);


end;




procedure Tdmmain.Action15Execute(Sender: TObject);
var
  tds : TDataset;
begin
if screen.ActiveControl is TDBGrid then
  if (screen.ActiveControl is TDBGrid) then
    tds:=(screen.ActiveControl as TDBGrid).DataSource.DataSet;
    if (tds.State=dsEdit) or (tds.State=dsInsert) then tds.Post;
       if (tds is TADOTable) then (tds as TADOTable).FindLast;
       if (tds is TADOQuery) then (tds as TADOQuery).FindLast;
end;

procedure Tdmmain.Action18Execute(Sender: TObject);
var
  tds : TDataset;
begin
if screen.ActiveControl is TDBGrid then
  if (screen.ActiveControl is TDBGrid) then
    tds:=(screen.ActiveControl as TDBGrid).DataSource.DataSet;
    if (tds.State=dsEdit) or (tds.State=dsInsert) then tds.Post;
       if (tds is TADOTable) then (tds as TADOTable).FindPrior;
       if (tds is TADOQuery) then (tds as TADOQuery).FindPrior;
end;

procedure Tdmmain.Action19Execute(Sender: TObject);
var
  tds : TDataset;
begin
if screen.ActiveControl is TDBGrid then
  if (screen.ActiveControl is TDBGrid) then
    tds:=(screen.ActiveControl as TDBGrid).DataSource.DataSet;
    if (tds.State=dsEdit) or (tds.State=dsInsert) then tds.Post;
       if (tds is TADOTable) then (tds as TADOTable).FindNext;
       if (tds is TADOQuery) then (tds as TADOQuery).FindNext;
end;

procedure Tdmmain.Action1Execute(Sender: TObject);
begin
  ShowMessage('aaaa');
end;

procedure Tdmmain.RemoveExecute(Sender: TObject);
begin

if screen.ActiveControl<>nil
 then
  if (screen.ActiveControl is TDBEdit)
      or (screen.ActiveControl is TDBGrid)
      or (screen.ActiveControl is TDBMemo)
      or (screen.ActiveControl is TJvDBComboEdit)
      or (screen.ActiveControl is TDBCheckBox)
    then
     if MessageDlg('Skutečně vymazat záznam?',
     mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes then
     begin
     if (screen.ActiveControl is TDBCheckBox) then
         if (screen.ActiveControl as TDBCheckBox).DataSource.AutoEdit=true then
            (screen.ActiveControl as TDBCheckBox).DataSource.DataSet.Delete;

     if (screen.ActiveControl is TJvDBComboEdit) then
         if (screen.ActiveControl as TJvDBComboEdit).DataSource.AutoEdit=true then
            (screen.ActiveControl as TJvDBComboEdit).DataSource.DataSet.Delete;

     if (screen.ActiveControl is TDBMemo) then
         if (screen.ActiveControl as TDBMemo).DataSource.AutoEdit=true then
            (screen.ActiveControl as TDBMemo).DataSource.DataSet.Delete;

     if (screen.ActiveControl is TDBEdit) then
         if (screen.ActiveControl as TDBEdit).DataSource.AutoEdit=true then
            (screen.ActiveControl as TDBEdit).DataSource.DataSet.Delete;

     if (screen.ActiveControl is TDBGrid) then
         if (screen.ActiveControl as TDBGrid).DataSource.AutoEdit=true then
            (screen.ActiveControl as TDBGrid).DataSource.DataSet.Delete;

     end


end;

procedure Tdmmain.SettingExecute(Sender: TObject);
begin

  with Twin_setting_main.Create(nil) do
  try
    ShowModal;
  finally
    Free;
  end;

end;

procedure Tdmmain.UnDockExecute(Sender: TObject);
begin


   if (Application.FindComponent('Form_evidence') <> nil) and (Form_evidence.Floating = False) then
   Form_evidence.ManualFloat(Rect(0,0,form_main.Width,form_main.Height));

  if (Application.FindComponent('f_vydejmer') <> nil) and (f_vydejmer.Floating = False) then
   f_vydejmer.ManualFloat(Rect(20,20,form_main.Width,form_main.Height));

  if (Application.FindComponent('f_analyz') <> nil) and (f_analyz.Floating = False) then
   f_analyz.ManualFloat(Rect(40,40,form_main.Width,form_main.Height));

  if(Application.FindComponent('f_cisel') <> nil) and (f_cisel.Floating = False) then
   f_cisel.ManualFloat(Rect(80,80,form_main.Width,form_main.Height));



 end;



procedure Tdmmain.Refresh(Sender: TObject);
var
  tds : TDataset;
begin
  if (screen.ActiveControl is TDBEdit)
      or (screen.ActiveControl is TDBGrid)
      or (screen.ActiveControl is TDBMemo)
      or (screen.ActiveControl is TJvDBComboEdit)
      or (screen.ActiveControl is TDBCheckBox)
      or (screen.ActiveControl is TDBRichEdit)
      then
     begin

       if (screen.ActiveControl is TDBRichEdit) then
          tds:=(screen.ActiveControl as TDBRichEdit).DataSource.DataSet;
       if (screen.ActiveControl is TDBCheckBox) then
          tds:=(screen.ActiveControl as TDBCheckBox).DataSource.DataSet;
       if (screen.ActiveControl is TJvDBComboEdit) then
          tds:=(screen.ActiveControl as TJvDBComboEdit).DataSource.DataSet;
       if (screen.ActiveControl is TDBMemo) then
          tds:=(screen.ActiveControl as TDBMemo).DataSource.DataSet;
       if (screen.ActiveControl is TDBEdit) then
          tds:=(screen.ActiveControl as TDBEdit).DataSource.DataSet;
       if (screen.ActiveControl is TDBGrid) then
          tds:=(screen.ActiveControl as TDBGrid).DataSource.DataSet;
       if (tds.State=dsEdit) or (tds.State=dsInsert) then tds.Post;
       if (tds is TADOTable) then (tds as TADOTable).Requery([]);
       if (tds is TADOQuery) then (tds as TADOQuery).Requery([]);
     end;

end;

procedure Tdmmain.Action22Execute(Sender: TObject);
begin
  ShowMessage('aaaa');
end;



procedure Tdmmain.Action3Execute(Sender: TObject);
var
  tds : TDataset;
begin
if screen.ActiveControl is TDBGrid then
  if (screen.ActiveControl is TDBGrid) then
    tds:=(screen.ActiveControl as TDBGrid).DataSource.DataSet;
    if (tds.State=dsEdit) or (tds.State=dsInsert) then tds.Post;
       if (tds is TADOTable) then (tds as TADOTable).FindFirst;
       if (tds is TADOQuery) then (tds as TADOQuery).FindFirst;


end;

procedure Tdmmain.ac_akce1Execute(Sender: TObject);
begin
  ShowMessage('aaaa');
end;

procedure Tdmmain.AndroidExecute(Sender: TObject);
var
  workadr : String;
begin
  //zjisteni workadr - adresar ISQ
  workadr:=ExtractFilePath(Application.ExeName);
  //spusteni WSS serveru
  if pos('Win32\Debug',workadr)<>0 then
  begin
    workadr:=LeftStr(workadr,Length(workadr)-Length('\BC\Win32\Debug')-1);
    ShellExecute(0, 'open',PWideChar(workadr+'\WebServicesServer\Win32\Debug\WebSerServer.exe'), '', '', SW_SHOWNORMAL);
  end
  else
    if pos('Win32\Release',workadr)<>0 then
    begin
      workadr:=LeftStr(workadr,Length(workadr)-Length('\BC\Win32\Release')-1);
      ShellExecute(0, 'open',PWideChar(workadr+'\WebServicesServer\Win32\Debug\WebSerServer.exe'), '', '', SW_SHOWNORMAL);
    end
    else
    begin
      //workadr:=LeftStr(workadr,Length(workadr)-Length('\metr')-1);
      ShellExecute(0, 'open',PWideChar(workadr+'\OVcWSS\WebSerServer.exe'), '', '', SW_SHOWNORMAL);
    end;
end;

end.
