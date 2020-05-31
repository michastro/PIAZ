program PIAZ;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form1},
  PIAZ_TLB in 'PIAZ_TLB.pas',
  Telescope_Unit in 'Telescope_Unit.pas' {Telescope: CoClass},
  Rate_Unit in 'Rate_Unit.pas' {Rate: CoClass},
  AxisRates_Unit in 'AxisRates_Unit.pas' {AxisRates: CoClass},
  TrackingRatesCol_Unit in 'TrackingRatesCol_Unit.pas' {TrackingRatesCol: CoClass},
  Utils in 'Utils.pas',
  Core in 'Core.pas',
  Variable_Unit in 'Variable_Unit.pas',
  Socket in 'Socket.pas';

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
