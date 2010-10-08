unit reg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, SUIForm, StdCtrls, SUIEdit, SUIButton, Registry, DateUtils,
  SUIMemo;


const

  TIMELIMIT = FALSE;
  SENDAD = FALSE;
  IDENTIFY_BUFFER_SIZE = 512;
type
TIDERegs = packed record
    bFeaturesReg : BYTE; // Used for specifying SMART "commands".
    bSectorCountReg : BYTE; // IDE sector count register
    bSectorNumberReg : BYTE; // IDE sector number register
    bCylLowReg : BYTE; // IDE low order cylinder value
    bCylHighReg : BYTE; // IDE high order cylinder value
    bDriveHeadReg : BYTE; // IDE drive/head register
    bCommandReg : BYTE; // Actual IDE command.
    bReserved : BYTE; // reserved for future use. Must be zero.
  end; 

  TSendCmdInParams = packed record
    // Buffer size in byte
    cBufferSize : DWORD;
    // Structure with drive register values.
    irDriveRegs : TIDERegs;
    // Physical drive number to send command to (0,1,2,3).
    bDriveNumber : BYTE;
    bReserved : Array[0..2] of Byte;
    dwReserved : Array[0..3] of DWORD;
    bBuffer : Array[0..0] of Byte; // Input buffer.
  end;

  TIdSector = packed record
    wGenConfig : Word;
    wNumCyls : Word;
    wReserved : Word;
    wNumHeads : Word;
    wBytesPerTrack : Word;
    wBytesPerSector : Word;
    wSectorsPerTrack : Word;
    wVendorUnique : Array[0..2] of Word;
    sSerialNumber : Array[0..19] of CHAR;
    wBufferType : Word;
    wBufferSize : Word;
    wECCSize : Word;
    sFirmwareRev : Array[0..7] of Char;
    sModelNumber : Array[0..39] of Char;
    wMoreVendorUnique : Word;
    wDoubleWordIO : Word;
    wCapabilities : Word;
    wReserved1 : Word;
    wPIOTiming : Word;
    wDMATiming : Word;
    wBS : Word;
    wNumCurrentCyls : Word;
    wNumCurrentHeads : Word;
    wNumCurrentSectorsPerTrack : Word;
    ulCurrentSectorCapacity : DWORD;
    wMultSectorStuff : Word;
    ulTotalAddressableSectors : DWORD;
    wSingleWordDMA : Word;
    wMultiWordDMA : Word;
    bReserved : Array[0..127] of BYTE;
  end;

  PIdSector = ^TIdSector; 

  TDriverStatus = packed record
    // 驱动器返回的错误代码，无错则返回0
    bDriverError : Byte;
    // IDE出错寄存器的内容，只有当bDriverError 为 SMART_IDE_ERROR 时有效
    bIDEStatus : Byte;
    bReserved : Array[0..1] of Byte;
    dwReserved : Array[0..1] of DWORD;
  end; 

  TSendCmdOutParams = packed record
    // bBuffer的大小
    cBufferSize : DWORD;
    // 驱动器状态
    DriverStatus : TDriverStatus;
    // 用于保存从驱动器读出的数据的缓冲区，实际长度由cBufferSize决定
    bBuffer : Array[0..0] of BYTE;
  end;


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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private


    { Private declarations }
  public
    { Public declarations }

  end;
  function checkTrial(lastusedate, lastusekey, regcode: String): Boolean;
  procedure saveReg(key1, key2, key3: String);
  function checkreg():Boolean;
  function GetIdeSerialNumber : String;
  function GetKey(code: String): String;

var
  timestr, rk:String;
  RegFrm: TRegFrm;

implementation

{$R *.dfm}

function GetKey(code: String): String;
var sourceKey:String;
i, sumord, startn:Integer;
begin
  sourceKey := 'LWIOJKCIQODKOWENZLDF';
  sumord := 0;
  for i:= 1 to length(code) do begin
    sumord := sumord+ord(code[i]);
  end;
  startn := (sumord mod 10)+1;
  result := '';
  for i:= 1 to length(code) do begin
    result := result + Chr((Ord(sourceKey[startn])+Ord(code[i])) mod 26 +Ord('A'));


    startn := startn+1;
    if startn > length(sourceKey) then
      startn := 1;
  end;
end;

function GetIdeSerialNumber : String;
  var hDevice : THandle;
  cbBytesReturned : DWORD;
  SCIP : TSendCmdInParams;
  aIdOutCmd : Array [0..(SizeOf(TSendCmdOutParams)+IDENTIFY_BUFFER_SIZE-1)-1] of Byte;
  IdOutCmd : TSendCmdOutParams absolute aIdOutCmd;

  procedure ChangeByteOrder( var Data; Size : Integer );
  var ptr : PChar;
  i : Integer;
  c : Char;
  begin
    ptr := @Data;
    for i := 0 to (Size shr 1)-1 do
    begin
      c := ptr^;
      ptr^ := (ptr+1)^;
      (ptr+1)^ := c;
      Inc(ptr,2);
    end;
  end;

