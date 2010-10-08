unit Unisendmsgtest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

const
pluginformname='frmplugin';


type
  Tfrmmain = class(TForm)
    Label1: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private

    { Private declarations }
    clienthandle:THandle;
  public
    { Public declarations }
    procedure Mymessage(var t:TWmCopyData);message WM_COPYDATA;
    procedure SendMsg(msg:string; frmcap: string='');
  end;

var
  frmmain: Tfrmmain;

implementation

{$R *.dfm}

procedure Tfrmmain.Mymessage(var t: TWmCopyData);
begin
  clienthandle := t.From;
  memo1.lines.add(trim(StrPas(t.CopyDataStruct^.lpData)));
end;

procedure Tfrmmain.SendMsg(msg: string; frmcap: string='');
var
  ds: TCopyDataStruct;
  hd: THandle;
begin
{     测试程序段
使用该消息涉及一个TcopyDataStruct结构类型的指针。该结构中有三个成员：
dwData 是一个32位的附加参数
cbData 表示要传递的数据区的大小
lpData 表示要传递的数据区的指针
}
  {
  //用查找窗口的方法获得句柄
  if frmcap = '' then begin
    hd := FindWindow (nil, pChar(pluginformname)); // 获得接受窗口的句柄
  end else begin
    //WinExec(pChar(ExtractFilePath(Application.ExeName)+'popmsg.exe'), SW_SHOWNORMAL);

    //hd := FindWindow(nil, pChar(frmcap));
  end;
  
  if hd=0 then exit;   //没找到插件程序 }

  //用接收消息时获得的句柄
  if clienthandle=0 then exit;

  ds.cbData := Length (msg) + 1;
  GetMem (ds.lpData, ds.cbData ); //为传递的数据区分配内存
  StrCopy (ds.lpData, PChar (msg));

  SendMessage (clienthandle, WM_COPYDATA, Application.Handle, Cardinal(@ds)); // 发送WM_COPYDATA消息
  FreeMem(ds.lpData); //释放资源
end;

procedure Tfrmmain.Button1Click(Sender: TObject);
begin
  SendMsg(memo2.Lines.Text);
end;

end.
