unit keycreator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIForm, SUIButton, StdCtrls, SUIEdit, ComCtrls, dateutils,
  Registry;

type
  TForm1 = class(TForm)
    suiForm1: TsuiForm;
    Label1: TLabel;
    Label2: TLabel;
    EdtRegisterCode: TsuiEdit;
    EdtRegisterKey: TsuiEdit;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    Edt30Key: TsuiEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BeginDay: TLabel;
    EdtDays: TsuiEdit;
    DtpBeginDay: TDateTimePicker;
    suiButton3: TsuiButton;
    procedure suiButton2Click(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure EdtRegisterCodeChange(Sender: TObject);
    procedure suiButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses reg;

{$R *.dfm}

procedure TForm1.suiButton2Click(Sender: TObject);
begin
  close;
end;


procedure TForm1.suiButton1Click(Sender: TObject);
var adate:TDate;
regcode:String;
begin
  regcode := EdtRegisterCode.Text;
  if length(regcode)=25 then regcode := copy(regcode,6,20);
  EdtRegisterKey.Text := GetKey(regcode);
  adate := incDay(dtpbeginday.date, StrtoInt(edtdays.text)) ;
  Edt30Key.Text := FormatCurr('0',adate)+GetKey(FormatCurr('0',adate)+regcode);
end;

procedure TForm1.EdtRegisterCodeChange(Sender: TObject);
var adate:Tdate;
begin
  try
    adate := StrtoFloat(copy(EdtRegisterCode.Text,1,5));
    BeginDay.Caption := DatetoStr(adate);
  finally
  end;
end;

procedure TForm1.suiButton3Click(Sender: TObject);
var areg:TRegistry;
begin
  aReg := TRegistry.Create;
  try
    aReg.RootKey := HKEY_LOCAL_MACHINE;
    aReg.DeleteKey('\Software\GJJ');
  finally
    aReg.Free;
  end;
  showmessage('cleared');
end;

end.
