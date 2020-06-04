unit Telescope_Unit;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, PIAZ_TLB, StdVcl;

type
  TTelescope = class(TAutoObject, ITelescope)
  protected
    procedure AbortSlew; safecall;
    function AxisRates(Axis: TelescopeAxes): IAxisRates; safecall;
    function CanMoveAxis(Axe: TelescopeAxes): WordBool; safecall;
    function Get_AlignmentMode: AlignmentModes; safecall;
    function Get_Altitude: Double; safecall;
    function Get_ApertureArea: Double; safecall;
    function Get_ApertureDiameter: Double; safecall;
    function Get_AtHome: WordBool; safecall;
    function Get_AtPark: WordBool; safecall;
    function Get_Azimuth: Double; safecall;
    function Get_CanFindHome: WordBool; safecall;
    function Get_CanPark: WordBool; safecall;
    function Get_CanPulseGuide: WordBool; safecall;
    function Get_CanSetDeclinationRate: WordBool; safecall;
    function Get_CanSetGuideRates: WordBool; safecall;
    function Get_CanSetPark: WordBool; safecall;
    function Get_CanSetPierSide: WordBool; safecall;
    function Get_CanSetRightAscensionRate: WordBool; safecall;
    function Get_CanSetTracking: WordBool; safecall;
    function Get_CanSlew: WordBool; safecall;
    function Get_CanSlewAltAz: WordBool; safecall;
    function Get_CanSlewAltAzAsync: WordBool; safecall;
    function Get_CanSlewAsync: WordBool; safecall;
    function Get_CanSync: WordBool; safecall;
    function Get_CanSyncAltAz: WordBool; safecall;
    function Get_CanUnpark: WordBool; safecall;
    function Get_Connected: WordBool; safecall;
    function Get_Declination: Double; safecall;
    function Get_DeclinationRate: Double; safecall;
    function Get_Description: WideString; safecall;
    function Get_DestinationSideOfPier(RightAscension, Declination: Double): PierSide;
          safecall;
    function Get_DoesRefraction: WordBool; safecall;
    function Get_DriverInfo: WideString; safecall;
    function Get_DriverVersion: WideString; safecall;
    function Get_EquatorialSystem: EquatorialCoordinateType; safecall;
    function Get_FocalLength: Double; safecall;
    function Get_GuideRateDeclination: Double; safecall;
    function Get_GuideRateRightAscension: Double; safecall;
    function Get_InterfaceVersion: Integer; safecall;
    function Get_IsPulseGuiding: WordBool; safecall;
    function Get_Name: WideString; safecall;
    function Get_PECCodeur: Integer; safecall;
    function Get_RawPositionAlpha_arcsecCodeurs: Double; safecall;
    function Get_RawPositionAlphaInit_arcsecCodeurs: Double; safecall;
    function Get_RawPositionDelta_arcsecCodeurs: Double; safecall;
    function Get_RawPositionDeltaInit_arcsecCodeurs: Double; safecall;
    function Get_RightAscension: Double; safecall;
    function Get_RightAscensionRate: Double; safecall;
    function Get_SideOfPier: Integer; safecall;
    function Get_SiderealTime: Double; safecall;
    function Get_SiteElevation: Double; safecall;
    function Get_SiteLatitude: Double; safecall;
    function Get_SiteLongitude: Double; safecall;
    function Get_Slewing: WordBool; safecall;
    function Get_SlewSettleTime: Integer; safecall;
    function Get_SupportedActions: OleVariant; safecall;
    function Get_TargetDeclination: Double; safecall;
    function Get_TargetRightAscension: Double; safecall;
    function Get_Tracking: WordBool; safecall;
    function Get_TrackingRate: Integer; safecall;
    function Get_TrackingRates: ITrackingRatesCol; safecall;
    function Get_UTCDate: TDateTime; safecall;
    procedure CommandBlind; safecall;
    procedure CommandBool; safecall;
    procedure CommandString; safecall;
    procedure FindHome; safecall;
    procedure MoveAxis(Axe: TelescopeAxes; Rate: Double); safecall;
    procedure Park; safecall;
    procedure PulseGuide(Direction: GuideDirections; Duration: Integer); safecall;
    procedure Set_Connected(Value: WordBool); safecall;
    procedure Set_DeclinationRate(Value: Double); safecall;
    procedure Set_DoesRefraction(Value: WordBool); safecall;
    procedure Set_GuideRateDeclination(Value: Double); safecall;
    procedure Set_GuideRateRightAscension(Value: Double); safecall;
    procedure Set_RightAscensionRate(Value: Double); safecall;
    procedure Set_SideOfPier(Value: Integer); safecall;
    procedure Set_SiteElevation(Value: Double); safecall;
    procedure Set_SiteLatitude(Value: Double); safecall;
    procedure Set_SiteLongitude(Value: Double); safecall;
    procedure Set_SlewSettleTime(Value: Integer); safecall;
    procedure Set_TargetDeclination(Value: Double); safecall;
    procedure Set_TargetRightAscension(Value: Double); safecall;
    procedure Set_Tracking(Value: WordBool); safecall;
    procedure Set_TrackingRate(Value: Integer); safecall;
    procedure Set_UTCDate(Value: TDateTime); safecall;
    procedure SetPark; safecall;
    procedure SetupDialog; safecall;
    procedure SlewToAltAz; safecall;
    procedure SlewToAltAzAsync; safecall;
    procedure SlewToCoordinates(RightAscension, Declination: Double); safecall;
    procedure SlewToCoordinatesAsync(RightAscension, Declination: Double); safecall;
    procedure SlewToTarget; safecall;
    procedure SlewToTargetAsync; safecall;
    procedure SyncToAltAz; safecall;
    procedure SyncToCoordinates(RightAscension, Declination: Double); safecall;
    procedure SyncToTarget; safecall;
    procedure Unpark; safecall;

  end;

