unit Rate_Unit;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, PIAZ_TLB, StdVcl;

type
  TRate = class(TAutoObject, IRate)
  protected

  end;

implementation

uses ComServ;

initialization
  TAutoObjectFactory.Create(ComServer, TRate, Class_Rate,
    ciMultiInstance, tmApartment);
end.
