unit Core;

interface
function    Get_Altitude_Core:double;
function    Get_Azimuth_Core:double;
function    Get_Declination_Core:double;
function    Get_RightAscension_Core:double;
function    Get_SiteElevation_Core:double;
procedure   Set_Connected_Core(Value:Boolean);
procedure  Set_TargetDeclination_Core(Value: Double);
procedure  Set_TargetRightAscension_Core(Value: Double);
procedure   SetupDialog_Core;

implementation
uses Variable_Unit,Socket;

function Get_Altitude_Core:double;
begin
  try
    fAltitude:=GetReel('GHa');
  except
    fAltitude:=0;
  end;
  result:=fAltitude;
end;

function Get_Azimuth_Core:double;
begin
  try
    fAzimuth:=GetReel('GAz');
  except
    fAzimuth:=0;
  end;
  result:=fAzimuth;
end;

function Get_Declination_Core:double;
begin
  try
    fDeclination:=GetReel('GDe');
  except
    fDeclination:=0;
  end;
  result:=fDeclination;
end;

function Get_RightAscension_Core:double;
begin
  try
    fRightAscension:=GetReel('GRa');
  except
    fRightAscension:=0;
  end;
  result:=fRightAscension;
end;

function Get_SiteElevation_Core:double;
begin
  try
    fSiteElevation:=GetReel('GAl');
  except
    fSiteElevation:=0;
  end;
  result:=fSiteElevation;
end;

procedure   Set_Connected_Core(Value:Boolean);
begin
  if value=fConnected then exit;
  if Value then //connection
  begin
    fConnected:=Connexion;
  end
  else          //déconnexion
  begin
    Deconnexion;
    fConnected:=false;
  end;
end;

procedure  Set_TargetDeclination_Core(Value: Double);
begin
  SetReel('TDe',Value);
end;

procedure  Set_TargetRightAscension_Core(Value: Double);
begin
  SetReel('TRa',Value);
end;

procedure   SetupDialog_Core;
begin

end;

initialization
  fConnected:=false;
finalization;
end.

