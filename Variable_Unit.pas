unit Variable_Unit;

interface
uses blcksock;
var
fConnected:boolean;
tcpSock: TTCPBlockSocket;
fDeclination,fRightAscension,fAzimuth,fAltitude,fSiteElevation:double;

implementation
initialization
  fConnected:=false;
end.