implementation

uses ComServ,dialogs,Utils,Core,TrackingRatesCol_Unit,Variable_Unit,SysUtils;

procedure TTelescope.AbortSlew;
Const
  procName='AbortSlew';
begin
  LogEnterProc(procName);
//  if fParked then
//    raise EoleSysError.Create('Telescope is parked', $80040401, 0);
//  AbortSlew_Core;
  LogEndProc(procName);
end;

function TTelescope.AxisRates(Axis: TelescopeAxes): IAxisRates;
Const
  procName='AxisRates';
begin
  LogEnterProc(procName);
//  LogProc(procName,format('adresse axe %d=%d',[Axis,longword(g_Rates[Axis])]));
//  result := g_Rates[Axis];
  LogEndProc(procName);
end;

function TTelescope.CanMoveAxis(Axe: TelescopeAxes): WordBool;
Const
  procName='CanMoveAxis';
begin
  LogEnterProc(procName);
  if Axe = axisPrimary then result := true;
  if Axe = axisSecondary then result := true;
  if Axe = axisTertiary then result := false;
  LogEndProc(procName);
end;

function TTelescope.Get_AlignmentMode: AlignmentModes;
Const
  procName='Get_AlignmentMode';
begin
  LogEnterProc(procName);
  result := algAltAz;
  LogEndProc(procName);
end;

function TTelescope.Get_Altitude: Double;
Const
  procName='Get_Altitude';
begin
  LogEnterProc(procName);
  result:=Get_Altitude_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_ApertureArea: Double;
Const
  procName='Get_ApertureArea';
begin
  LogEnterProc(procName);
//  result:=fApertureArea;
  LogEndProc(procName);
end;

function TTelescope.Get_ApertureDiameter: Double;
Const
  procName='Get_ApertureDiameter';
begin
  LogEnterProc(procName);
//  result:=fApertureDiameter;
  LogEndProc(procName);
end;

function TTelescope.Get_AtHome: WordBool;
Const
  procName='Get_AtHome';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

function TTelescope.Get_AtPark: WordBool;
Const
  procName='Get_AtPark';
begin
  LogEnterProc(procName);
