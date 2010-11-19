unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ShdocVw, StdCtrls, ExtCtrls, mshtml, Buttons, Registry;

type
  Tfrmplugin = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    EdtName: TEdit;
    Label2: TLabel;
    EdtShenFenZhengHao: TEdit;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    Edit1: TEdit;
    Button3: TButton;
    cbAuto: TCheckBox;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EdtNameClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

    { Private declarations }
    FIE:IWebBrowser;
    webpage, mainformname:String;
  public
    { Public declarations }
    procedure enter(IE: IWebBrowser);

    procedure clickButton(doc: IHtmlDocument2;name:String);
    procedure setObjValue(doc: IHtmlDocument2;name,value:String);
    procedure setRadioValue(doc: IHtmlDocument2;name,value:String);
    procedure setSelectValue(obj: Olevariant;value:String);
    procedure setInputValue(obj: Olevariant;value:String);
    procedure setCheckBoxValue(doc: IHtmlDocument2; name, value: String);
    function findObjFrame(doc: IHtmlDocument2; Objname: String): IDispatch;
    function findObj(doc: IHtmlDocument2; Objname: String): IDispatch;

    function getObjValue(doc: IHtmlDocument2; Objname: String):String;
    function getFrameDocument(doc: IHtmlDocument2;
      framename: string): IHTMLDocument2;
    
    //接收消息
    procedure Mymessage(var t:TWmCopyData);message WM_COPYDATA;
    procedure SendMsg(msg: string; frmcap: string='');
    function getPage():String;
  end;

var
  frmplugin: Tfrmplugin;

implementation

{$R *.dfm}


function Tfrmplugin.findObj(doc:IHtmlDocument2;  Objname: String): IDispatch;
var i:integer;
frameindex: Olevariant;
frame_dispatch: IDispatch;
frame_win: IHTMLWindow2;
frame_doc: IHTMLDocument2;

begin
  result := nil;

  if assigned(doc.all.item(Objname, 0)) then begin
    result := doc.all.item(Objname, 0);
    exit;
  end;
  for i:=0 to doc.frames.length-1 do begin
    frameindex := i;
    frame_dispatch := doc.frames.Item(frameindex);
    if frame_dispatch <> nil then
    begin
      frame_win := frame_dispatch as IHTMLWindow2;
      try
        frame_doc := frame_win.document;
      except
        //无法访问的
        continue;
      end;
      result := findObj(frame_doc, Objname);
      if assigned(result) then break;
    end;
  end;

end;


function Tfrmplugin.getFrameDocument(doc:IHtmlDocument2; framename: string): IHTMLDocument2;
var i:integer;
frameindex: Olevariant;
frame_dispatch: IDispatch;
frame_win: IHTMLWindow2;
excute:String;
idname :String;
begin
  try
    for i:=0 to doc.frames.length-1 do begin
      frameindex := i;
      excute := 'frame_dispatch := doc.frames.Item(frameindex);';
      frame_dispatch := doc.frames.Item(frameindex);
      excute := 'frame_win := frame_dispatch as IHTMLWindow2;';
      frame_win := frame_dispatch as IHTMLWindow2;
      excute := 'if frame_win.name=framename then';
      try
        frame_win.name
      except
        continue;
      end;
      if frame_win.name = framename then
      begin
        excute := 'frame_win.document.activeElement.tagName';
        if (pos('frame',trim(lowercase(frame_win.document.activeElement.tagName)))=0) then begin
          result := frame_win.document;
          break;
        end else begin
          excute := 'result := getFrameDocument(frame_win.document, frame_win.document.activeElement.id);';
          idname := frame_win.document.activeElement.id;
          if idname = '' then
            idname := frame_win.document.activeElement.getAttribute('name',0);
          result := getFrameDocument(frame_win.document, idname);
          break;
        end;
      end;
    end;
  except
    on e:Exception do begin
      showmessage('getFrameDocument('+framename+') exception:'+excute+'['+e.Message+']');
    end;
  end;
end;

procedure Tfrmplugin.enter(IE: IWebBrowser);
var areg:TRegistry;
begin
  aReg := TRegistry.Create;
  try
    aReg.RootKey := HKEY_LOCAL_MACHINE;
    if aReg.OpenKey('\Software\GJJ', True) then
    begin
      webpage := aReg.ReadString('webpage');
      mainformname := aReg.ReadString('mainformname');
      aReg.CloseKey;
    end;
  finally
    aReg.Free;
  end;
  self.FIE := IE;
  self.Top := FIE.Height div 2;
  self.Left := FIE.Width-self.Width-50;
end;


procedure Tfrmplugin.Timer1Timer(Sender: TObject);

