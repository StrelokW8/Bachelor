unit f_ciselniky;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Buttons;

type
  Tf_cisel = class(TForm)
  published
    Panel25: TPanel;
    PageControl4: TPageControl;
    TabSheet18: TTabSheet;
    DBGrid13: TDBGrid;
    DBGrid14: TDBGrid;
    TabSheet19: TTabSheet;
    DBGrid15: TDBGrid;
    TabSheet20: TTabSheet;
    DBGrid16: TDBGrid;
    StaticText92: TStaticText;
    TabSheet21: TTabSheet;
    ActionToolBar12: TActionToolBar;
    DBGrid17: TDBGrid;
    TabSheet22: TTabSheet;
    DBGrid18: TDBGrid;
    TabSheet23: TTabSheet;
    dbg_osoby: TDBGrid;
    TabSheet24: TTabSheet;
    DBGrid20: TDBGrid;
    TabSheet28: TTabSheet;
    DBGrid23: TDBGrid;
    TabSheet31: TTabSheet;
    DBGrid26: TDBGrid;
    TabSheet32: TTabSheet;
    DBGrid27: TDBGrid;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  end;

var
  f_cisel: Tf_cisel;

implementation


uses dm_fciselniky;
{$R *.dfm}

procedure Tf_cisel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:=CAFree;
end;

procedure Tf_cisel.FormDestroy(Sender: TObject);
begin
   dm_fciselniky.dm_ciselniky.Free;
end;

procedure Tf_cisel.FormShow(Sender: TObject);
begin
 if f_cisel.Floating = True then
 begin
   self.SpeedButton1.Visible := False;
 end
 else
 begin
    self.SpeedButton1.Visible := True;
 end;
end;



procedure Tf_cisel.SpeedButton1Click(Sender: TObject);
begin
close;
end;

end.
