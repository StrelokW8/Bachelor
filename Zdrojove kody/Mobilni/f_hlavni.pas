unit f_hlavni;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,IOVservis1,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.Objects, FMX.Layouts;

type
  Tfhlavni = class(TForm)
    Button1: TButton;
    Edit_evcis: TEdit;
    Label1: TLabel;
    Edit_nzv: TEdit;
    StyleBook1: TStyleBook;
    StatusBar1: TStatusBar;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit_stav: TEdit;
    Edit_vlastnik: TEdit;
    Edit_pracoviste: TEdit;
    Edit_vyrnum: TEdit;
    Edit_datum: TEdit;
    Button2: TButton;
    Rectangle1: TRectangle;
    Button3: TButton;
    ScrollBox1: TScrollBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    adrconn : String;

    { Public declarations }
  end;

var
  fhlavni: Tfhlavni;

implementation

uses f_setting;

{$R *.fmx}

procedure Tfhlavni.Button1Click(Sender: TObject);
var
  adrsdaty,soub,ipwss,portwss,nzv,evcis,stav,vlastnik,prac,vyrnum,datekal : string;
  Service: IOVservis;
  cislo : Double;
begin

  Service := IOVservis1.GetIOVservis(false,adrconn,nil); //pripojeni na WS server
  //volani sluzby/procedury/funkce
  evcis:=Edit_evcis.Text;
  if evcis = '' then
  begin
     ShowMessage('Zadejte evidenèní èíslo.');
     exit;
  end;


  try
  begin


    nzv:=service.InfoMer(evcis);
  stav := service.StavMer(evcis);
  vlastnik := service.VlastnikMer(evcis);
  prac := service.PracMer(evcis);
  vyrnum := service.VyrNumMer(evcis);
  datekal := service.DatKalMer(evcis);


  Edit_nzv.Text:=nzv;
  self.Edit_stav.Text := stav;
  self.Edit_vlastnik.Text := vlastnik;
  self.Edit_pracoviste.Text := prac;
  self.Edit_vyrnum.Text := vyrnum;
  self.Edit_datum.Text := datekal;
   end;
  except
  begin
     ShowMessage('Zkontrolujte pøipojení');
  exit;
  end;


  end;




end;

procedure Tfhlavni.Button2Click(Sender: TObject);
begin
   Form_setting.Show;

end;

procedure Tfhlavni.Button3Click(Sender: TObject);
begin
Close;
end;

end.