begin
  if Assigned(FIE) then begin
    self.Top := FIE.Height div 2;
    self.Left := FIE.Width-self.Width-50;

    if cbAuto.Checked then
    if (pos(lowercase(webpage),lowercase(FIE.LocationURL))>0) and
      (FindWindow (nil, pChar(mainformname)) <> 0) then begin
      EdtName.Text := getObjValue(FIE.document as IHtmlDocument2, 'CCAS_CCTPERTRN.PERCUSNM');
      EdtShenFenZhengHao.Text := getObjValue(FIE.document as IHtmlDocument2, 'CCAS_CCTPERTRN.CBICERNO');
      if not self.Showing then show;
    end else begin
      self.Hide;
    end;
  end;
end;


procedure Tfrmplugin.setInputValue(obj: Olevariant; value: String);
begin
  obj.value := value;
end;

procedure Tfrmplugin.setSelectValue(obj: Olevariant; value: String);
var i:Integer;
begin
  for i:=0 to obj.length-1 do begin
    //根据disp值赋值
    if Lowercase(obj.item(i).text)=LowerCase(value) then begin
      obj.selectedindex := i;
      break;
    end;
  end;
end;

procedure Tfrmplugin.Mymessage(var t: TWmCopyData);
var msgs:TSTrings;
i:Integer;
name ,value:String;
begin
  msgs := TStringList.Create;
  msgs.Text :=trim(StrPas(t.CopyDataStruct^.lpData));
  if lowercase(copy(msgs.Text,1,3)) = 'msg' then begin
    showmessage(copy(msgs.Text,4,length(msgs.Text)));
  end else if lowercase(copy(msgs.Text,1,6)) = 'import' then begin
    for i:= 0 to msgs.Count-1 do begin
      name := copy(msgs[i],1,pos('=',msgs[i])-1);
      value := copy(msgs[i],pos('=',msgs[i])+1, length(msgs[i]));
      if name <>'' then begin
        if lowercase(value)='click' then begin
          clickbutton(FIE.document as IHTMLDocument2, name);
        end else begin
          setObjValue(FIE.document as IHTMLDocument2, name, value);
        end;
      end;
    end;
    showmessage('导入完毕，请在系统中回填客户流水号');
  end else if lowercase(copy(msgs.Text,1,6)) = 'import' then begin

  end;
end;

procedure Tfrmplugin.SendMsg(msg: string; frmcap: string='');
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
  if frmcap = '' then begin
    hd := FindWindow (nil, pChar(mainformname)); // 获得接受窗口的句柄
  end else begin
    //WinExec(pChar(ExtractFilePath(Application.ExeName)+'popmsg.exe'), SW_SHOWNORMAL{SW_MAXIMIZE});

    //hd := FindWindow(nil, pChar(frmcap));
  end;
  
  if hd=0 then begin
    showmessage('主程序还没有打开.');
    exit;   //没找到主程序
  end;

  ds.cbData := Length (msg) + 1;
  GetMem (ds.lpData, ds.cbData ); //为传递的数据区分配内存
  StrCopy (ds.lpData, PChar (msg));

  SendMessage (hd, WM_COPYDATA, self.Handle, Cardinal(@ds)); // 发送WM_COPYDATA消息
  FreeMem(ds.lpData); //释放资源
end;

procedure Tfrmplugin.setCheckBoxValue(doc: IHtmlDocument2;name,value:String);
var i:Integer;
odoc, o:Olevariant;
oname,ovalue :String;
begin
  odoc := doc;
  for i:=0 to odoc.all.length-1 do begin
    if (lowercase(odoc.all.item(i).tagName)='input')
      and (lowercase(odoc.all.item(i).type)='checkbox') then begin
      o := odoc.all.item(i);
      oname := o.id;
      if oname='' then oname := o.name;
      ovalue := o.value;
      if (Lowercase(oname)=LowerCase(name)) and (Lowercase(ovalue)=LowerCase(value)) then begin
        o.checked := true;
        break;
      end;
    end;
  end;
end;

procedure Tfrmplugin.setRadioValue(doc: IHtmlDocument2;name,value:String);
var i:Integer;
odoc, o:Olevariant;
oname,ovalue :String;
begin
  odoc := doc;
  for i:=0 to odoc.all.length-1 do begin
    if (lowercase(odoc.all.item(i).tagName)='input')
      and (lowercase(odoc.all.item(i).type)='radio') then begin
      o := odoc.all.item(i);
      oname := o.id;
      if oname='' then oname := o.name;
      ovalue := o.value;
      if (Lowercase(oname)=LowerCase(name)) and (Lowercase(ovalue)=LowerCase(value)) then begin
        o.checked := true;
        break;
      end;
    end;
  end;
end;

function Tfrmplugin.findObjFrame(doc: IHtmlDocument2;
  Objname: String): IDispatch;
var i:integer;
frameindex: Olevariant;
frame_dispatch: IDispatch;
frame_win: IHTMLWindow2;
frame_doc: IHTMLDocument2;

