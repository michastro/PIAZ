unit Core;

interface
function    Get_Altitude_Core:Extended;
function    Get_Azimuth_Core:Extended;
function    Get_Declination_Core:Extended;
function    Get_RightAscension_Core:Extended;
function    Get_SiteElevation_Core:Extended;
procedure   Set_Connected_Core(Value:Boolean);
procedure   SetupDialog_Core;

implementation
uses Variable_Unit,Socket;

function Get_Altitude_Core:Extended;
begin
  try
    fAltitude:=GetReel('GHa');
  except
    fAltitude:=0;
  end;
  result:=fAltitude;
end;

function Get_Azimuth_Core:Extended;
begin
  try
    fAzimuth:=GetReel('GAz');
  except
    fAzimuth:=0;
  end;
  result:=fAzimuth;
end;

function Get_Declination_Core:Extended;
begin
  try
    fDeclination:=GetReel('GDe');
  except
    fDeclination:=0;
  end;
  result:=fDeclination;
end;

function Get_RightAscension_Core:Extended;
begin
  try
    fRightAscension:=GetReel('GAd');
  except
    fRightAscension:=0;
  end;
  result:=fRightAscension;
end;

function Get_SiteElevation_Core:Extended;
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

procedure   SetupDialog_Core;
begin

end;

initialization
  fConnected:=false;
finalization;
end.