//  result := Get_AtPark_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_Azimuth: Double;
Const
  procName='Get_Azimuth';
begin
  LogEnterProc(procName);
  result:=Get_Azimuth_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_CanFindHome: WordBool;
Const
  procName='Get_CanFindHome';
begin
  LogEnterProc(procName);
  result := false;
  LogEndProc(procName);
end;

function TTelescope.Get_CanPark: WordBool;
Const
  procName='Get_CanPark';
begin
  LogEnterProc(procName);
//  result :=Get_CanPark_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_CanPulseGuide: WordBool;
Const
  procName='Get_CanPulseGuide';
begin
  LogEnterProc(procName);
//  result := true;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSetDeclinationRate: WordBool;
Const
  procName='Get_CanSetDeclinationRate';
begin
  LogEnterProc(procName);
//  result := true;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSetGuideRates: WordBool;
Const
  procName='Get_CanSetGuideRates';
begin
  LogEnterProc(procName);
//  result := false;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSetPark: WordBool;
Const
  procName='Get_CanSetPark';
begin
  LogEnterProc(procName);
//  result :=Get_CanSetPark_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSetPierSide: WordBool;
Const
  procName='Get_CanSetPierSide';
begin
  LogEnterProc(procName);
  result:=false;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSetRightAscensionRate: WordBool;
Const
  procName='Get_CanSetRightAscensionRate';
begin
  LogEnterProc(procName);
//  result := true;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSetTracking: WordBool;
Const
  procName='Get_CanSetTracking';
begin
  LogEnterProc(procName);
//  result := true;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSlew: WordBool;
Const
  procName='Get_CanSlew';
begin
  LogEnterProc(procName);
//  result := true;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSlewAltAz: WordBool;
Const
  procName='Get_CanSlewAltAz';
begin
  LogEnterProc(procName);
  result :=true;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSlewAltAzAsync: WordBool;
Const
  procName='Get_CanSlewAltAzAsync';
begin
  LogEnterProc(procName);
  result :=true;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSlewAsync: WordBool;
Const
  procName='Get_CanSlewAsync';
begin
  LogEnterProc(procName);
//  result := true;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSync: WordBool;
Const
  procName='Get_CanSync';
begin
  LogEnterProc(procName);
//  result := true;
  LogEndProc(procName);
end;

function TTelescope.Get_CanSyncAltAz: WordBool;
Const
  procName='Get_CanSyncAltAz';
begin
  LogEnterProc(procName);
  result :=true;
  LogEndProc(procName);
end;

function TTelescope.Get_CanUnpark: WordBool;
Const
  procName='Get_CanUnpark';
begin
  LogEnterProc(procName);
  result := true;
  LogEndProc(procName);
end;

function TTelescope.Get_Connected: WordBool;
Const
  procName='Get_Connected';
begin
  LogEnterProc(procName);
  result:=fConnected;
  LogEndProc(procName);
end;

function TTelescope.Get_Declination: Double;
Const
  procName='Get_Declination';
begin
  LogEnterProc(procName);
  result:=Get_Declination_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_DeclinationRate: Double;
Const
  procName='Get_DeclinationRate';
begin
  LogEnterProc(procName);
//  result := fDeclinationRate;
  LogEndProc(procName);
end;

function TTelescope.Get_Description: WideString;
Const
  procName='Get_Description';
begin
  LogEnterProc(procName);
  result :='PIAZ: altaz system based on MCMT32and a Raspberry PI';
  LogEndProc(procName);
end;

function TTelescope.Get_DestinationSideOfPier(RightAscension, Declination: Double): PierSide;
Const
  procName='Get_DestinationSideOfPier';
begin
  LogEnterProc(procName);
  result := PierUnknown;
  LogEndProc(procName);
end;

function TTelescope.Get_DoesRefraction: WordBool;
Const
  procName='Get_DoesRefraction';
begin
  LogEnterProc(procName);
//  result := false;
  LogEndProc(procName);
end;

function TTelescope.Get_DriverInfo: WideString;
Const
  procName='Get_DriverInfo';
