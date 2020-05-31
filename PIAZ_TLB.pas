unit PIAZ_TLB;

// ************************************************************************ //
// AVERTISSEMENT
// -------
// Les types déclarés dans ce fichier ont été générés à partir de données lues
// depuis la bibliothèque de types. Si cette dernière (via une autre bibliothèque de types
// s'y référant) est explicitement ou indirectement ré-importée, ou la commande "Actualiser"
// de l'éditeur de bibliothèque de types est activée lors de la modification de la bibliothèque
// de types, le contenu de ce fichier sera régénéré et toutes les modifications
// manuellement apportées seront perdues.
// ************************************************************************ //

// $Rev: 52393 $
// Fichier généré le 25/05/2020 20:01:13 depuis la bibliothèque de types ci-dessous.

// ************************************************************************  //
// Biblio. types : D:\Astro\ASCOM\PIAZ\PIAZ (1)
// LIBID : {416DF296-1136-4BA1-83F6-F7A38485A871}
// LCID : 0
// Fichier d'aide :
// Chaîne d'aide :
// DepndLst :
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.4 mscorlib, (C:\Windows\Microsoft.NET\Framework\v4.0.30319\mscorlib.tlb)
//   (3) v2.0 mscorlib, (C:\Windows\Microsoft.NET\Framework\v2.0.50727\mscorlib.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // L'unité doit être compilée sans pointeur à type contrôlé.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, mscorlib_TLB, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;


// *********************************************************************//
// GUIDS déclarés dans la bibliothèque de types. Préfixes utilisés:
//   Bibliothèques de types : LIBID_xxxx
//   CoClasses              : CLASS_xxxx
//   Interfaces DISP        : DIID_xxxx
//   Interfaces Non-DISP    : IID_xxxx
// *********************************************************************//
const
  // Versions mineure et majeure de la bibliothèque de types
  PIAZMajorVersion = 1;
  PIAZMinorVersion = 0;

  LIBID_PIAZ: TGUID = '{416DF296-1136-4BA1-83F6-F7A38485A871}';

  IID_ITelescope: TGUID = '{2AAA9DCD-C998-47D1-A93E-0D0FD2CF1D09}';
  CLASS_Telescope: TGUID = '{86D4CB2D-93E1-417D-BA54-95BA09EB5247}';
  IID_IRate: TGUID = '{D8AB1110-A9EB-4535-8F42-13C37887520A}';
  CLASS_Rate: TGUID = '{CB444C43-F181-4FF7-B8DF-F0D3BD96C184}';
  IID_IAxisRates: TGUID = '{8B305188-7117-4BAD-948C-51E4E8F71817}';
  CLASS_AxisRates: TGUID = '{DC66B316-604E-4D19-A154-75DD59A69E19}';
  IID_ITrackingRatesCol: TGUID = '{547B9D66-234E-432F-91DF-74284E3CB5CB}';
  CLASS_TrackingRatesCol: TGUID = '{7ACDAA63-CE65-4AFE-AE9B-ADA5A7E17259}';
  CLASS_RateEnum: TGUID = '{2F41C024-4CB4-4A95-BEEE-73CC83D3094C}';

// *********************************************************************//
// Déclaration d'énumérations définies dans la bibliothèque de types
// *********************************************************************//
// Constantes pour enum TelescopeAxes
type
  TelescopeAxes = TOleEnum;
const
  axisPrimary = $00000000;
  axisSecondary = $00000001;
  axisTertiary = $00000002;

// Constantes pour enum GuideDirections
type
  GuideDirections = TOleEnum;
const
  guideNorth = $00000000;
  guideSouth = $00000001;
  guideEast = $00000002;
  guideWest = $00000003;

// Constantes pour enum AlignmentModes
type
  AlignmentModes = TOleEnum;
const
  algAltAz = $00000000;
  algPolar = $00000001;
  algGermanPolar = $00000002;

// Constantes pour enum EquatorialCoordinateType
type
  EquatorialCoordinateType = TOleEnum;
const
  equOther = $00000000;
  equLocalTopocentric = $00000001;
  equJ2000 = $00000002;
  equJ2050 = $00000003;
  equB1950 = $00000004;

// Constantes pour enum PierSide
type
  PierSide = TOleEnum;
