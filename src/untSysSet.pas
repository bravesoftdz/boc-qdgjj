unit untSysSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, registry;

type
  TFrmSysSet = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    EdtWebPage: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  Function WinExecExW(cmd,workdir:pchar;visiable:integer):DWORD;

var
  FrmSysSet: TFrmSysSet;

implementation

{$R *.dfm}

Function WinExecExW(cmd,workdir:pchar;visiable:integer):DWORD;
var
  StartupInfo:TStartupInfo;
  ProcessInfo:TProcessInformation;
begin

  FillChar(StartupInfo,SizeOf(StartupInfo),#0);
  StartupInfo.cb:=SizeOf(StartupInfo);
  StartupInfo.dwFlags:=STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow:=visiable;
  if not CreateProcess(nil,cmd,nil,nil,false,Create_new_console or Normal_priority_class,nil,nil,StartupInfo,ProcessInfo) then
    result:=0
  else begin
    waitforsingleobject(processinfo.hProcess,INFINITE);
    GetExitCodeProcess(ProcessInfo.hProcess,Result);

  end;

end;

procedure TFrmSysSet.Button1Click(Sender: TObject);
var pluginfile:String;
 areg:TRegistry;
begin
  aReg := TRegistry.Create;
  try
    aReg.RootKey := HKEY_LOCAL_MACHINE;
    if aReg.OpenKey('\Software\GJJ', True) then
    begin
      aReg.WriteString('mainformname', Application.Title);
      aReg.WriteString('webpage', EdtWebPage.Text);
      aReg.CloseKey;
    end;
  finally
    aReg.Free;
  end;
  pluginfile := ExtractFilePath(Application.ExeName)+'project1.dll';
  copyfile(PChar(pluginfile), 'c:\gjj.dll',true);
  WinExecExW('regsvr32 c:\gjj.dll',nil,sw_hide)
end;

procedure TFrmSysSet.FormCreate(Sender: TObject);
var
 areg:TRegistry;
begin
  aReg := TRegistry.Create;
  try
    aReg.RootKey := HKEY_LOCAL_MACHINE;
    if aReg.OpenKey('\Software\GJJ', True) then
    begin
      EdtWebPage.Text := aReg.ReadString('webpage');
      aReg.CloseKey;
    end;
  finally
    aReg.Free;
  end;
end;

procedure TFrmSysSet.Button2Click(Sender: TObject);
begin
  WinExecExW('regsvr32 c:\gjj.dll -u',nil,sw_hide)
end;

end.
