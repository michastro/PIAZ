unit Variable_Unit;

interface
uses blcksock;
var
fConnected:boolean;
tcpSock: TTCPBlockSocket;
fDeclination,fRightAscension,fAltitude:extended;

implementation
initialization
  fConnected:=false;
end.