const
  pierEast = $00000000;
  pierWest = $00000001;
  pierUnknown = $FFFFFFFF;

// Constantes pour enum DriveRates
type
  DriveRates = TOleEnum;
const
  driveSidereal = $00000000;
  driveLunar = $00000001;
  driveSolar = $00000002;
  driveKing = $00000003;

type

// *********************************************************************//
// Déclaration Forward des types définis dans la bibliothèque de types
// *********************************************************************//
  ITelescope = interface;
  ITelescopeDisp = dispinterface;
  IRate = interface;
  IRateDisp = dispinterface;
  IAxisRates = interface;
  IAxisRatesDisp = dispinterface;
  ITrackingRatesCol = interface;
  ITrackingRatesColDisp = dispinterface;

// *********************************************************************//
// Déclaration de CoClasses définies dans la bibliothèque de types
// (REMARQUE: On affecte chaque CoClasse à son Interface par défaut)
// *********************************************************************//
  Telescope = ITelescope;
  Rate = IRate;
  AxisRates = IAxisRates;
  TrackingRatesCol = ITrackingRatesCol;
  RateEnum = IEnumerator;


// *********************************************************************//
// Interface :   ITelescope
// Indicateurs : (4416) Dual OleAutomation Dispatchable
// GUID :        {2AAA9DCD-C998-47D1-A93E-0D0FD2CF1D09}
// *********************************************************************//
  ITelescope = interface(IDispatch)
    ['{2AAA9DCD-C998-47D1-A93E-0D0FD2CF1D09}']
    procedure AbortSlew; safecall;
    function AxisRates(Axis: TelescopeAxes): IAxisRates; safecall;
    function CanMoveAxis(Axe: TelescopeAxes): WordBool; safecall;
    procedure CommandBlind; safecall;
    procedure CommandBool; safecall;
    procedure CommandString; safecall;
    procedure FindHome; safecall;
    procedure MoveAxis(Axe: TelescopeAxes; Rate: Double); safecall;
    procedure Park; safecall;
    procedure PulseGuide(Direction: GuideDirections; Duration: Integer); safecall;
    procedure SetPark; safecall;
    procedure SetupDialog; safecall;
    procedure SlewToAltAz; safecall;
    procedure SlewToAltAzAsync; safecall;
    procedure SlewToCoordinates(RightAscension: Double; Declination: Double); safecall;
    procedure SlewToCoordinatesAsync(RightAscension: Double; Declination: Double); safecall;
    procedure SlewToTarget; safecall;
    procedure SlewToTargetAsync; safecall;
    procedure SyncToAltAz; safecall;
    procedure SyncToCoordinates(RightAscension: Double; Declination: Double); safecall;
    procedure SyncToTarget; safecall;
    procedure Unpark; safecall;
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
    function Get_Declination: Double; safecall;
    function Get_DeclinationRate: Double; safecall;
    procedure Set_DeclinationRate(Value: Double); safecall;
    function Get_Description: WideString; safecall;
    function Get_DoesRefraction: WordBool; safecall;
    procedure Set_DoesRefraction(Value: WordBool); safecall;
    function Get_DriverInfo: WideString; safecall;
    function Get_DriverVersion: WideString; safecall;
    function Get_EquatorialSystem: EquatorialCoordinateType; safecall;
    function Get_FocalLength: Double; safecall;
    function Get_GuideRateDeclination: Double; safecall;
    procedure Set_GuideRateDeclination(Value: Double); safecall;
    function Get_GuideRateRightAscension: Double; safecall;
    procedure Set_GuideRateRightAscension(Value: Double); safecall;
    function Get_InterfaceVersion: Integer; safecall;
    function Get_IsPulseGuiding: WordBool; safecall;
    function Get_Name: WideString; safecall;
    function Get_RightAscension: Double; safecall;
    function Get_RightAscensionRate: Double; safecall;
    procedure Set_RightAscensionRate(Value: Double); safecall;
    function Get_SideOfPier: Integer; safecall;
    procedure Set_SideOfPier(Value: Integer); safecall;
    function Get_SiderealTime: Double; safecall;
    function Get_SiteElevation: Double; safecall;
    procedure Set_SiteElevation(Value: Double); safecall;
    function Get_SiteLatitude: Double; safecall;
    procedure Set_SiteLatitude(Value: Double); safecall;
    function Get_SiteLongitude: Double; safecall;
    procedure Set_SiteLongitude(Value: Double); safecall;
    function Get_Slewing: WordBool; safecall;
    function Get_SlewSettleTime: Integer; safecall;
    procedure Set_SlewSettleTime(Value: Integer); safecall;
    function Get_TargetDeclination: Double; safecall;
    procedure Set_TargetDeclination(Value: Double); safecall;
    function Get_TargetRightAscension: Double; safecall;
    procedure Set_TargetRightAscension(Value: Double); safecall;
    function Get_Tracking: WordBool; safecall;
    procedure Set_Tracking(Value: WordBool); safecall;
    function Get_TrackingRate: Integer; safecall;
    procedure Set_TrackingRate(Value: Integer); safecall;
    function Get_TrackingRates: ITrackingRatesCol; safecall;
    function Get_UTCDate: TDateTime; safecall;
    procedure Set_UTCDate(Value: TDateTime); safecall;
    function Get_Connected: WordBool; safecall;
    procedure Set_Connected(Value: WordBool); safecall;
    function Get_SupportedActions: OleVariant; safecall;
    function Get_PECCodeur: Integer; safecall;
    function Get_RawPositionAlphaInit_arcsecCodeurs: Double; safecall;
    function Get_RawPositionDeltaInit_arcsecCodeurs: Double; safecall;
    function Get_RawPositionAlpha_arcsecCodeurs: Double; safecall;
    function Get_RawPositionDelta_arcsecCodeurs: Double; safecall;
    function Get_DestinationSideOfPier(RightAscension: Double; Declination: Double): PierSide; safecall;
    property AlignmentMode: AlignmentModes read Get_AlignmentMode;
    property Altitude: Double read Get_Altitude;
    property ApertureArea: Double read Get_ApertureArea;
    property ApertureDiameter: Double read Get_ApertureDiameter;
    property AtHome: WordBool read Get_AtHome;
    property AtPark: WordBool read Get_AtPark;
    property Azimuth: Double read Get_Azimuth;
    property CanFindHome: WordBool read Get_CanFindHome;
    property CanPark: WordBool read Get_CanPark;
    property CanPulseGuide: WordBool read Get_CanPulseGuide;
    property CanSetDeclinationRate: WordBool read Get_CanSetDeclinationRate;
    property CanSetGuideRates: WordBool read Get_CanSetGuideRates;
    property CanSetPark: WordBool read Get_CanSetPark;
    property CanSetPierSide: WordBool read Get_CanSetPierSide;
    property CanSetRightAscensionRate: WordBool read Get_CanSetRightAscensionRate;
    property CanSetTracking: WordBool read Get_CanSetTracking;
    property CanSlew: WordBool read Get_CanSlew;
    property CanSlewAltAz: WordBool read Get_CanSlewAltAz;
    property CanSlewAltAzAsync: WordBool read Get_CanSlewAltAzAsync;
    property CanSlewAsync: WordBool read Get_CanSlewAsync;
    property CanSync: WordBool read Get_CanSync;
    property CanSyncAltAz: WordBool read Get_CanSyncAltAz;
    property CanUnpark: WordBool read Get_CanUnpark;
    property Declination: Double read Get_Declination;
    property DeclinationRate: Double read Get_DeclinationRate write Set_DeclinationRate;
    property Description: WideString read Get_Description;
    property DoesRefraction: WordBool read Get_DoesRefraction write Set_DoesRefraction;
    property DriverInfo: WideString read Get_DriverInfo;
    property DriverVersion: WideString read Get_DriverVersion;
    property EquatorialSystem: EquatorialCoordinateType read Get_EquatorialSystem;
    property FocalLength: Double read Get_FocalLength;
    property GuideRateDeclination: Double read Get_GuideRateDeclination write Set_GuideRateDeclination;
    property GuideRateRightAscension: Double read Get_GuideRateRightAscension write Set_GuideRateRightAscension;
    property InterfaceVersion: Integer read Get_InterfaceVersion;
    property IsPulseGuiding: WordBool read Get_IsPulseGuiding;
    property Name: WideString read Get_Name;
    property RightAscension: Double read Get_RightAscension;
    property RightAscensionRate: Double read Get_RightAscensionRate write Set_RightAscensionRate;
    property SideOfPier: Integer read Get_SideOfPier write Set_SideOfPier;
    property SiderealTime: Double read Get_SiderealTime;
    property SiteElevation: Double read Get_SiteElevation write Set_SiteElevation;
    property SiteLatitude: Double read Get_SiteLatitude write Set_SiteLatitude;
    property SiteLongitude: Double read Get_SiteLongitude write Set_SiteLongitude;
    property Slewing: WordBool read Get_Slewing;
    property SlewSettleTime: Integer read Get_SlewSettleTime write Set_SlewSettleTime;
    property TargetDeclination: Double read Get_TargetDeclination write Set_TargetDeclination;
    property TargetRightAscension: Double read Get_TargetRightAscension write Set_TargetRightAscension;
    property Tracking: WordBool read Get_Tracking write Set_Tracking;
    property TrackingRate: Integer read Get_TrackingRate write Set_TrackingRate;
    property TrackingRates: ITrackingRatesCol read Get_TrackingRates;
    property UTCDate: TDateTime read Get_UTCDate write Set_UTCDate;
    property Connected: WordBool read Get_Connected write Set_Connected;
    property SupportedActions: OleVariant read Get_SupportedActions;
    property PECCodeur: Integer read Get_PECCodeur;
    property RawPositionAlphaInit_arcsecCodeurs: Double read Get_RawPositionAlphaInit_arcsecCodeurs;
    property RawPositionDeltaInit_arcsecCodeurs: Double read Get_RawPositionDeltaInit_arcsecCodeurs;
    property RawPositionAlpha_arcsecCodeurs: Double read Get_RawPositionAlpha_arcsecCodeurs;
    property RawPositionDelta_arcsecCodeurs: Double read Get_RawPositionDelta_arcsecCodeurs;
    property DestinationSideOfPier[RightAscension: Double; Declination: Double]: PierSide read Get_DestinationSideOfPier;
  end;

