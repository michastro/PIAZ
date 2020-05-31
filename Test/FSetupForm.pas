unit fSetupForm;

// Create a stadnard new form, use the form designer to build it and Create it in the Dll

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, ShellAPI,
  StdCtrls, ExtCtrls;

type
  TSetupForm = class(TForm)
    Image1: TImage;
    OKButton: TButton;  // ModeResult set to mrOK
    CancelButton: TButton; // ModeResult set to mrCancel
    Label1: TLabel;
    COMPortCombo: TComboBox;
    Label2: TLabel;
    LinkLabel: TLabel;
    procedure LinkLabelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetupForm: TSetupForm;

implementation

{$R *.DFM}

{--------------------------------------------------------------}
procedure TSetupForm.LinkLabelClick(Sender: TObject);
{--------------------------------------------------------------}
begin
  ShellExecute(Handle, 'open', 'http://www.aquest-inc.com/', nil, nil, SW_SHOWNORMAL);
end;

end.

