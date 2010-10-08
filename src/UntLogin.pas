unit UntLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFrmLogin = class(TForm)
    Label1: TLabel;
    EdtPass: TEdit;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EdtPassKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses UntMain, UntUserLogin;

{$R *.dfm}

procedure TFrmLogin.Button1Click(Sender: TObject);
begin
  if  EdtPass.Text <> 'bankzhang' then begin
    showmessage('√‹¬ÎŒﬁ–ß');
  end else begin
    FrmUserLogin.canNew := true;
    close;
  end;
end;

procedure TFrmLogin.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmLogin.EdtPassKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
    Button1Click(self);   
end;

end.