// *********************************************************************//
// DispIntf :    ITelescopeDisp
// Indicateurs : (4416) Dual OleAutomation Dispatchable
// GUID :        {2AAA9DCD-C998-47D1-A93E-0D0FD2CF1D09}
// *********************************************************************//
  ITelescopeDisp = dispinterface
    ['{2AAA9DCD-C998-47D1-A93E-0D0FD2CF1D09}']
    procedure AbortSlew; dispid 1;
    function AxisRates(Axis: TelescopeAxes): IAxisRates; dispid 2;
    function CanMoveAxis(Axe: TelescopeAxes): WordBool; dispid 3;
    procedure CommandBlind; dispid 4;
    procedure CommandBool; dispid 5;
    procedure CommandString; dispid 6;
    procedure FindHome; dispid 8;
    procedure MoveAxis(Axe: TelescopeAxes; Rate: Double); dispid 9;
    procedure Park; dispid 10;
    procedure PulseGuide(Direction: GuideDirections; Duration: Integer); dispid 11;
    procedure SetPark; dispid 12;
    procedure SetupDialog; dispid 13;
    procedure SlewToAltAz; dispid 14;
    procedure SlewToAltAzAsync; dispid 15;
    procedure SlewToCoordinates(RightAscension: Double; Declination: Double); dispid 16;
    procedure SlewToCoordinatesAsync(RightAscension: Double; Declination: Double); dispid 17;
    procedure SlewToTarget; dispid 18;
    procedure SlewToTargetAsync; dispid 19;
    procedure SyncToAltAz; dispid 20;
    procedure SyncToCoordinates(RightAscension: Double; Declination: Double); dispid 21;
    procedure SyncToTarget; dispid 22;
    procedure Unpark; dispid 23;
    property AlignmentMode: AlignmentModes readonly dispid 24;
    property Altitude: Double readonly dispid 25;
    property ApertureArea: Double readonly dispid 26;
    property ApertureDiameter: Double readonly dispid 27;
    property AtHome: WordBool readonly dispid 28;
    property AtPark: WordBool readonly dispid 29;
    property Azimuth: Double readonly dispid 30;
    property CanFindHome: WordBool readonly dispid 31;
    property CanPark: WordBool readonly dispid 32;
    property CanPulseGuide: WordBool readonly dispid 33;
    property CanSetDeclinationRate: WordBool readonly dispid 34;
    property CanSetGuideRates: WordBool readonly dispid 35;
    property CanSetPark: WordBool readonly dispid 36;
    property CanSetPierSide: WordBool readonly dispid 37;
    property CanSetRightAscensionRate: WordBool readonly dispid 38;
    property CanSetTracking: WordBool readonly dispid 39;
    property CanSlew: WordBool readonly dispid 40;
    property CanSlewAltAz: WordBool readonly dispid 41;
    property CanSlewAltAzAsync: WordBool readonly dispid 42;
    property CanSlewAsync: WordBool readonly dispid 43;
    property CanSync: WordBool readonly dispid 44;
    property CanSyncAltAz: WordBool readonly dispid 45;
    property CanUnpark: WordBool readonly dispid 46;
    property Declination: Double readonly dispid 48;
    property DeclinationRate: Double dispid 50;
    property Description: WideString readonly dispid 51;
    property DoesRefraction: WordBool dispid 52;
    property DriverInfo: WideString readonly dispid 53;
    property DriverVersion: WideString readonly dispid 54;
    property EquatorialSystem: EquatorialCoordinateType readonly dispid 55;
    property FocalLength: Double readonly dispid 56;
    property GuideRateDeclination: Double dispid 57;
    property GuideRateRightAscension: Double dispid 58;
    property InterfaceVersion: Integer readonly dispid 59;
    property IsPulseGuiding: WordBool readonly dispid 60;
    property Name: WideString readonly dispid 61;
    property RightAscension: Double readonly dispid 62;
    property RightAscensionRate: Double dispid 63;
    property SideOfPier: Integer dispid 64;
    property SiderealTime: Double readonly dispid 65;
    property SiteElevation: Double dispid 66;
    property SiteLatitude: Double dispid 67;
    property SiteLongitude: Double dispid 68;
    property Slewing: WordBool readonly dispid 69;
    property SlewSettleTime: Integer dispid 70;
    property TargetDeclination: Double dispid 71;
    property TargetRightAscension: Double dispid 72;
    property Tracking: WordBool dispid 73;
    property TrackingRate: Integer dispid 74;
    property TrackingRates: ITrackingRatesCol readonly dispid 75;
    property UTCDate: TDateTime dispid 76;
    property Connected: WordBool dispid 77;
    property SupportedActions: OleVariant readonly dispid 201;
    property PECCodeur: Integer readonly dispid 202;
    property RawPositionAlphaInit_arcsecCodeurs: Double readonly dispid 203;
    property RawPositionDeltaInit_arcsecCodeurs: Double readonly dispid 204;
    property RawPositionAlpha_arcsecCodeurs: Double readonly dispid 205;
    property RawPositionDelta_arcsecCodeurs: Double readonly dispid 206;
    property DestinationSideOfPier[RightAscension: Double; Declination: Double]: PierSide readonly dispid 207;
  end;

