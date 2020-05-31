unit AxisRates_Unit;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, PIAZ_TLB, StdVcl;

type
  TAxisRates = class(TAutoObject, IAxisRates)
  protected

  end;

implementation

uses ComServ;

initialization
  TAutoObjectFactory.Create(ComServer, TAxisRates, Class_AxisRates,
    ciMultiInstance, tmApartment);
end.