begin
  LogEnterProc(procName);
  result := 'Driver ASCOM for PIAZ copyright M.Meunier';
  LogEndProc(procName);
end;

function TTelescope.Get_DriverVersion: WideString;
Const
  procName='Get_DriverVersion';
begin
  LogEnterProc(procName);
  result := '0.1';
  LogEndProc(procName);
end;

function TTelescope.Get_EquatorialSystem: EquatorialCoordinateType;
Const
  procName='Get_EquatorialSystem';
begin
  LogEnterProc(procName);
  result := equLocalTopocentric;
  LogEndProc(procName);
end;

function TTelescope.Get_FocalLength: Double;
Const
  procName='Get_FocalLength';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

function TTelescope.Get_GuideRateDeclination: Double;
Const
  procName='Get_GuideRateDeclination';
begin
  LogEnterProc(procName);
//  result:=SpeedIntMCMT.V_Corr_P_DEC/SpeedIntMCMT.Resol_DEC*360;
  LogEndProc(procName);
end;

function TTelescope.Get_GuideRateRightAscension: Double;
Const
  procName='Get_GuideRateRightAscension';
begin
  LogEnterProc(procName);
//  result:=(SpeedIntMCMT.V_Corr_P_AD-SpeedIntMCMT.V_Guidage_AD)/SpeedIntMCMT.Resol_AD*360;
  LogEndProc(procName);
end;

function TTelescope.Get_InterfaceVersion: Integer;
Const
  procName='Get_InterfaceVersion';
begin
  LogEnterProc(procName);
  result:=3;
  LogEndProc(procName);
end;

function TTelescope.Get_IsPulseGuiding: WordBool;
Const
  procName='Get_IsPulseGuiding';
begin
  LogEnterProc(procName);
//  result :=Get_IsPulseGuiding_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_Name: WideString;
Const
  procName='Get_Name';
begin
  LogEnterProc(procName);
  result := 'PIAZ';
  LogEndProc(procName);
end;

function TTelescope.Get_PECCodeur: Integer;
begin
//  result:=fCodeurPec;
end;


function TTelescope.Get_RawPositionAlpha_arcsecCodeurs: Double;
begin

end;

function TTelescope.Get_RawPositionAlphaInit_arcsecCodeurs: Double;
begin

end;

function TTelescope.Get_RawPositionDelta_arcsecCodeurs: Double;
begin

end;

function TTelescope.Get_RawPositionDeltaInit_arcsecCodeurs: Double;
begin

end;

function TTelescope.Get_RightAscension: Double;
Const
  procName='Get_RightAscension';
begin
  LogEnterProc(procName);
  result:=Get_RightAscension_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_RightAscensionRate: Double;
Const
  procName='Get_RightAscensionRate';
begin
  LogEnterProc(procName);
//  result := fRightAscensionRate;
  LogEndProc(procName+' '+FloatToStr(result));
end;

function TTelescope.Get_SideOfPier: Integer;
Const
  procName='Get_SideOfPier';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

function TTelescope.Get_SiderealTime: Double;
Const
  procName='Get_SiderealTime';
begin
  LogEnterProc(procName);
//  result := Get_SiderealTime_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_SiteElevation: Double;
Const
  procName='Get_SiteElevation';
begin
  LogEnterProc(procName);
  result:=Get_SiteElevation_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_SiteLatitude: Double;
Const
  procName='Get_SiteLatitude';
begin
  LogEnterProc(procName);
//  result:=RadDeg(Lieu.Lat);
  LogEndProc(procName);
end;

function TTelescope.Get_SiteLongitude: Double;
Const
  procName='Get_SiteLongitude';
begin
  LogEnterProc(procName);
//  result:=-RadDeg(Lieu.Long);
  LogEndProc(procName);
end;

function TTelescope.Get_Slewing: WordBool;
Const
  procName='Get_Slewing';
begin
  LogEnterProc(procName);
//  result:=Get_Slewing_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_SlewSettleTime: Integer;
Const
  procName='Get_SlewSettleTime';