// *********************************************************************//
// Interface :   IRate
// Indicateurs : (4416) Dual OleAutomation Dispatchable
// GUID :        {D8AB1110-A9EB-4535-8F42-13C37887520A}
// *********************************************************************//
  IRate = interface(IDispatch)
    ['{D8AB1110-A9EB-4535-8F42-13C37887520A}']
  end;

// *********************************************************************//
// DispIntf :    IRateDisp
// Indicateurs : (4416) Dual OleAutomation Dispatchable
// GUID :        {D8AB1110-A9EB-4535-8F42-13C37887520A}
// *********************************************************************//
  IRateDisp = dispinterface
    ['{D8AB1110-A9EB-4535-8F42-13C37887520A}']
  end;

// *********************************************************************//
// Interface :   IAxisRates
// Indicateurs : (4416) Dual OleAutomation Dispatchable
// GUID :        {8B305188-7117-4BAD-948C-51E4E8F71817}
// *********************************************************************//
  IAxisRates = interface(IDispatch)
    ['{8B305188-7117-4BAD-948C-51E4E8F71817}']
  end;

// *********************************************************************//
// DispIntf :    IAxisRatesDisp
// Indicateurs : (4416) Dual OleAutomation Dispatchable
// GUID :        {8B305188-7117-4BAD-948C-51E4E8F71817}
// *********************************************************************//
  IAxisRatesDisp = dispinterface
    ['{8B305188-7117-4BAD-948C-51E4E8F71817}']
  end;

