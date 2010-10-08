unit UntUpload;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ZipMstr19;

type
  TFrmUpload = class(TForm)
    LBFileList: TListBox;
    ProgressBar1: TProgressBar;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    od: TOpenDialog;
    Button4: TButton;
    sd: TSaveDialog;
    zip: TZipMaster19;
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUpload: TFrmUpload;

implementation

uses UntMain;

{$R *.dfm}

procedure TFrmUpload.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmUpload.Button4Click(Sender: TObject);
var i:Integer;
begin
  for i := 0 to LBFileList.Count - 1 do begin
    if LBFileList.Selected[i] then LBFileList.Items.Delete(i);
  end;
end;

procedure TFrmUpload.Button3Click(Sender: TObject);
begin
  if od.Execute then begin
    LBFileList.Items.AddStrings(od.Files);
  end;
end;

procedure TFrmUpload.Button1Click(Sender: TObject);
var i, j:Integer;
dbFile, tmpdir, opdir, saveFileName:String;
fileList:TStrings;
begin
  if LBFileList.Count > 0 then begin
    if sd.Execute then saveFileName := sd.FileName else abort;
    try
      //创建缓存目录
      tmpdir := ExtractFilePath(Application.ExeName)+'tmp\'+formatDateTime('yyyymmddhhmmss',now);
      CreateDirectory(PChar(tmpdir), nil);
      //初始化数据库
      dbFile := ExtractFilePath(Application.ExeName) + 'templet\empty\data.mdb';
      copyFile(PChar(dbFile), PChar(tmpdir + '\data.mdb'), false);
      //连接，更新空数据库
      FrmMain.conn(tmpdir + '\data.mdb');
      FrmMain.updateDB();
      ProgressBar1.Max := LBFileList.Count;
      for i:= 0 to LBFileList.Count -1 do begin
        opdir := tmpdir + '\' + IntToStr(i);
        CreateDirectory(PChar(opdir), nil);

        //解压数据
        try
          zip.ZipFileName := LBFileList.Items[i];
          zip.FSpecArgs.Add('*.*');
          zip.ExtrBaseDir := opdir;
          zip.ExtrOptions := zip.ExtrOptions+[ExtrOverwrite];
          zip.Extract;

          //解压数据
          //if FrmMain.WinExecExW(PChar('"'+ExtractFilePath(Application.ExeName)+'rar.exe" e "'+LBFileList.Items[i]+'" "' + opdir + '"'), PChar(opdir), 0) <> 0 then begin
          //插入到数据库
          fileList := getDirectoryFiles(opdir);
          for j:= 0 to fileList.Count - 1 do
            FrmMain.importFromXML(opdir + '\' + fileList[j]);
        except
          showmessage(LBFileList.Items[i] + '不是有效的数据包文件.');
        end;
        ProgressBar1.Position := i + 1;
        Application.ProcessMessages;
      end;
      //断开链接
      FrmMain.conn();
      //压缩数据库
      //if FrmMain.WinExecExW(PChar('"'+ExtractFilePath(Application.ExeName)+'rar.exe" a -ep "'+saveFileName+'" "'+tmpdir+'\data.mdb"'), PChar(tmpdir), 0) <> 0 then begin
      zip.ZipFileName := saveFileName;
      zip.FSpecArgs.Clear;
      zip.FSpecArgs.Add(tmpdir + '\data.mdb');
      zip.Add;

      //删除缓存目录
      DelDirectory(tmpdir);
      showmessage('导出成功!'+#13#10+'上传数据包已经导出至:'+#13#10+saveFileName);
      close;
      //end;
    except
      //恢复链接
      FrmMain.conn();
    end;
  end else begin
    showmessage('请添加邮件数据包')
  end;
end;


procedure TFrmUpload.FormShow(Sender: TObject);
begin
  LBFileList.Clear;
end;

end.
