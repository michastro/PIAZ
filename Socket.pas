unit Socket;

interface
  Function Connexion:boolean;
  Procedure Deconnexion;
  Function GetReel(Code:AnsiString):extended;

implementation

uses Variable_Unit,SysUtils,BlckSock;

Function Connexion:boolean;
Var Reponse: AnsiString;
begin
  tcpSock.Bind('192.168.1.69','5678');
  tcpSock.Connect('192.168.1.69','5678');
  Reponse:=tcpSock.RecvBlock(1000);
  if Reponse='PIAZ' then result:=true else
      result:=false;
end;

Procedure Deconnexion;
begin
  tcpSock.CloseSocket;
end;

Function GetReel(Code:AnsiString):extended;
Var Reponse: AnsiString;
begin
  tcpSock.SendBlock(Code);
  Reponse:=tcpSock.RecvBlock(2000);
  result:=StrToFloat(Reponse);
end;

Initialization
  tcpSock:=TTCPBlockSocket.Create;
Finalization
  tcpSock.Free;
end.


