unit UntQiTaZhengXin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls;

type
  TFrmQiTaZhengXin = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure openandlocate(id:String);
  end;

var
  FrmQiTaZhengXin: TFrmQiTaZhengXin;

implementation

uses UntMain;

{$R *.dfm}

{ TFrmQiTaZhengXin }

procedure TFrmQiTaZhengXin.openandlocate(id: String);
begin
  FrmQiTaZhengXin.ShowModal;  
end;

procedure TFrmQiTaZhengXin.Button1Click(Sender: TObject);
begin
  close;
end;

end.
