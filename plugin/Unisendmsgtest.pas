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
{     ���Գ����
ʹ�ø���Ϣ�漰һ��TcopyDataStruct�ṹ���͵�ָ�롣�ýṹ����������Ա��
dwData ��һ��32λ�ĸ��Ӳ���
cbData ��ʾҪ���ݵ��������Ĵ�С
lpData ��ʾҪ���ݵ���������ָ��
}
  {
  //�ò��Ҵ��ڵķ�����þ��
  if frmcap = '' then begin
    hd := FindWindow (nil, pChar(pluginformname)); // ��ý��ܴ��ڵľ��
  end else begin
    //WinExec(pChar(ExtractFilePath(Application.ExeName)+'popmsg.exe'), SW_SHOWNORMAL);

    //hd := FindWindow(nil, pChar(frmcap));
  end;
  
  if hd=0 then exit;   //û�ҵ�������� }

  //�ý�����Ϣʱ��õľ��
  if clienthandle=0 then exit;

  ds.cbData := Length (msg) + 1;
  GetMem (ds.lpData, ds.cbData ); //Ϊ���ݵ������������ڴ�
  StrCopy (ds.lpData, PChar (msg));

  SendMessage (clienthandle, WM_COPYDATA, Application.Handle, Cardinal(@ds)); // ����WM_COPYDATA��Ϣ
  FreeMem(ds.lpData); //�ͷ���Դ
end;

procedure Tfrmmain.Button1Click(Sender: TObject);
begin
  SendMsg(memo2.Lines.Text);
end;

end.