begin
  LogEnterProc(procName);
//  result:=0;
  LogEndProc(procName);
end;

function TTelescope.Get_TargetDeclination: Double;
Const
  procName='Get_TargetDeclination';
begin
  LogEnterProc(procName);
//  if TargetDECOK then
//    result:=Get_TargetDeclination_Core
//  else
//    raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;

function TTelescope.Get_TargetRightAscension: Double;
Const
  procName='Get_TargetRightAscension';
begin
  LogEnterProc(procName);
//  if TargetRAOK then
//    result:=Get_TargetRightAscension_Core
//  else
//    raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;

function TTelescope.Get_Tracking: WordBool;
Const
  procName='Get_Tracking';
begin
  LogEnterProc(procName);
//  result :=Get_Tracking_Core;
  LogEndProc(procName);
end;

function TTelescope.Get_TrackingRate: Integer;
Const
  procName='Get_TrackingRate';
begin
  LogEnterProc(procName);
//  result:=fTrackingRate;
  LogEndProc(procName);
end;

function TTelescope.Get_TrackingRates: ITrackingRatesCol;
Const
  procName='Get_TrackingRates';
var
  TrackingRates: TTrackingRatesCol;
begin
  LogEnterProc(procName);
//  TrackingRates := TTrackingRatesCol.Create;
  result := TrackingRates;
  LogEndProc(procName);
end;

function TTelescope.Get_UTCDate: TDateTime;
Const
  procName='Get_UTCDate';
begin
  LogEnterProc(procName);
//  result := now - OffsetFromUTC;
  LogEndProc(procName);
end;

function TTelescope.Get_SupportedActions: OleVariant;
begin
//  Result:=g_ActionsList;
end;

procedure TTelescope.CommandBlind;
Const
  procName='CommandBlind';
begin
  LogEnterProc(procName);
  raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;

procedure TTelescope.CommandBool;
Const
  procName='CommandBool';
begin
  LogEnterProc(procName);
  raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;

procedure TTelescope.CommandString;
Const
  procName='CommandString';
begin
  LogEnterProc(procName);
  raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;


procedure TTelescope.FindHome;
Const
  procName='FindHome';
begin
  LogEnterProc(procName);
  raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;

procedure TTelescope.MoveAxis(Axe: TelescopeAxes; Rate: Double);
Const
  procName='MoveAxis';
begin
  LogEnterProc(procName);
  LogProc(procName,format('Axe=%d Rate=%6.4f',[Axe,Rate]));
  LogEndProc(procName);
end;

procedure TTelescope.Park;
Const
  procName='Park';
begin
  LogEnterProc(procName);
//  Park_Core;
  LogEndProc(procName);
end;

procedure TTelescope.PulseGuide(Direction: GuideDirections; Duration: Integer);
Const
  procName='PulseGuide';
begin
  LogEnterProc(procName);
//  if fParked then
//    raise EoleSysError.Create('Telescope is parked', $80040401, 0)
//  else
//  begin
//    case Direction of
//      guideNorth: PulseGuideAscom(0, 0, 0, Duration);
//      guideSouth: PulseGuideAscom(0, 1, 0, Duration);
//      guideEast: PulseGuideAscom(0, 0, Duration, 0);
//      guideWest: PulseGuideAscom(1, 0, Duration, 0);
//    end;
//  end;
  LogEndProc(procName);
end;

procedure TTelescope.Set_Connected(Value: WordBool);
Const
  procName='Set_Connected';
begin
  LogEnterProc(procName);
  Set_Connected_Core(Value);
  LogEndProc(procName);
end;

procedure TTelescope.Set_DeclinationRate(Value: Double);
Const
  procName='Set_DeclinationRate';
begin
  LogEnterProc(procName+FloatToStr(Value));
  LogEndProc(procName);
end;

procedure TTelescope.Set_DoesRefraction(Value: WordBool);
Const
  procName='Set_DoesRefraction';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.Set_GuideRateDeclination(Value: Double);
