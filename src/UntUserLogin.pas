unit UntUserLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, untUtil;

type
  TFrmUserLogin = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    cbbUser: TComboBox;
    Label2: TLabel;
    EdtPass: TEdit;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    canNew:boolean;
    procedure initUserList();
  end;

var
  FrmUserLogin: TFrmUserLogin;

implementation

uses UntMain, UntUser, UntLogin;

{$R *.dfm}

{ TFrmUserLogin }

procedure TFrmUserLogin.initUserList;
begin
  cbbUser.Items.Clear;

  opensql('select * from t_user', FrmMain.AQOpen);
  while not FrmMain.AQOpen.Eof do begin
    cbbUser.Items.Add(FrmMain.AQOpen.FieldByName('user').AsString);
    FrmMain.AQOpen.Next;
  end;
end;

procedure TFrmUserLogin.Button1Click(Sender: TObject);
begin
  if FrmUser.login(cbbUser.Text, EdtPass.Text) then
    close
  else
    showmessage('登录失败.请检查用户名密码(新用户请注册).');
end;

procedure TFrmUserLogin.Button3Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmUserLogin.Button2Click(Sender: TObject);
begin
  FrmLogin.ShowModal;
  if canNew then begin
    FrmUser.new;
    if FrmUser.logon then
      close;
  end;
end;

procedure TFrmUserLogin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not FrmUser.logon then Application.Terminate;  
end;

procedure TFrmUserLogin.FormCreate(Sender: TObject);
begin
  initUserList;
end;

end.
