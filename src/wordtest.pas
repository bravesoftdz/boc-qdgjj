unit wordtest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleServer, Word2000, StdCtrls, comobj;

type
  TWordControlFrm = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    closed:Boolean;
    Word,worddocument:Variant;
    procedure connect();
    procedure open(OpenFileName:String;WordVisible:Boolean=False);
    procedure replace(SourceString,TargetString:String);
    procedure saveAndClose();
    procedure Print();
    procedure PrintPreview();
  end;

var
  WordControlFrm: TWordControlFrm;

implementation

{$R *.dfm}
uses untmain;

procedure TWordControlFrm.connect;
begin
  try
    Word := CreateOleObject('Word.Application');

  except
    sysinfo('调用WORD错误，请检查是否已安装WORD');
    Abort;
  end;
  Word.visible := False;
end;

procedure TWordControlFrm.open(OpenFileName: String;WordVisible:Boolean=False);
var 

FileName, ConfirmConversions, ReadOnly, AddToRecentFiles,
PasswordDocument, PasswordTemplate, Revert,
WritePasswordDocument, WritePasswordTemplate, Format,Encoding,
Visible: OleVariant;
begin
  
  {Open document}
  FileName := OpenFileName;
  ConfirmConversions := False;
  ReadOnly := False;
  AddToRecentFiles := False;
  PasswordDocument := '';
  PasswordTemplate := '';
  Revert := True;
  WritePasswordDocument := '';
  WritePasswordTemplate := '';
  Format := wdOpenFormatAuto;
  Encoding := 50001;// msoEncodingAutoDetect
  Visible := true;

  //WordDocument := Word.Documents.Open(FileName);
  WordDocument :=  Word.Documents.Open( FileName, ConfirmConversions,
    ReadOnly, AddToRecentFiles, PasswordDocument, PasswordTemplate,
    Revert, WritePasswordDocument, WritePasswordTemplate, Format ,Encoding,Visible ); 

  Word.Visible := False;


  {Assign WordDocument component}
  //ItemIndex := 0;
  {Turn Spell checking of because it takes a long time if enabled and slows down Winword}
  Word.Options.CheckSpellingAsYouType := False;
  Word.Options.CheckGrammarAsYouType := False;
end;



procedure TWordControlFrm.replace(SourceString, TargetString: String);
var
  FindText, MatchCase, MatchWholeWord, MatchWildcards, MatchSoundsLike,
  MatchAllWordForms, Forward, Wrap, Format, ReplaceWith, Replace,
  MatchKashida, MatchDiacritics, MatchAlefHamza, MatchControl: OleVariant;
  find :Boolean;
begin
  FindText := SourceString;
  MatchCase := False;
  MatchWholeWord := True;
  MatchWildcards := False;
  MatchSoundsLike := False;
  MatchAllWordForms := False;
  Forward := True;
  Wrap := wdFindContinue;
  Format := False;

  {//通过剪切板替换,否则字符串过长进报错
  Memo1.Lines.Text := TargetString;
  Memo1.SelectAll;
  Memo1.CopyToClipboard;
  ReplaceWith := '^c';  }


  //ReplaceWith := TargetString;
  Replace := wdReplaceNone;
  MatchKashida := False;
  MatchDiacritics:= False;
  MatchAlefHamza:=False;
  MatchControl:=False;
  {
  in word 2000
  }
  //showmessage('begin replace');  //查找、替换
  if TargetString='' then TargetString :=' ';//否则无响应
  find := true;
  while find do begin
    try
      Word.Selection.Find.execute( FindText, MatchCase, MatchWholeWord,
        MatchWildcards, MatchSoundsLike, MatchAllWordForms, Forward,
        Wrap, Format, ReplaceWith, Replace,
        MatchKashida, MatchDiacritics, MatchAlefHamza, MatchControl );
      if Word.Selection.Find.found then
        Word.Selection.TypeText(TargetString);

      find := Word.Selection.Find.found;
    except
      find := false;
    end;
  end;
end;

procedure TWordControlFrm.saveAndClose;
var
  SaveChanges, OriginalFormat, RouteDocument: OleVariant;
begin
  SaveChanges := wdSaveChanges;
  OriginalFormat := wdWordDocument;
  RouteDocument := False;
  try
    Word.Quit(SaveChanges, OriginalFormat, RouteDocument);
    WordDocument := Unassigned;
    Word := Unassigned;

  except
    on E: Exception do
    begin
      Showmessage(E.Message);
      WordDocument := Unassigned;
      Word := Unassigned;

    end;
  end;
end;

procedure TWordControlFrm.Button1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
    self.connect;
    self.open(OpenDialog1.FileName);
    self.replace('<#中中中中中>','2004');
    self.saveAndClose;
  end;
end;

procedure TWordControlFrm.FormCreate(Sender: TObject);
begin
  closed := true;
end;

procedure TWordControlFrm.Print;
begin
  WordDocument.PrintOut();
end;

procedure TWordControlFrm.PrintPreview;
begin
  word.PrintPreview := true;
  word.visible := true;
end;

end.