begin
  result := nil;

  if assigned(doc.all.item(Objname, 0)) then begin
    result := doc;
    exit;
  end;
  for i:=0 to doc.frames.length-1 do begin
    frameindex := i;
    frame_dispatch := doc.frames.Item(frameindex);
    if frame_dispatch <> nil then
    begin
      try
        frame_win := frame_dispatch as IHTMLWindow2;
        frame_doc := frame_win.document;
      except
        //无法访问
        continue;
      end;
      result := findObjFrame(frame_doc, Objname);
      if assigned(result) then break;
    end;
  end;
end;

function Tfrmplugin.getObjValue(doc: IHtmlDocument2;
  Objname: String): String;
var
  ip:IDispatch;
  element :IHTMLElement;
  o, odoc:Variant;
  i:Integer;
  oname :String;
begin
  try
    ip := findObj(doc, Objname);
    if assigned(ip) then begin
      element := ip as IHTMLElement;
      if Uppercase(element.tagName)='SELECT' then begin
        //select
        result := (element as IHTMLSelectElement).value;
      end else if Uppercase(element.tagName)='INPUT' then begin
        if (Uppercase((element as IHTMLInputElement).type_) = 'RADIO') or
          (Uppercase((element as IHTMLInputElement).type_) = 'CHECKBOX') then begin
          // radio checkbox
          oname := element.id;
          if oname = '' then begin
            oname := element.getAttribute('name',0);
          end;
          //frame
          odoc := findObjFrame(doc, objname);

          for i:=0 to odoc.all.length-1 do begin
            if (lowercase(odoc.all.item(i).tagName)='input')
              and ((lowercase(odoc.all.item(i).type)='radio')
              or (lowercase(odoc.all.item(i).type)='checkbox')) then begin

              o := odoc.all.item(i);
              if (Lowercase(o.id)=LowerCase(oname)) or (Lowercase(o.name)=LowerCase(oname))  then begin
                if o.checked then begin
                  if result <> '' then result := result+',';
                  result := result + o.value;
                end;
              end;
            end;
          end;
        end else begin
          //input text
          result := (element as IHTMLInputElement).value
        end;
      end
    end;
  except
  end;
end;

procedure Tfrmplugin.setObjValue(doc: IHtmlDocument2; name, value: String);
var
 o: Olevariant;
 i:Integer;
begin
  try
    if name <> '' then begin
      o := findObj(doc, name);
      doc := findObjFrame(doc, name) as IHtmlDocument2;

      if Uppercase(o.tagName)='SELECT' then begin
        //select
        setSelectValue(o, value);
      end else if Uppercase(o.tagName)='INPUT' then begin
        //input
        if Uppercase(o.type)='RADIO' then begin
          //radio
          setRadioValue(doc,name, value);
        end else if Uppercase(o.type)='CHECKBOX' then begin
          //checkbox
          setCheckBoxValue(doc, name, value);
        end else begin
          //
          setInputValue(o, value);
        end;

      end else begin
        //other :text
        setInputValue(o, value);
      end;
    end;
  except
  end;
end;

procedure Tfrmplugin.Button1Click(Sender: TObject);
begin
  sendmsg('find:'+EdtName.Text+','+EdtShenFenZhengHao.Text);
end;

procedure Tfrmplugin.Edit1Click(Sender: TObject);
var hdoc:IHtmlDocument2 ;
begin
  try
    hdoc := FIE.document as IHtmlDocument2;
    Edit1.Text := hdoc.activeElement.tagName;
    while pos('frame',trim(lowercase(hdoc.activeElement.tagName)))>0 do begin
      hdoc := getFrameDocument(hdoc, hdoc.activeElement.getAttribute('name', 0));
    end;
    Edit1.Text := hdoc.activeElement.getAttribute('name',0);
    {
    Edit1.Text := hdoc.activeElement.id;
    if Edit1.Text ='' then
      Edit1.Text := hdoc.activeElement.getAttribute('name',0);
    }
  except
    on E:Exception do begin
      showmessage(e.Message);
    end;
  end;
end;

procedure Tfrmplugin.clickButton(doc: IHtmlDocument2; name: String);
var
 o: Olevariant;

begin
  try
    if name <> '' then begin
      o := findObj(doc, name);
      o.click;
    end;
  except
  end;
end;

function Tfrmplugin.getPage: String;
begin

end;

procedure Tfrmplugin.Button2Click(Sender: TObject);
begin
  sendmsg('importfind:'+EdtName.Text+','+EdtShenFenZhengHao.Text);
end;

procedure Tfrmplugin.EdtNameClick(Sender: TObject);
begin
  if EdtName.Text = '' then begin
    Timer1Timer(self);
  end;
end;

procedure Tfrmplugin.Button3Click(Sender: TObject);
begin
  sendmsg('findpeiou:'+EdtName.Text+','+EdtShenFenZhengHao.Text);
end;

end.
