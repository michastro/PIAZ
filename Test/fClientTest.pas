unit fClientTest;

// demonstates how to use the chooser and use the selected interface.

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComObj, ExtCtrls, ShellAPI,Winapi.ActiveX;

type
  TForm1 = class(TForm)
    SetupDialog: TButton;
    Chooser: TButton;
    ChosenTelescopeLabel: TLabel;
    TCLabel: TLabel;
    MaxIncrementLabel: TLabel;
    Bevel1: TBevel;
    Button1: TButton;
    Label1: TLabel;
    Timer: TTimer;
    Label2: TLabel;
    LabelSlewing: TLabel;
    Label3: TLabel;
    LabelASC: TLabel;
    Label4: TLabel;
    LabelDEC: TLabel;
    Connect: TButton;
    Disconnect: TButton;
    Label5: TLabel;
    LabelConnect: TLabel;
    Label6: TLabel;
    LabelSiteElevation: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    LabelAzimuth: TLabel;
    LabelAltitude: TLabel;
    procedure SetupDialogClick(Sender: TObject);
    procedure ChooserClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure ConnectClick(Sender: TObject);
    procedure DisconnectClick(Sender: TObject);
  private
    { Private declarations }
  public
    TheTelescope: Variant;
    Chsr: Variant;
    TelescopeID: string;
  end;

var
  Form1: TForm1;
  TelescopeOK:boolean;
implementation

{$R *.DFM}

{--------------------------------------------------------------}
procedure TForm1.SetupDialogClick(Sender: TObject);
{--------------------------------------------------------------}
begin
    TheTelescope.SetupDialog;
end;

{--------------------------------------------------------------}
procedure TForm1.ChooserClick(Sender: TObject);
{--------------------------------------------------------------}
begin
   Chsr.DeviceType := 'Telescope';
   TelescopeID := Chsr.Choose;
   if TelescopeID = '' then exit;
   TheTelescope := CreateOLEObject(TelescopeID);
   TelescopeOK:=true;
//   TheTelescope.Connected:=true;

end;


{--------------------------------------------------------------}
procedure TForm1.FormCreate(Sender: TObject);
{--------------------------------------------------------------}
begin
   TelescopeOK:=False;
   Chsr := CreateOLEObject('DriverHelper.Chooser');
end;

procedure TForm1.Button1Click(Sender: TObject);
var count:integer;
   i:integer;
   vitesse:double;
   nbLu:longword;
   Rate:Variant;
   Coll:olevariant;
   Retour:Boolean;
begin
//  coll:= CreateOLEObject('Test.Telescope');
  Coll:=TheTelescope.AxisRates(0);
  Retour:=Coll.Reset;
  i:=Coll.Count;
  Rate:=Coll.getenumerator;
  Rate.Reset;
  repeat
  begin
    Retour:=Rate.MoveNext;
    if Retour then vitesse:=Rate.Current.Maximum;
  end;
  until not(Retour);
  coll:=coll._NewEnum;
  i:=coll.Count;
{  repeat
  begin
    Retour:=coll.Next(1,coll,nbLu);
    if Retour=S_OK then vitesse:=coll.Maximum;
  end;
  until Retour<>S_OK;}


end;

procedure TForm1.TimerTimer(Sender: TObject);
var Slewing:variant;
begin
   If TelescopeOK then
   begin
     if TheTelescope.Connected=true then
      begin
//         Slewing:=TheTelescope.Slewing;
//         if Slewing=true then LabelSlewing.Caption:='True'
//         LabelSlewing.Caption:='False';
         LabelASC.Caption:=FloatToStr(TheTelescope.RightAscension);
         LabelDEC.Caption:=FloatToStr(TheTelescope.Declination);
         LabelAzimuth.Caption:=FloatToStr(TheTelescope.Azimuth);
         LabelAltitude.Caption:=FloatToStr(TheTelescope.Altitude);
         LabelSiteElevation.Caption:=FloatToStr(TheTelescope.SiteElevation);
         LabelConnect.Caption:='true';
      end
      else
      begin
         LabelConnect.Caption:='false';
         LabelASC.Caption:='     ';
         LabelDEC.Caption:='     ';
         LabelSlewing.Caption:='      ';
      end;
   end;
end;

procedure TForm1.ConnectClick(Sender: TObject);
begin
   TheTelescope.Connected:=true;
   Timer.Enabled:=true;
end;

procedure TForm1.DisconnectClick(Sender: TObject);
begin
   TheTelescope.Connected:=false;
   Timer.Enabled:=false;
end;

end.



