unit UntUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, UntUtil;

type
  TFrmUser = class(TForm)
    Label1: TLabel;
    EdtUser: TEdit;
    Label2: TLabel;
    EdtPass: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    user:String;
    pass:String;
    logon:boolean;
    procedure new;
    procedure edit;
    function login(user:String; pass:String):boolean;
  end;

var
  FrmUser: TFrmUser;

implementation

uses UntMain, md5;

{$R *.dfm}

{ TForm1 }

procedure TFrmUser.edit;
begin

end;

function TFrmUser.login(user, pass: String):boolean;
begin
  opensql('select * from t_user where user = '''+DBS(user)+''' and pass='''+DBS(MD5Print(MD5String(pass)))+'''', FrmMain.AQOpen);

  logon := not (FrmMain.AQOpen.Eof and FrmMain.AQOpen.Bof);
  result := logon;
  if logon then begin
    self.user := user;
  end;
end;

procedure TFrmUser.new;
begin
  EdtUser.Text := '';
  EdtPass.Text := '';

  self.ShowModal;
end;

procedure TFrmUser.Button1Click(Sender: TObject);
begin
  if EdtUser.Text = '' then begin
    showmessage('��������ʵ����');
    exit;
  end;

  if EdtPass.Text = '' then begin
    showmessage('����������');
    exit;
  end;

  opensql('select * from t_user where user = '''+DBS(EdtUser.Text)+'''', FrmMain.AQOpen);
  if (not (FrmMain.AQOpen.eof and FrmMain.AQOpen.Bof)) then begin
    if Application.MessageBox('�û����Ѵ��ڼ��������������û����룬ȷ����', '��ʾ', MB_ICONQUESTION+MB_YESNO) = IDNO then
      exit;
    execsql('update t_user set [pass] = '''+DBS(MD5Print(MD5String(EdtPass.Text)))+''' where [user] ='''+ EdtUser.Text+'''');
    showmessage('�û������޸ĳɹ������ڽ�����ϵͳ');
  end else begin
    execsql('insert into t_user ([user], [pass] , [admin]) values('''+ EdtUser.Text+''', '''+DBS(MD5Print(MD5String(EdtPass.Text)))+''', 0)');
    showmessage('�û�ע��ɹ������ڽ������û�������ϵͳ');
  end;

  self.login(EdtUser.Text, EdtPass.Text);
  close;
end;

procedure TFrmUser.Button2Click(Sender: TObject);
begin
  close;
end;

end.
