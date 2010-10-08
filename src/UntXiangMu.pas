unit UntXiangMu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, Mask;

type
  TFrmXiangMu = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Button1: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmXiangMu: TFrmXiangMu;

implementation

uses UntMain;

{$R *.dfm}

procedure TFrmXiangMu.Button1Click(Sender: TObject);
begin
  close;
end;

end.
