unit UntEmailData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, ADODB, ZipMstr19, untUtil;

type
  TFrmEmailData = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    sd: TSaveDialog;
    ProgressBar1: TProgressBar;
    Button2: TButton;
    AQExport: TADOQuery;
    Label6: TLabel;
    zip: TZipMaster19;
    cb: TCheckBox;
    dtpDate: TDateTimePicker;
    dtpTime: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEmailData: TFrmEmailData;

implementation

uses UntMain, untEdt;

{$R *.dfm}

procedure TFrmEmailData.FormShow(Sender: TObject);
begin
  //��ʾ�ϴε���ʱ��
  opensql('select lastExportTime from t_ver', FrmMain.AQOpen);
  if not (FrmMain.AQOpen.Bof and FrmMain.AQOpen.Eof) then begin
    if FrmMain.AQOpen.FieldByName('lastExportTime').AsString <> '' then begin
      Label4.Caption := FrmMain.AQOpen.FieldByName('lastExportTime').AsString;
      Label3.Caption := FrmMain.AQOpen.FieldByName('lastExportTime').AsString;
    end;
  end;
  ProgressBar1.Position := 0;
end;

procedure TFrmEmailData.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmEmailData.Button1Click(Sender: TObject);
var tmpdir, filename, dataFile:String;
begin
  if sd.Execute then begin
    filename := sd.FileName ;
  end else abort;

  Button1.Enabled := false;

  //���������ļ���
  tmpdir := ExtractFilePath(Application.ExeName)+'tmp\'+formatDateTime('yyyymmddhhmmss',now);
  CreateDirectory(PChar(tmpdir), nil);


  //���
  zip.ZipFileName := filename;
  zip.FSpecArgs.Clear;

  //��ȡ������¼
  if cb.Checked then
    opensql('select id from t_main where lastUpdateTime > ''' + formatDateTime('yyyy-mm-dd', dtpDate.DateTime)+' '+formatDateTime('hh:mm:ss', dtpTime.DateTime)+'''', AQExport)
  else
    opensql('select id from t_main where lastUpdateTime > (select lastExportTime from t_ver) ', AQExport);
    
  ProgressBar1.Max := AQExport.RecordCount;
  if not (AQExport.Eof and AQExport.Bof) then begin
    AQExport.First;
    while not AQExport.Eof do begin
      FrmEdt := TFrmEdt.Create(self);
      FrmEdt.edit(AQExport.FieldByName('id').AsString, false);
      dataFile := FrmEdt.exportToXML(tmpdir);
      if dataFile <> '' then zip.FSpecArgs.Add(dataFile);
      FrmEdt.Free;
      ProgressBar1.Position := ProgressBar1.Position + 1;
      Application.ProcessMessages;
      AQExport.Next;
    end;
  end;


  //���
  zip.Add;

  //if FrmMain.WinExecExW(PChar('"'+ExtractFilePath(Application.ExeName)+'rar.exe" a -ep "'+filename+'" "'+tmpdir+'"'), PChar(tmpdir), 0) <> 0 then begin

  //���µ���ʱ��
  execsql('update t_ver set lastExportTime = '''+formatDateTime('yyyy-mm-dd hh:mm:ss',now)+'''');
  //ɾ������Ŀ¼
  DelDirectory(tmpdir);

  showmessage('�����ɹ�!'+#13#10+'Email���ݰ��Ѿ�������:'+#13#10+filename);
  //end else begin
  //  showmessage('����ʧ�ܣ�����ѹ��������');
  //end;
  Button1.Enabled := true;

  close;
end;

procedure TFrmEmailData.FormCreate(Sender: TObject);
begin
  dtpDate.Date := now;
end;

end.
