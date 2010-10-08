unit untDict;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, DB, ADODB;

type
  TFrmDict = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    DSDict: TDataSource;
    ATDict: TADOTable;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDict: TFrmDict;

implementation

uses UntMain;

{$R *.dfm}

procedure TFrmDict.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TFrmDict.FormCreate(Sender: TObject);
begin
  ATDict.Active := true;
end;

procedure TFrmDict.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

end.