// *********************************************************************//
// Interface :   ITrackingRatesCol
// Indicateurs : (4416) Dual OleAutomation Dispatchable
// GUID :        {547B9D66-234E-432F-91DF-74284E3CB5CB}
// *********************************************************************//
  ITrackingRatesCol = interface(IDispatch)
    ['{547B9D66-234E-432F-91DF-74284E3CB5CB}']
  end;

// *********************************************************************//
// DispIntf :    ITrackingRatesColDisp
// Indicateurs : (4416) Dual OleAutomation Dispatchable
// GUID :        {547B9D66-234E-432F-91DF-74284E3CB5CB}
// *********************************************************************//
  ITrackingRatesColDisp = dispinterface
    ['{547B9D66-234E-432F-91DF-74284E3CB5CB}']
  end;

// *********************************************************************//
// La classe CoTelescope fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut ITelescope exposée
// par la CoClasse Telescope. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoTelescope = class
    class function Create: ITelescope;
    class function CreateRemote(const MachineName: string): ITelescope;
  end;

// *********************************************************************//
// La classe CoRate fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut IRate exposée
// par la CoClasse Rate. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoRate = class
    class function Create: IRate;
    class function CreateRemote(const MachineName: string): IRate;
  end;

// *********************************************************************//
// La classe CoAxisRates fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut IAxisRates exposée
// par la CoClasse AxisRates. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoAxisRates = class
    class function Create: IAxisRates;
    class function CreateRemote(const MachineName: string): IAxisRates;
  end;

