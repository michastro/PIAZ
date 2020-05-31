unit TrackingRatesCol_Unit;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, PIAZ_TLB, StdVcl;

type
  TTrackingRatesCol = class(TAutoObject, ITrackingRatesCol)
  protected

  end;

implementation

uses ComServ;

initialization
  TAutoObjectFactory.Create(ComServer, TTrackingRatesCol, Class_TrackingRatesCol,
    ciMultiInstance, tmApartment);
end.
