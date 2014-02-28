unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


 //MessageBeep(MB_OK);
 //MessageBeep(MB_ICONHAND);
 //MessageBeep(MB_ICONQUESTION);
 //MessageBeep(MB_ICONEXCLAMATION);
 //MessageBeep(MB_ICONASTERISK);

procedure TForm1.FormCreate(Sender: TObject);
begin
  if (paramcount>0) then begin
    case paramstr(1)[1] of
      'e': MessageBeep(MB_ICONEXCLAMATION);
      'w': MessageBeep(MB_OK);
      'i': MessageBeep(MB_ICONASTERISK);
    end;
  end;
end;

end.