// *********************************************************************//
// La classe CoTrackingRatesCol fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut ITrackingRatesCol exposée
// par la CoClasse TrackingRatesCol. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoTrackingRatesCol = class
    class function Create: ITrackingRatesCol;
    class function CreateRemote(const MachineName: string): ITrackingRatesCol;
  end;

// *********************************************************************//
// La classe CoRateEnum fournit une méthode Create et CreateRemote pour
// créer des instances de l'interface par défaut IEnumerator exposée
// par la CoClasse RateEnum. Les fonctions sont destinées à être utilisées par
// les clients désirant automatiser les objets CoClasse exposés par
// le serveur de cette bibliothèque de types.
// *********************************************************************//
  CoRateEnum = class
    class function Create: IEnumerator;
    class function CreateRemote(const MachineName: string): IEnumerator;
  end;

implementation

uses System.Win.ComObj;

class function CoTelescope.Create: ITelescope;
begin
  Result := CreateComObject(CLASS_Telescope) as ITelescope;
end;

class function CoTelescope.CreateRemote(const MachineName: string): ITelescope;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Telescope) as ITelescope;
end;

class function CoRate.Create: IRate;
begin
  Result := CreateComObject(CLASS_Rate) as IRate;
end;

class function CoRate.CreateRemote(const MachineName: string): IRate;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Rate) as IRate;
end;

class function CoAxisRates.Create: IAxisRates;
begin
  Result := CreateComObject(CLASS_AxisRates) as IAxisRates;
end;

class function CoAxisRates.CreateRemote(const MachineName: string): IAxisRates;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AxisRates) as IAxisRates;
end;

class function CoTrackingRatesCol.Create: ITrackingRatesCol;
begin
  Result := CreateComObject(CLASS_TrackingRatesCol) as ITrackingRatesCol;
end;

class function CoTrackingRatesCol.CreateRemote(const MachineName: string): ITrackingRatesCol;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TrackingRatesCol) as ITrackingRatesCol;
end;

class function CoRateEnum.Create: IEnumerator;
begin
  Result := CreateComObject(CLASS_RateEnum) as IEnumerator;
end;

class function CoRateEnum.CreateRemote(const MachineName: string): IEnumerator;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RateEnum) as IEnumerator;
end;

end.