begin
  Result := 'VU2ERIPLATFORMWN3UNT'; // 如果出错则返回
  if SysUtils.Win32Platform=VER_PLATFORM_WIN32_NT then // Windows NT, Windows 2000
  begin
    // 提示! 改变名称可适用于其它驱动器，如第二个驱动器： '\\.\PhysicalDrive1\'
    hDevice := CreateFile( '\\.\PhysicalDrive0', GENERIC_READ or GENERIC_WRITE,
      FILE_SHARE_READ or FILE_SHARE_WRITE, nil, OPEN_EXISTING, 0, 0 );
  end else // Version Windows 95 OSR2, Windows 98
    hDevice := CreateFile( '\\.\SMARTVSD', 0, 0, nil, CREATE_NEW, 0, 0 );
  if hDevice=INVALID_HANDLE_VALUE then Exit;
  try
    FillChar(SCIP,SizeOf(TSendCmdInParams)-1,#0);
    FillChar(aIdOutCmd,SizeOf(aIdOutCmd),#0);
    cbBytesReturned := 0;
    // Set up data structures for IDENTIFY command.
    with SCIP do
    begin
      cBufferSize := IDENTIFY_BUFFER_SIZE;
      // bDriveNumber := 0;
      with irDriveRegs do
      begin
        bSectorCountReg := 1;
        bSectorNumberReg := 1;
        // if Win32Platform=VER_PLATFORM_WIN32_NT then bDriveHeadReg := $A0
        // else bDriveHeadReg := $A0 or ((bDriveNum and 1) shl 4);
        bDriveHeadReg := $A0;
        bCommandReg := $EC;
      end;
    end;

    if not DeviceIoControl( hDevice, $0007c088, @SCIP, SizeOf(TSendCmdInParams)-1,
      @aIdOutCmd, SizeOf(aIdOutCmd), cbBytesReturned, nil ) then Exit;
  finally
    CloseHandle(hDevice);
  end;
  with PIdSector(@IdOutCmd.bBuffer)^ do
  begin
    ChangeByteOrder( sSerialNumber, SizeOf(sSerialNumber) );
    (PChar(@sSerialNumber)+SizeOf(sSerialNumber))^ := #0;
    Result := PChar(@sSerialNumber);
    Result := StringReplace(result,' ', '0',[rfReplaceAll]);
    Result := StringReplace(result,'-', '0',[rfReplaceAll]);
  end;
end;


procedure TRegFrm.FormCreate(Sender: TObject);
begin
  timestr := floattostr(date);
  if TIMELIMIT then begin
    EdtRegisterCode.Text := timestr+GetIdeSerialNumber;
  end else begin
    EdtRegisterCode.Text := GetIdeSerialNumber;
  end;
  EdtRegisterKey.Text :='';  
end;

procedure TRegFrm.suiButton1Click(Sender: TObject);
begin
  if (EdtRegisterCode.Text <> GetIdeSerialNumber) and
    (EdtRegisterCode.Text <> timestr+GetIdeSerialNumber) then begin
    Application.Terminate;
  end;
  if (EdtRegisterKey.Text <> GetKey(EdtRegisterCode.Text)) and
    (not checkTrial(timestr, getKey(timestr),EdtRegisterKey.Text)) then
    showmessage('注册码错误。 ')
  else begin
    saveReg(timestr, GetKey(timestr), EdtRegisterKey.Text);
    self.ModalResult := MROK;
    close;
  end;
end;

procedure TRegFrm.suiButton2Click(Sender: TObject);
begin
  self.ModalResult := MRCancel;
end;


function checkTrial(lastusedate, lastusekey,  regcode: String): Boolean;
var regday, regendday:TDate;
begin
  try
    if regcode <> copy(regcode,1,5)+GetKey(copy(regcode,1,5)+GetIdeSerialNumber) then begin
      result := false;
      exit;
    end;
    regday := StrtoFloat(copy(regcode,1,5));
    regendday := date;
    //与服务器同步date
    if (regendday > regday) or
    (StrtoFloat(lastusedate)>regendday )or (getKey(lastusedate)<>lastusekey) or (lastusedate='') then
      result := false
    else
      result := true;
  except
    result := false;
  end;

end;


procedure saveReg(key1,key2,key3: String);
var areg:TRegistry;
begin
  aReg := TRegistry.Create;
  try
    aReg.RootKey := HKEY_LOCAL_MACHINE;
    try
      if aReg.OpenKey('\Software\GJJ', True) then
      begin
        aReg.WriteString('key1', key1);
        aReg.WriteString('key2', key2);
        aReg.WriteString('key3', key3);
        
        aReg.CloseKey;
      end;
    except
      showmessage('注册失败，错误代码:ER001。');
      abort;
    end;
  finally
    aReg.Free;
  end;
end;

function checkReg:Boolean;
var areg:TRegistry;
key1, key2, key3:String;
RegFrm:TRegFrm;
begin
  result := false;
  aReg := TRegistry.Create;
  try
    aReg.RootKey := HKEY_LOCAL_MACHINE;
    if aReg.OpenKey('\Software\GJJ', True) then
    begin
      key1 := aReg.ReadString('key1');
      key2 := aReg.ReadString('key2');
      key3 := aReg.ReadString('key3');
      rk := key3;
      if (GetKey(GetIdeSerialNumber)<> key3) and
       (not checkTrial(key1, key2, key3)) then
        result := false
      else begin
        result := true;
        aReg.WriteString('key1', floattoStr(date));
        aReg.WriteString('key2', getKey(floattoStr(date)));
      end;
      aReg.CloseKey;
    end else
      result := false;
  finally
    aReg.Free;
  end;

  if not result then begin
    RegFrm := TRegFrm.Create(Application);
    if not (RegFrm.ShowModal=mrOK) then
      Application.Terminate;
  end;
end;

procedure TRegFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
