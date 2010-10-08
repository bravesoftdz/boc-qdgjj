unit reg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIForm, StdCtrls, SUIEdit, SUIButton, Registry, DateUtils;

type
  TRegFrm = class(TForm)
    suiForm1: TsuiForm;
    EdtRegisterCode: TsuiEdit;
    Label1: TLabel;
    EdtRegisterKey: TsuiEdit;
    Label2: TLabel;
    suiButton1: TsuiButton;
    suiButton2: TsuiButton;
    procedure FormCreate(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure suiButton2Click(Sender: TObject);
  private
    function checkTrial(key: String): Boolean;
    procedure saveReg(key: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegFrm: TRegFrm;

implementation

uses untmain;

{$R *.dfm}

procedure TRegFrm.FormCreate(Sender: TObject);
begin
  EdtRegisterCode.Text := FrmMain.GetIdeSerialNumber;
  EdtRegisterKey.Text :='';  
end;

procedure TRegFrm.suiButton1Click(Sender: TObject);
begin
  if EdtRegisterCode.Text <> FrmMain.GetIdeSerialNumber then begin
    syserror('Don''t use tools to modify myself,your machine will be destroy!');
    Application.Terminate;
  end;
  if (EdtRegisterKey.Text <> FrmMain.GetKey(EdtRegisterCode.Text)) and
    (not checkTrial(EdtRegisterKey.Text)) then
    syserror('Register key error ')
  else begin
    self.saveReg(EdtRegisterKey.Text);
    self.ModalResult := MROK;
  end;
end;

procedure TRegFrm.suiButton2Click(Sender: TObject);
begin
  self.ModalResult := MRCancel;
end;


function TRegFrm.checkTrial(key: String): Boolean;
var regday:TDate;
begin
  if length(Key) = 10 then begin
    try

      if key <> copy(key,1,5)+FrmMain.GetKey(copy(key,1,5)) then begin
        result := false;
        exit;
      end;
      regday := StrtoFloat(copy(key,1,5));
      if date > incDay(regday, 30) then
        result := false
      else
        result := true;
    except
      result := false;
    end;
  end else
    result := false;
end;


procedure TRegFrm.saveReg(key: String);
var areg:TRegistry;
begin
  aReg := TRegistry.Create;
  try
    aReg.RootKey := HKEY_LOCAL_MACHINE;
    if aReg.OpenKey('\Software\GJJ', True) then
    begin
      aReg.WriteString('key', key);
      aReg.CloseKey;
    end;
  finally
    aReg.Free;
  end;
end;

end.