Const
  procName='Set_GuideRateDeclination';
begin
  LogEnterProc(procName);
  raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;

procedure TTelescope.Set_GuideRateRightAscension(Value: Double);
Const
  procName='Set_GuideRateRightAscension';
begin
  LogEnterProc(procName);
  raise EoleSysError.Create('not implemented', $80040400, 0);
  LogEndProc(procName);
end;

procedure TTelescope.Set_RightAscensionRate(Value: Double);
Const
  procName='Set_RightAscensionRate';
begin
  LogEnterProc(procName+FloatToStr(Value));
  LogEndProc(procName);
end;

procedure TTelescope.Set_SideOfPier(Value: Integer);
Const
  procName='Set_SideOfPier';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.Set_SiteElevation(Value: Double);
Const
  procName='Set_SiteElevation';
begin
  LogEnterProc(procName+FloatToStr(Value));
  if ((Value<-300) or (Value>10000)) then raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;

procedure TTelescope.Set_SiteLatitude(Value: Double);
Const
  procName='Set_SiteLatitude';
begin
  LogEnterProc(procName+FloatToStr(Value));
  if ((Value<-90) or (Value>90)) then raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;

procedure TTelescope.Set_SiteLongitude(Value: Double);
Const
  procName='Set_SiteLongitude';
begin
  LogEnterProc(procName+FloatToStr(Value));
  if ((Value<-180) or (Value>180)) then raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;

procedure TTelescope.Set_SlewSettleTime(Value: Integer);
Const
  procName='Set_SlewSettleTime';
begin
  LogEnterProc(procName);
  if Value<0 then raise EoleSysError.Create('not implemented', $80040401, 0);
  LogEndProc(procName);
end;

procedure TTelescope.Set_TargetDeclination(Value: Double);
Const
  procName='Set_TargetDeclination';
begin
  LogEnterProc(procName);
  Set_TargetDeclination_Core(Value);
  LogEndProc(procName+' '+FloatToStr(Value));
end;

procedure TTelescope.Set_TargetRightAscension(Value: Double);
Const
  procName='Set_TargetRightAscension';
begin
  LogEnterProc(procName);
  Set_TargetRightAscension_Core(Value);
  LogEndProc(procName+' '+FloatToStr(Value));
end;

procedure TTelescope.Set_Tracking(Value: WordBool);
Const
  procName='Set_Tracking';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.Set_TrackingRate(Value: Integer);
Const
  procName='Set_TrackingRate';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.Set_UTCDate(Value: TDateTime);
Const
  procName='Set_UTCDate';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.SetPark;
Const
  procName='SetPark';
begin
  LogEnterProc(procName);
//  SetPark_Core;
  LogEndProc(procName);
end;

procedure TTelescope.SetupDialog;
Const
  procName='SetupDialog';
begin
  LogEnterProc(procName);
  SetupDialog_Core;
  LogEndProc(procName);
end;

procedure TTelescope.SlewToAltAz;
Const
  procName='SlewToAltAz';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.SlewToAltAzAsync;
Const
  procName='SlewToAltAzAsync';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.SlewToCoordinates(RightAscension, Declination: Double);
Const
  procName='SlewToCoordinates';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.SlewToCoordinatesAsync(RightAscension, Declination: Double);

Const
  procName='SlewToCoordinatesAsync';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.SlewToTarget;
Const
  procName='SlewToTarget';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.SlewToTargetAsync;
Const
  procName='SlewToTargetAsync';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.SyncToAltAz;
Const
  procName='SyncToAltAz';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.SyncToCoordinates(RightAscension, Declination: Double);
Const
  procName='SyncToCoordinates';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.SyncToTarget;
Const
  procName='SyncToTarget';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

procedure TTelescope.Unpark;
Const
  procName='Unpark';
begin
  LogEnterProc(procName);
  LogEndProc(procName);
end;

initialization
  TAutoObjectFactory.Create(ComServer, TTelescope, Class_Telescope,
    ciMultiInstance, tmApartment);
end.

