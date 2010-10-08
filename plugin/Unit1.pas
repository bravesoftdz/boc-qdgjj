unit Unit1;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, ActiveX, Classes, ComObj, mshtml, SHDocVw, SysUtils, Unit2;

type
  TGJJPlugin = class(TComObject, IObjectWithSite, IDispatch)
  private
    FIESite: IUnknown;
    FIE: IWebBrowser2;
    FCPC: IConnectionPointContainer;
    FCP: IConnectionPoint;
    FCookie: Integer ;
    f:TFrmplugin;
  protected

    //IObjectWithSite接口方法定义
    function SetSite(const pUnkSite: IUnknown): HResult; stdcall;
    function GetSite(const riid: TIID; out site: IUnknown): HResult; stdcall;
    //IDispatch接口方法定义
    function GetTypeInfoCount(out Count: Integer): HResult; stdcall;
    function GetTypeInfo(Index, LocaleID: Integer; out TypeInfo): HResult;
      stdcall;
    function GetIDsOfNames(const IID: TGUID; Names: Pointer;
      NameCount, LocaleID: Integer; DispIDs: Pointer): HResult; stdcall;
    function Invoke(DispID: Integer; const IID: TGUID; LocaleID: Integer;
      Flags: Word; var Params; VarResult, ExcepInfo, ArgErr: Pointer): HResult;
      stdcall;
  public
    destructor Destroy; override;
  end;

const
  Class_GJJPlugin: TGUID = '{A09213F6-8FDF-4E13-8E0A-A5BD4A4649E6}';

implementation

uses ComServ ;

{ TIEHelper }


destructor TGJJPlugin.Destroy;
begin
  if f<>nil then
    f.Free;
  inherited;
end;

function TGJJPlugin.GetIDsOfNames(const IID: TGUID; Names: Pointer;
  NameCount, LocaleID: Integer; DispIDs: Pointer): HResult;
begin

end;

function TGJJPlugin.GetSite(const riid: TIID;
  out site: IInterface): HResult;
begin
  if Supports(FIESite, riid,site) then
    Result := S_OK
  else
    Result:= E_NOINTERFACE;

end;

function TGJJPlugin.GetTypeInfo(Index, LocaleID: Integer;
  out TypeInfo): HResult;
begin

end;

function TGJJPlugin.GetTypeInfoCount(out Count: Integer): HResult;
begin

end;

function TGJJPlugin.Invoke(DispID: Integer; const IID: TGUID;
  LocaleID: Integer; Flags: Word; var Params; VarResult, ExcepInfo,
  ArgErr: Pointer): HResult;
begin

end;


function TGJJPlugin.SetSite(const pUnkSite: IInterface): HResult;

begin
  Result := E_FAIL;
  //保存接口
  FIESite := pUnkSite;
  if not Supports(FIESite, IWebBrowser2, FIE) then
    Exit;
  {//获得事件连接点
  if not Supports(FIE, IConnectionPointContainer, FCPC) then
    Exit;
  FCPC.FindConnectionPoint(DWebBrowserEvents2, FCP);
  //监听事件
  FCP.Advise(Self, FCookie);
  Result := S_OK;     }
  if f=nil then f:= TFrmplugin.Create(nil);
  f.ParentWindow := FIE.HWND;//嵌入IE
  f.enter(FIE);
end;

procedure DeleteRegKeyValue(Root: DWORD; Key: string; ValueName: string = '');
var
  KeyHandle: HKEY;
begin
  if ValueName = '' then
    RegDeleteKey(Root, PChar(Key));
  if RegOpenKey(Root, PChar(Key), KeyHandle) = ERROR_SUCCESS then
  try
    RegDeleteValue(KeyHandle, PChar(ValueName));
  finally
    RegCloseKey(KeyHandle);
  end;
end;

procedure CreateRegKeyValue(Root: DWORD; const Key, ValueName, Value: string);
var
  Handle: HKey;
  Status, Disposition: Integer;
begin
  Status := RegCreateKeyEx(ROOT, PChar(Key), 0, '',
    REG_OPTION_NON_VOLATILE, KEY_READ or KEY_WRITE, nil, Handle,
    @Disposition);
  if Status = 0 then
  begin
    Status := RegSetValueEx(Handle, PChar(ValueName), 0, REG_SZ,
      PChar(Value), Length(Value) + 1);
    RegCloseKey(Handle);
  end;
  {if Status <> 0 then
    raise EOleRegistrationError.CreateRes(@SCreateRegKeyError);}
end;

type
  TGJJPluginFactory = class(TComObjectFactory)
  public
    procedure UpdateRegistry(Register: Boolean); override;
  end;

{ TIEAdvBHOFactory }

procedure TGJJPluginFactory.UpdateRegistry(Register: Boolean);
begin
  inherited;
  if Register then begin
    CreateRegKeyValue(HKEY_LOCAL_MACHINE, 'Software\Microsoft\Windows\CurrentVersion\explorer\Browser Helper Objects\' + GuidToString(ClassID), '', '');
    //NoExplorer 禁止  Explorer加载
    //值和类型是什么都不重要，只要NoExplorer 条目存在
    //Windows Explorer 就不会加载BHO
    CreateRegKeyValue(HKEY_LOCAL_MACHINE, 'Software\Microsoft\Windows\CurrentVersion\explorer\Browser Helper Objects\' + GuidToString(ClassID), 'NoExplorer', '1');
  end else
    DeleteRegKeyValue(HKEY_LOCAL_MACHINE, 'Software\Microsoft\Windows\CurrentVersion\explorer\Browser Helper Objects\' + GuidToString(ClassID), '');
end;

initialization
  TGJJPluginFactory.Create(ComServer, TGJJPlugin, Class_GJJPlugin,
    'GJJPlugin', '', ciMultiInstance, tmApartment);

end.
