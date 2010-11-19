unit untEdt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, StdCtrls, Mask, DBCtrls, ExtCtrls, Menus,
  Grids, DBGrids, scExcelExport, DBCtrlsEh, math, dateUtils,
  xmldom, XMLIntf, msxmldom, XMLDoc;

type
  TFrmEdt = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    ATJieKuanRen: TADOTable;
    Label1: TLabel;
    DataSource1: TDataSource;
    ATMain: TADOTable;
    DataSource2: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBComboBox2: TDBComboBox;
    Label7: TLabel;
    DBComboBox3: TDBComboBox;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBComboBox4: TDBComboBox;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    DBEdit16: TDBEdit;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBComboBox12: TDBComboBox;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    Panel1: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    ATFangWu: TADOTable;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    ATDaiKuan: TADOTable;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBComboBox7: TDBComboBox;
    DBComboBox8: TDBComboBox;
    DBComboBox14: TDBComboBox;
    DBComboBox15: TDBComboBox;
    DBComboBox17: TDBComboBox;
    DBComboBox18: TDBComboBox;
    DBComboBox19: TDBComboBox;
    DBComboBox20: TDBComboBox;
    DBEdit50: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit56: TDBEdit;
    Label67: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label103: TLabel;
    DBEdit59: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    BtnPrint: TButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    DBComboBox16: TDBComboBox;
    PMOtherPrint: TPopupMenu;
    N11: TMenuItem;
    N12: TMenuItem;
    ADOQuery1: TADOQuery;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    DBComboBox22: TDBComboBox;
    Label101: TLabel;
    Label102: TLabel;
    DBComboBox23: TDBComboBox;
    DBComboBox24: TDBComboBox;
    DBComboBox25: TDBComboBox;
    DBComboBox26: TDBComboBox;
    Label104: TLabel;
    DBEdit19: TDBEdit;
    Label56: TLabel;
    Label105: TLabel;
    DBEdit41: TDBEdit;
    DBComboBox9: TDBComboBox;
    DBComboBox28: TDBComboBox;
    DBComboBox29: TDBComboBox;
    DBComboBox30: TDBComboBox;
    DBComboBox31: TDBComboBox;
    DBComboBox32: TDBComboBox;
    Label106: TLabel;
    DBComboBox33: TDBComboBox;
    N1: TMenuItem;
    N2: TMenuItem;
    DBComboBox34: TDBComboBox;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N13: TMenuItem;
    N21: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Label108: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    DBComboBox35: TDBComboBox;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    DBEdit9: TDBEdit;
    Label125: TLabel;
    DBEdit20: TDBEdit;
    DBComboBox36: TDBComboBox;
    DBComboBox37: TDBComboBox;
    Label71: TLabel;
    Label127: TLabel;
    DBComboBox39: TDBComboBox;
    DBComboBox40: TDBComboBox;
    TabSheet4: TTabSheet;
    DBMemo3: TDBMemo;
    Button3: TButton;
    DBEdit10: TDBEdit;
    N10: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    cb: TCheckBox;
    N17: TMenuItem;
    Label128: TLabel;
    DBEdit42: TDBEdit;
    Label129: TLabel;
    DBComboBox27: TDBComboBox;
    N18: TMenuItem;
    Label130: TLabel;
    DBEdit46: TDBEdit;
    Label131: TLabel;
    DBEdit47: TDBEdit;
    Label135: TLabel;
    DBEdit51: TDBEdit;
    Label136: TLabel;
    Label137: TLabel;
    DBEdit52: TDBEdit;
    DataSource5: TDataSource;
    Button4: TButton;
    PMOtherExport: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    scEE: TscExcelExport;
    sd: TSaveDialog;
    sddoc: TSaveDialog;
    DBComboBox43: TDBComboBox;
    DBComboBox44: TDBComboBox;
    Label47: TLabel;
    Label126: TLabel;
    DBEdit14: TDBEdit;
    Label142: TLabel;
    DBEdit37: TDBEdit;
    Label140: TLabel;
    Label141: TLabel;
    DBEdit54: TDBEdit;
    Label143: TLabel;
    Label144: TLabel;
    DBComboBox45: TDBComboBox;
    DBComboBox46: TDBComboBox;
    N19: TMenuItem;
    Label145: TLabel;
    DBComboBox47: TDBComboBox;
    N20: TMenuItem;
    N22: TMenuItem;
    Label146: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    N23: TMenuItem;
    N24: TMenuItem;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label147: TLabel;
    DBEdit49: TDBEdit;
    N25: TMenuItem;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Button5: TButton;
    DBMemo4: TDBMemo;
    Button6: TButton;
    DBMemo5: TDBMemo;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    Label148: TLabel;
    DBEdit55: TDBEdit;
    Label138: TLabel;
    Label139: TLabel;
    DBComboBox41: TDBComboBox;
    DBComboBox42: TDBComboBox;
    Label88: TLabel;
    DBComboBox38: TDBComboBox;
    Bevel7: TBevel;
    Label149: TLabel;
    GroupBox1: TGroupBox;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    DBEdit57: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit74: TDBEdit;
    Label157: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    N29: TMenuItem;
    N30: TMenuItem;
    Label161: TLabel;
    Label162: TLabel;
    N31: TMenuItem;
    Bevel8: TBevel;
    Label132: TLabel;
    N32: TMenuItem;
    Label133: TLabel;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    Label134: TLabel;
    DBComboBox48: TDBComboBox;
    Label163: TLabel;
    dbdtprq: TDBDateTimeEditEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    Label164: TLabel;
    DBComboBox49: TDBComboBox;
    DBComboBox50: TDBComboBox;
    Label107: TLabel;
    DBComboBox51: TDBComboBox;
    DBComboBox52: TDBComboBox;
    Label165: TLabel;
    Label9: TLabel;
    DBComboBox53: TDBComboBox;
    Label166: TLabel;
    DBComboBox54: TDBComboBox;
    Label167: TLabel;
    DBComboBox55: TDBComboBox;
    Label168: TLabel;
    DBComboBox56: TDBComboBox;
    TabSheet7: TTabSheet;
    Label24: TLabel;
    DBComboBox11: TDBComboBox;
    Label23: TLabel;
    DBComboBox10: TDBComboBox;
    Label37: TLabel;
    DBComboBox21: TDBComboBox;
    Label48: TLabel;
    DBComboBox13: TDBComboBox;
    Label169: TLabel;
    DBComboBox57: TDBComboBox;
    Label170: TLabel;
    DBComboBox58: TDBComboBox;
    Label171: TLabel;
    Label172: TLabel;
    DBComboBox59: TDBComboBox;
    DBComboBox60: TDBComboBox;
    Label173: TLabel;
    DBComboBox61: TDBComboBox;
    Label174: TLabel;
    DBComboBox62: TDBComboBox;
    ATZhengXin: TADOTable;
    DSZhengXin: TDataSource;
    Label175: TLabel;
    DBComboBox63: TDBComboBox;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    DBComboBox64: TDBComboBox;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    Label109: TLabel;
    DBComboBox65: TDBComboBox;
    Label176: TLabel;
    DBComboBox66: TDBComboBox;
    Label177: TLabel;
    DBComboBox67: TDBComboBox;
    Label178: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    Label179: TLabel;
    DBEdit6: TDBEdit;
    Label180: TLabel;
    DBEdit15: TDBEdit;
    Label181: TLabel;
    Bevel9: TBevel;
    Label182: TLabel;
    DBEdit23: TDBEdit;
    DBEdit28: TDBEdit;
    Label183: TLabel;
    DBEdit85: TDBEdit;
    Label184: TLabel;
    DBEdit86: TDBEdit;
    Label185: TLabel;
    Label186: TLabel;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    Label187: TLabel;
    DBEdit89: TDBEdit;
    Label188: TLabel;
    DBEdit90: TDBEdit;
    Label189: TLabel;
    Bevel10: TBevel;
    Label190: TLabel;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    Label191: TLabel;
    DBEdit93: TDBEdit;
    Label192: TLabel;
    DBEdit94: TDBEdit;
    Label193: TLabel;
    Label194: TLabel;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    Label195: TLabel;
    Label196: TLabel;
    Label197: TLabel;
    Label198: TLabel;
    Label199: TLabel;
    Label200: TLabel;
    Label201: TLabel;
    Label202: TLabel;
    Label203: TLabel;
    Label204: TLabel;
    Label205: TLabel;
    Label206: TLabel;
    Label207: TLabel;
    Label208: TLabel;
    DBComboBox68: TDBComboBox;
    Label209: TLabel;
    DBComboBox69: TDBComboBox;
    dtpjiekuanshijian: TDBDateTimeEditEh;
    DSLianMingKeHu: TDataSource;
    ATLianMingKeHu: TADOTable;
    Label210: TLabel;
    DBGrid1: TDBGrid;
    Button7: TButton;
    Button8: TButton;
    Label211: TLabel;
    DBComboBox70: TDBComboBox;
    DBEdit58: TDBEdit;
    Label212: TLabel;
    Label213: TLabel;
    DBEdit98: TDBEdit;
    Label214: TLabel;
    Label215: TLabel;
    DBEdit100: TDBEdit;
    Label216: TLabel;
    DBEdit101: TDBEdit;
    Label217: TLabel;
    Label218: TLabel;
    DBEdit103: TDBEdit;
    Label219: TLabel;
    DBEdit104: TDBEdit;
    Label220: TLabel;
    DBEdit105: TDBEdit;
    Label221: TLabel;
    DBEdit106: TDBEdit;
    Label223: TLabel;
    DBEdit108: TDBEdit;
    Label224: TLabel;
    DBEdit109: TDBEdit;
    Label225: TLabel;
    DBComboBox71: TDBComboBox;
    DBComboBox72: TDBComboBox;
    Label226: TLabel;
    DBEdit97: TDBEdit;
    DBComboBox73: TDBComboBox;
    DBComboBox74: TDBComboBox;
    Label227: TLabel;
    ATLianMingKeHuDSDesigner: TAutoIncField;
    ATLianMingKeHumainid: TIntegerField;
    ATLianMingKeHuDSDesigner2: TWideStringField;
    ATLianMingKeHuDSDesigner3: TWideStringField;
    ATLianMingKeHuDSDesigner4: TWideStringField;
    ATLianMingKeHuDSDesigner5: TWideStringField;
    ATLianMingKeHuDSDesigner6: TWideStringField;
    ATLianMingKeHuDSDesigner7: TWideStringField;
    ATLianMingKeHuDSDesigner8: TWideStringField;
    ATLianMingKeHuDSDesigner9: TWideStringField;
    ATLianMingKeHuDSDesigner10: TWideStringField;
    ATLianMingKeHuDSDesigner11: TWideStringField;
    ATLianMingKeHuDSDesigner12: TWideStringField;
    ATLianMingKeHuDSDesigner13: TWideStringField;
    ATLianMingKeHuDSDesigner14: TWideStringField;
    ATLianMingKeHuDSDesigner15: TWideStringField;
    ATLianMingKeHuDSDesigner16: TWideStringField;
    DSDiYaWu: TDataSource;
    ATDiYaWu: TADOTable;
    Label222: TLabel;
    DBGrid2: TDBGrid;
    Button9: TButton;
    Button10: TButton;
    DBEdit99: TDBEdit;
    Label228: TLabel;
    Label229: TLabel;
    DBEdit102: TDBEdit;
    Label230: TLabel;
    Label231: TLabel;
    DBEdit107: TDBEdit;
    Label232: TLabel;
    DBEdit110: TDBEdit;
    Label233: TLabel;
    Label235: TLabel;
    DBEdit112: TDBEdit;
    Label238: TLabel;
    DBEdit115: TDBEdit;
    DBEdit116: TDBEdit;
    DBComboBox76: TDBComboBox;
    Label241: TLabel;
    DBEdit117: TDBEdit;
    DBComboBox77: TDBComboBox;
    DBComboBox78: TDBComboBox;
    Label240: TLabel;
    Label242: TLabel;
    DBEdit111: TDBEdit;
    ATDiYaWuDSDesigner: TAutoIncField;
    ATDiYaWumainid: TIntegerField;
    ATDiYaWuDSDesigner2: TWideStringField;
    ATDiYaWuDSDesigner3: TWideStringField;
    ATDiYaWuDSDesigner4: TWideStringField;
    ATDiYaWuDSDesigner5: TWideStringField;
    ATDiYaWuDSDesigner6: TWideStringField;
    ATDiYaWuDSDesigner7: TWideStringField;
    ATDiYaWuDSDesigner8: TWideStringField;
    ATDiYaWuDSDesigner1: TWideStringField;
    ATDiYaWuDSDesigner22: TWideStringField;
    ATDiYaWuDSDesigner12: TWideStringField;
    ATDiYaWuDSDesigner23: TWideStringField;
    ATDiYaWuDSDesigner9: TWideStringField;
    dtpshoufangrenshengri: TDBDateTimeEditEh;
    DBDateTimeEditEh4: TDBDateTimeEditEh;
    DBDateTimeEditEh5: TDBDateTimeEditEh;
    DBDateTimeEditEh6: TDBDateTimeEditEh;
    DBEdit82: TDBEdit;
    Button11: TButton;
    N33: TMenuItem;
    Label234: TLabel;
    Label236: TLabel;
    Label237: TLabel;
    N34: TMenuItem;
    N35: TMenuItem;
    DBEdit48: TDBEdit;
    DBEdit79: TDBEdit;
    DBComboBox75: TDBComboBox;
    Label239: TLabel;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    Label243: TLabel;
    DBComboBox79: TDBComboBox;
    DBEdit76: TDBEdit;
    Label244: TLabel;
    DBEdit80: TDBEdit;
    Label245: TLabel;
    DBComboBox80: TDBComboBox;
    Label246: TLabel;
    DBEdit81: TDBEdit;
    Label247: TLabel;
    Label248: TLabel;
    DBComboBox81: TDBComboBox;
    N36: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    Label249: TLabel;
    DBComboBox82: TDBComboBox;
    PMRZBPrint: TPopupMenu;
    N61: TMenuItem;
    PMRZBExport: TPopupMenu;
    N62: TMenuItem;
    N63: TMenuItem;
    N3Click1: TMenuItem;
    N64: TMenuItem;
    N65: TMenuItem;
    N66: TMenuItem;
    N67: TMenuItem;
    N68: TMenuItem;
    N69: TMenuItem;
    N70: TMenuItem;
    N71: TMenuItem;
    N72: TMenuItem;
    N73: TMenuItem;
    N74: TMenuItem;
    N75: TMenuItem;
    N76: TMenuItem;
    N77: TMenuItem;
    N78: TMenuItem;
    N79: TMenuItem;
    N80: TMenuItem;
    N81: TMenuItem;
    N82: TMenuItem;
    N83: TMenuItem;
    N84: TMenuItem;
    N85: TMenuItem;
    Label250: TLabel;
    DBEdit113: TDBEdit;
    N86: TMenuItem;
    N87: TMenuItem;
    N88: TMenuItem;
    N89: TMenuItem;
    N90: TMenuItem;
    ff1: TMenuItem;
    N91: TMenuItem;
    N92: TMenuItem;
    N93: TMenuItem;
    N94: TMenuItem;
    N95: TMenuItem;
    N96: TMenuItem;
    N97: TMenuItem;
    N98: TMenuItem;
    N99: TMenuItem;
    N100: TMenuItem;
    N101: TMenuItem;
    N102: TMenuItem;
    N103: TMenuItem;
    N104: TMenuItem;
    N105: TMenuItem;
    N103Click1: TMenuItem;
    N106: TMenuItem;
    N107: TMenuItem;
    N108: TMenuItem;
    N109: TMenuItem;
    N110: TMenuItem;
    N111: TMenuItem;
    doc1: TMenuItem;
    N112: TMenuItem;
    N113: TMenuItem;
    N114: TMenuItem;
    N115: TMenuItem;
    N117: TMenuItem;
    Button12: TButton;
    AQExport: TADOQuery;
    N116: TMenuItem;
    N118: TMenuItem;
    N119: TMenuItem;
    N120: TMenuItem;
    DBEdit114: TDBEdit;
    Label251: TLabel;
    DBEdit118: TDBEdit;
    Label252: TLabel;
    Label253: TLabel;
    DBEdit119: TDBEdit;
    Label254: TLabel;
    DBEdit120: TDBEdit;
    N121: TMenuItem;
    N122: TMenuItem;
    N123: TMenuItem;
    N124: TMenuItem;
    N125: TMenuItem;
    N126: TMenuItem;
    Bevel11: TBevel;
    Label255: TLabel;
    DBComboBox83: TDBComboBox;
    Label256: TLabel;
    DBComboBox84: TDBComboBox;
    DBComboBox85: TDBComboBox;
    DBComboBox86: TDBComboBox;
    DBComboBox87: TDBComboBox;
    Label257: TLabel;
    Label258: TLabel;
    Label259: TLabel;
    DBComboBox88: TDBComboBox;
    Label260: TLabel;
    Label261: TLabel;
    Label262: TLabel;
    DBComboBox89: TDBComboBox;
    Label263: TLabel;
    DBComboBox90: TDBComboBox;
    Label264: TLabel;
    DBComboBox91: TDBComboBox;
    N127: TMenuItem;
    N128: TMenuItem;
    N129: TMenuItem;
    N130: TMenuItem;
    DBDateTimeEditEh7: TDBDateTimeEditEh;
    Label265: TLabel;
    DBDateTimeEditEh8: TDBDateTimeEditEh;
    Label266: TLabel;
    DBComboBox92: TDBComboBox;
    Label267: TLabel;
    Label268: TLabel;
    DBEdit121: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit27Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure DBEdit50Exit(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure DBEdit59Exit(Sender: TObject);
    procedure DBEdit64Exit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit75Exit(Sender: TObject);
    procedure DBEdit77Exit(Sender: TObject);
    procedure DBEdit20Enter(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure DBEdit44Exit(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MenuItem1Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure DBComboBox30Change(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure DBComboBox31Exit(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure DBEdit73Exit(Sender: TObject);
    procedure DBEdit41Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure N45Click(Sender: TObject);
    procedure N53Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N47Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N50Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure N55Click(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure N54Click(Sender: TObject);
    procedure N59Click(Sender: TObject);
    procedure N60Click(Sender: TObject);
    procedure N57Click(Sender: TObject);
    procedure N58Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure N72Click(Sender: TObject);
    procedure N73Click(Sender: TObject);
    procedure N74Click(Sender: TObject);
    procedure N75Click(Sender: TObject);
    procedure N76Click(Sender: TObject);
    procedure N77Click(Sender: TObject);
    procedure N78Click(Sender: TObject);
    procedure N79Click(Sender: TObject);
    procedure N81Click(Sender: TObject);
    procedure N82Click(Sender: TObject);
    procedure N83Click(Sender: TObject);
    procedure N84Click(Sender: TObject);
    procedure N85Click(Sender: TObject);
    procedure N86Click(Sender: TObject);
    procedure N87Click(Sender: TObject);
    procedure N88Click(Sender: TObject);
    procedure N89Click(Sender: TObject);
    procedure N90Click(Sender: TObject);
    procedure ff1Click(Sender: TObject);
    procedure N95Click(Sender: TObject);
    procedure N96Click(Sender: TObject);
    procedure N99Click(Sender: TObject);
    procedure N100Click(Sender: TObject);
    procedure DBComboBox41Change(Sender: TObject);
    procedure N103Click(Sender: TObject);
    procedure N104Click(Sender: TObject);
    procedure N106Click(Sender: TObject);
    procedure N107Click(Sender: TObject);
    procedure N111Click(Sender: TObject);
    procedure doc1Click(Sender: TObject);
    procedure N114Click(Sender: TObject);
    procedure N115Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure N116Click(Sender: TObject);
    procedure N118Click(Sender: TObject);
    procedure N119Click(Sender: TObject);
    procedure N120Click(Sender: TObject);
    procedure N121Click(Sender: TObject);
    procedure N122Click(Sender: TObject);
    procedure N123Click(Sender: TObject);
    procedure N124Click(Sender: TObject);
    procedure N125Click(Sender: TObject);
    procedure N126Click(Sender: TObject);
    procedure DBComboBox82Change(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N71Click(Sender: TObject);
    procedure N3Click1Click(Sender: TObject);
    procedure N94Click(Sender: TObject);
    procedure N65Click(Sender: TObject);
    procedure N127Click(Sender: TObject);
    procedure N129Click(Sender: TObject);
    procedure N130Click(Sender: TObject);
    procedure N128Click(Sender: TObject);
  private
    function getExcelFileTmp(filename, tmpfilename: String): String;
    function getDocFileTmp(filename, tmpfilename: String): String;
    procedure exportyijianbiao1;
    procedure exportyijianbiao2;
    procedure exportshouxinshenqingbiao;
    procedure exportdaikuanshenpibiao(print, PrintPreview: boolean);


    { Private declarations }
  public
    { Public declarations }
    mainid:String;
    procedure edit(mainid:String;isshow:Boolean=true);
    procedure new(jiekuanleixing:Integer);
    procedure viewall(id:String);
    procedure viewallforPrint(id:String);
    procedure exportshenpixinxi;
    procedure exportshenpixinxi1;
    procedure exportshenpixinxi2;
    procedure exportyijianbiao(print:Boolean=false; PrintPreview:boolean=false);
    procedure exportwenjian;
    procedure exportqiepin;
    procedure exporthunyin;
    procedure exportdiyahetong(print:Boolean=false; PrintPreview:boolean=false);
    procedure exportdiyachengnuohan(print:Boolean=false; PrintPreview:boolean=false);
    procedure exportdiyashouquanshu(print:Boolean=false; PrintPreview:boolean=false);
    procedure exportdiyaeduxieyi(print:Boolean=false; PrintPreview:boolean=false);
    procedure exportdiyadiyahetong(print:Boolean=false; PrintPreview:boolean=false);
    procedure exportdiyadiyawiqingkuang(print:Boolean=false; PrintPreview:boolean=false);
    procedure exportdiyaedushenqing(print:Boolean=false; PrintPreview:boolean=false);
    procedure exportdiyayongkuanshepi(print:Boolean=false; PrintPreview:boolean=false);

    procedure exportkaifaqu(print:Boolean=false; PrintPreview:boolean=false);
    procedure exportjiaonan1(print:Boolean=false; PrintPreview:boolean=false);
    procedure exportjiaonan2(print:Boolean=false; PrintPreview:boolean=false);

    procedure exportchengnuohan(print:Boolean=false; PrintPreview:boolean=false);
    procedure exportshouquanweituoshu(print, PrintPreview: boolean);
    procedure exportshenpibiao(print, PrintPreview: boolean);
    procedure exportzijinhuazhang(print, PrintPreview: boolean);
    procedure exportshenqingbiao(print, PrintPreview: boolean);
    procedure exportedutaizhang;
    procedure exporteduxieyi(print, PrintPreview: boolean);
    procedure exportzuigaoediyahetong(print, PrintPreview: boolean);
    procedure exportdaikuanjiekuanhetong(print, PrintPreview: boolean);
    procedure exportedubaogao(print, PrintPreview: boolean);
    procedure exportwudaikuanshengming(print, PrintPreview: boolean);
    procedure exportdaikuanchengnuohan(print, PrintPreview: boolean);
    procedure exportshoufukuanshoudaotiao(print, PrintPreview: boolean);
    procedure exportdengjishenqingshu(print, PrintPreview: boolean);
    procedure exportzhufangmaimaihetong(print, PrintPreview: boolean);
    procedure exportzhiyahetong(print, PrintPreview: boolean);
    procedure exportbaozhenghetong(print, PrintPreview: boolean);
    procedure exportjiekuandiyahetong(print, PrintPreview: boolean);
    procedure exportpinggubaogao(print, PrintPreview: boolean);
    procedure exportpinggubaogao2(print, PrintPreview: boolean);

    function getJinZhiZhuFang:String;
    function getJinZhiDiYa:String;
    function getAnJieBaoGao:String;
    function getEDuBaoGao:String;

    procedure exportchuzhixieyishu(print, PrintPreview: boolean);
    procedure exportbuchongxieyi(print, PrintPreview: boolean);
    procedure exportgongtongzhaiwurenchengnuohan(print, PrintPreview: boolean);
    procedure exportgerenxingyongchaxun(print, PrintPreview: boolean);

    procedure exportchengnuonew(print, PrintPreview: boolean);

    function exportToXML(path: String):String;
    function getDataFromTable(table:TADOTable):String;
    function getDataFromMain(table:TADOTable):String;
  end;
  function divStr(Tmpstr: string; tmpInt: integer; ReturnChar:Char=' '): TstringList;
  function Changdx2(mmje: Double): String;

var
  FrmEdt: TFrmEdt;
  dayinshijian:String;
  
implementation

uses UntMain, UntShenPiXinXi1, UntFangWuChuZhiXieYiShu, UntShenPiXinXi2,
  UntGongTongZhaiWuRenChengNuoShu, UntZaiJiaoYiBuChengXieYi,
  UntFangWuChuShouZhengMing, UntGeRenShouXinYeWuShenQingBiao,
  UntWenJianYiJiaoQingDan, UntFangDiChanDengJiShenQingShu, UntYiJianBiao,
  UntHunYin, UntBuChengXieYi, UntJieKuanDiYaHeTong, UntDaiKuanShenQingShu1,
  UntDaiKuanShenQingShu2, untChaXunshouQuanShu, untHunYin2, wordtest,
  UntDaiKuanChengNuoHan, UntJuJieShu, UntDaiKuanShenPiBiao,
  UntWenJianYiJiaoQingDan_DB, untYaPinQieZhengZiLiaoShouJu, UntJieKuanJieJu,
  UntLanCunZhengMing, UntShouQuanWeiTuoShu, UntHunYin3, UntUser, untUtil;

{$R *.dfm}


function divStr(Tmpstr:string;   tmpInt:integer; ReturnChar:Char=' '):TstringList;
var
i, k:integer;
somelist:TStringList;
tmp:String;
begin
  k:=1;
  for i:=1 to length(tmpstr)   do
  begin
    if tmpstr[i]=#13 then k:=0;
    if k>tmpInt*2 then begin
      {
      mbSingleByte: Ascii
      mbLeadByte:   ����ͷ����
      mbTrailByte:  ���ֺ����
      }
      if  ByteType(tmpstr,i)=mbTrailByte
      then begin
        tmp := tmp+ReturnChar;
        tmp[length(tmp)] := tmp[length(tmp)-1];
        tmp[length(tmp)-1] := ReturnChar;
      end else tmp := tmp+ReturnChar;
      k := 0;
    end;
    tmp := tmp+tmpstr[i];
    inc(k);
  end;
  somelist:=TStringList.Create;
  //somelist.Clear;
  somelist.Add(tmp);
  result:=somelist;
end;

procedure TFrmEdt.Button1Click(Sender: TObject);
var fangwujianzhumianji:Currency;
begin
  try
    ATMain.FieldByName('lastUpdateTime').AsString := FormatDateTime('yyyy-mm-dd hh:mm:ss',now);
    ATMain.Post;
    ATJieKuanRen.Post;
    ATFangWu.Post;
    ATDaiKuan.Post;
    ATZhengXin.Post;
    //ɾ�����ύ��BUG
    if ATLianMingKeHu.State in [dsEdit, dsInsert]  then
      ATLianMingKeHu.Post;
    if ATDiYaWu.State in [dsEdit, dsInsert]  then
      ATDiYaWu.Post;
  except
  end;
  ATMain.Edit;
  ATJieKuanRen.edit;
  ATFangWu.edit;
  ATDaiKuan.edit;
  ATZhengXin.edit;
  try
    ATLianMingKeHu.edit;
    ATDiYaWu.edit;
  except
  end;

  viewall(mainid);
  try
    fangwujianzhumianji := ADOQuery1.FieldByName('fangwujianzhumianji').AsCurrency;
    if (fangwujianzhumianji>30) and (fangwujianzhumianji<40) then begin
      if ADOQuery1.FieldByName('lilvfudongbeli').AsString <>'' then begin
        showmessage('�������30-40ƽ���ף�����ʹ�û�׼����!!');
      end;
      if ADOQuery1.FieldByName('diyalv').AsString <>'50%' then begin
        showmessage('�������30-40ƽ���ף���Ѻ�ʱ���Ϊ50%!!');
      end;
    end;
    if ADOQuery1.FieldByName('qixian').AsInteger+
      (strtoint(formatdatetime('yyyy',now))-ADOQuery1.FieldByName('fangwujianchengniandai').AsInteger)>30 then begin
      showmessage('�������޼ӷ��䲻�ܴ���30�꣡');
    end;

  except
  end;
end;

procedure TFrmEdt.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TFrmEdt.edit(mainid: String;isshow:Boolean=true);
begin
  ATMain.Filter := 'id='+mainid;
  ATMain.Filtered := true;

  ATMain.Active := true;
  ATJieKuanRen.Active := true;
  ATFangWu.Active := true;
  ATDaiKuan.Active := true;
  ATZhengXin.Active := true;
  ATLianMingKeHu.Active := true;
  ATDiYaWu.Active := true;

  ATMain.Edit;
  ATJieKuanRen.Edit;
  ATFangWu.Edit;
  ATDaiKuan.Edit;
  ATZhengXin.Edit;
  ATLianMingKeHu.Edit;
  ATDiYaWu.Edit;

  self.mainid := mainid;
  viewall(mainid);
  try
    DBComboBox30.ItemIndex := DBComboBox30.Items.IndexOf(ATDaiKuan.FieldByName('jiekuanzhonglei').AsString);
    DBComboBox30Change(self);
  except
  end;
  if isshow then showmodal;
end;

procedure TFrmEdt.new(jiekuanleixing:Integer);
var sqlstr, id:String;
i:Integer;
begin
  sqlstr := 'insert into t_main (inputdate, createUser) values('''+formatdatetime('yyyy-mm-dd hh:mm:ss',now)+''', ''' + FrmUser.user + ''')';
  execsql(sqlstr);
  sqlstr := 'select max(id) as maxid from t_main';
  opensql(sqlstr, FrmMain.AQOpen);
  id := FrmMain.AQOpen.FieldByName('maxid').AsString;
  sqlstr := 'insert into t_daikuan (mainid) values('''+id+''')';
  execsql(sqlstr);
  sqlstr := 'insert into t_fangwu (mainid) values('''+id+''')';
  execsql(sqlstr);
  sqlstr := 'insert into t_jiekuanren (mainid) values('''+id+''')';
  execsql(sqlstr);
  sqlstr := 'insert into t_zhengxin (mainid) values('''+id+''')';
  execsql(sqlstr);

  self.mainid := id;
  ATMain.Filter := 'id='+id;
  ATMain.Filtered := true;


  ATMain.Active := true;
  ATJieKuanRen.Active := true;
  ATFangWu.Active := true;
  ATDaiKuan.Active := true;
  ATZhengXin.Active := true;
  ATLianMingKeHu.Active := true;
  ATDiYaWu.Active := true;

  ATMain.Edit;
  ATJieKuanRen.Edit;
  ATFangWu.Edit;
  ATDaiKuan.Edit;
  ATZhengXin.Edit;
  ATDiYaWu.Edit;

  DBComboBox30.itemindex := jiekuanleixing;
  ATDaiKuan.FieldByName('jiekuanzhonglei').AsString := DBComboBox30.Text;
  DBComboBox30Change(self);
  dtpjiekuanshijian.Text := formatDateTime('yyyy-mm-dd', now);

  viewall(id);

  //����Ĭ��ֵ
  for i:= 0 to self.ComponentCount-1 do begin
    if self.Components[i].ClassType = TDBCombobox then begin
      if (self.Components[i] as TDBCombobox).Tag>0 then begin
        (self.Components[i] as TDBCombobox).ItemIndex := (self.Components[i] as TDBCombobox).Tag-1;
        (self.Components[i] as TDBCombobox).DataSource.DataSet.FieldByName((self.Components[i] as TDBCombobox).DataField).AsString := (self.Components[i] as TDBCombobox).Text;
      end;
    end;
  end;

  showmodal;
end;

procedure TFrmEdt.FormCreate(Sender: TObject);
begin
  DBComboBox39.Items.Text := FrmMain.loadStringsFromDict('ҵ����');
  DBComboBox47.Items.Text := FrmMain.loadStringsFromDict('��Ŀ��');
  DBComboBox35.Items.Text := FrmMain.loadStringsFromDict('����');
  DBComboBox34.Items.Text := FrmMain.loadStringsFromDict('��ͬ��');
  DBComboBox84.Items.Text := FrmMain.loadStringsFromDict('����');
  DBComboBox82.Items.Text := FrmMain.loadStringsFromDict('���֧��');
  DBComboBox85.Items.Text := FrmMain.loadStringsFromDict('���֧�и�����');
  DBComboBox86.Items.Text := FrmMain.loadStringsFromDict('���֧�е�ַ');
  DBComboBox87.Items.Text := FrmMain.loadStringsFromDict('���֧�е绰');
  DBComboBox41.Items.Text := FrmMain.loadStringsFromDict('�Ŵ�Ա');
  DBComboBox42.Items.Text := FrmMain.loadStringsFromDict('�Ŵ�Ա���֤');
  DBComboBox88.Items.Text := FrmMain.loadStringsFromDict('�Ŵ�Ա�绰');

  ATMain.Connection := FrmMain.ADOConnection1;
  ATJieKuanRen.Connection := FrmMain.ADOConnection1;
  ATFangWu.Connection := FrmMain.ADOConnection1;
  ATDaiKuan.Connection := FrmMain.ADOConnection1;
  PageControl1.ActivePageIndex := 0;

  dayinshijian := formatDateTime('yyyy', now)+'��'+
    formatDateTime('mm', now)+'��'+
    formatDateTime('dd', now)+'��';
end;

procedure TFrmEdt.BtnPrintClick(Sender: TObject);
var menu:TPopupMenu;
begin
  Button1Click(self);
  viewAllforprint(mainid);
  if ADOQuery1.FieldByName('jiekuanzhonglei').AsString = '�ھӱ�' then
    menu := PMRZBPrint
  else
    menu := PMOtherPrint;

  menu.Popup(BtnPrint.Left+Panel1.Left+self.Left,
                  BtnPrint.Top+Panel1.Top+self.Top);
end;

procedure TFrmEdt.DBEdit4Exit(Sender: TObject);
var s:String;
iyear, dyear,dmonth,dday:word;
begin
  decodedate(now, dyear, dmonth, dday);
  s := DBEdit4.Text;
  if length(s) =15 then begin
    try
      iyear := StrtoInt(copy(s,7,2));
      iyear := iyear+1900;
      ATJieKuanRen.FieldByName('jiekuanrennianling').AsString := InttoStr(dyear-iyear);
      ATJieKuanRen.FieldByName('jiekuanrenchushengnianyue').AsString := InttoStr(iyear)+'-'+copy(s,9,2)+'-'+copy(s,11,2);
    except
      showmessage('��������֤����!');
    end;
  end;

  if length(s) =18 then begin
    try
      iyear := StrtoInt(copy(s,7,4));
      ATJieKuanRen.FieldByName('jiekuanrennianling').AsString := InttoStr(dyear-iyear);
      ATJieKuanRen.FieldByName('jiekuanrenchushengnianyue').AsString := InttoStr(iyear)+'-'+copy(s,11,2)+'-'+copy(s,13,2);
    except
      showmessage('��������֤����!');
    end;
  end;
  //ATJieKuanRen.Post;
  //ATJieKuanRen.Edit;
end;

procedure TFrmEdt.DBEdit27Exit(Sender: TObject);
var s:String;
iyear, dyear,dmonth,dday:word;
begin
  decodedate(now, dyear, dmonth, dday);
  s := DBEdit27.Text;
  if length(s) =15 then begin
    try
      iyear := StrtoInt(copy(s,7,2));
      iyear := iyear+1900;
      ATJieKuanRen.FieldByName('jiekuanrenpeiouchushengnianyue').AsString := InttoStr(iyear)+'-'+copy(s,9,2)+'-'+copy(s,11,2);
      DBEdit18.Text := InttoStr(dyear-iyear);
    except
      showmessage('��������֤����!');
    end;
  end;

  if length(s) =18 then begin
    try
      iyear := StrtoInt(copy(s,7,4));
      DBEdit18.Text := InttoStr(dyear-iyear);
      ATJieKuanRen.FieldByName('jiekuanrenpeiouchushengnianyue').AsString := InttoStr(iyear)+'-'+copy(s,11,2)+'-'+copy(s,13,2);
    except
      showmessage('��������֤����!');
    end;
  end;
  ATJieKuanRen.Post;
  ATJieKuanRen.Edit;
end;

procedure TFrmEdt.DBEdit16Exit(Sender: TObject);
var m1,m2:Currency;
begin
  try
    m1 := StrtoCurr(DBedit16.text);
  except
    m1 := 0;
  end;
  try
    m2 := StrtoCurr(DBedit26.text);
  except
    m2 := 0;
  end;
  DBEdit33.Text := CurrtoStr(m1+m2);
  ATJieKuanRen.Post;
  ATJieKuanRen.Edit;
end;

procedure TFrmEdt.viewall(id:String);
var sqlstr:String;
begin
  sqlstr := ' select * from viewall where id='+id;
  opensql(sqlstr, ADOQuery1);
end;

procedure TFrmEdt.N12Click(Sender: TObject);
var FrmShenPiXinXi2:TFrmShenPiXinXi2;
begin
  FrmShenPiXinXi2 := TFrmShenPiXinXi2.Create(self);
  if cb.checked then
    FrmShenPiXinXi2.QuickRep1.Preview
  else
    FrmShenPiXinXi2.QuickRep1.print;
end;

procedure TFrmEdt.N2Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportgongtongzhaiwurenchengnuohan(true, true)
  else
    self.exportgongtongzhaiwurenchengnuohan(true, false);

end;

procedure TFrmEdt.N3Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportbuchongxieyi(true, true)
  else
    self.exportbuchongxieyi(true, false);
end;

procedure TFrmEdt.DBEdit50Exit(Sender: TObject);
begin
  try
    DBEdit53.DataSource.DataSet.FieldByName(DBEdit53.DataField).AsString :=
      InttoStr(round(StrtoFloat(DBEdit50.Text)/StrtoFloat(DBEdit41.Text)*100))+'%';
  except
  end;
  try
    DBEdit59.DataSource.DataSet.FieldByName(DBEdit59.DataField).AsString :=
      InttoStr(StrtoInt(DBEdit41.Text)-StrtoInt(DBEdit50.Text));
  except
  end;
end;

procedure TFrmEdt.N4Click(Sender: TObject);
var FrmFangWuChuShouZhengMing:TFrmFangWuChuShouZhengMing;
begin
  FrmFangWuChuShouZhengMing := TFrmFangWuChuShouZhengMing.Create(self);
  if cb.checked then
    FrmFangWuChuShouZhengMing.QuickRep1.Preview
  else
    FrmFangWuChuShouZhengMing.QuickRep1.Print;
end;

procedure TFrmEdt.N9Click(Sender: TObject);
var FrmGeRenShouXinYeWuShenQingBiao:TFrmGeRenShouXinYeWuShenQingBiao;
begin
  FrmGeRenShouXinYeWuShenQingBiao := TFrmGeRenShouXinYeWuShenQingBiao.Create(self);
  if cb.checked then
    FrmGeRenShouXinYeWuShenQingBiao.quickrep1.Preview
  else
    FrmGeRenShouXinYeWuShenQingBiao.quickrep1.Print;
end;

procedure TFrmEdt.N8Click(Sender: TObject);
var FrmWenJianYiJiaoQingDan_DB :TFrmWenJianYiJiaoQingDan_DB;
begin
  FrmWenJianYiJiaoQingDan_DB :=TFrmWenJianYiJiaoQingDan_DB.Create(self);
  FrmWenJianYiJiaoQingDan_DB.init;
  if cb.checked then
    FrmWenJianYiJiaoQingDan_DB.QuickRep1.Preview
  else
    FrmWenJianYiJiaoQingDan_DB.QuickRep1.print;
  FrmWenJianYiJiaoQingDan_DB.Close;
end;

procedure TFrmEdt.N7Click(Sender: TObject);
var FrmFangDiChanDengJiShenQingShu:TFrmFangDiChanDengJiShenQingShu;
begin
  FrmFangDiChanDengJiShenQingShu := TFrmFangDiChanDengJiShenQingShu.Create(self);
  if cb.checked then
    FrmFangDiChanDengJiShenQingShu.quickrep1.Preview
  else
    FrmFangDiChanDengJiShenQingShu.quickrep1.Print;
end;

procedure TFrmEdt.Button3Click(Sender: TObject);
var tmp:String;
begin
  Button1Click(self);

  if ((DBMemo3.Lines.Text <> '') and sysconfirm('������Ѵ���,�Ƿ񸲸�?')) or (DBMemo3.Lines.Text='') then begin
    if ADOQuery1.FieldByName('jiekuanzhonglei').AsString<> '��Ѻѭ������' then
      tmp := getJinZhiZhuFang
    else
      tmp := getJinZhiDiYa;


    DBMemo3.Lines.Text := tmp;
    DataSource4.DataSet.Post;
    DataSource4.DataSet.Edit;
  end;
end;

procedure TFrmEdt.N5Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportyijianbiao(true, true)
  else
    self.exportyijianbiao(true, false);
end;

procedure TFrmEdt.N10Click(Sender: TObject);
var FrmHunYin:TFrmHunYin;
begin
  FrmHunYin := TFrmHunYin.Create(self);
  if cb.checked then
    FrmHunYin.QuickRep1.Preview
  else
    FrmHunYin.QuickRep1.Print;
end;

procedure TFrmEdt.N14Click(Sender: TObject);
var FrmBuChengXieYi:TFrmBuChengXieYi;
begin
  FrmBuChengXieYi := TFrmBuChengXieYi.Create(self);
  if cb.Checked then
    FrmBuChengXieYi.QuickRep1.Preview
  else
    FrmBuChengXieYi.QuickRep1.Print;
end;

function Changdx2(mmje: Double): String;
const s1: String = '��Ҽ��������½��ƾ�'; s2: String = '�ֽ�Ԫʰ��Ǫ��ʰ��Ǫ��ʰ��Ǫ��';
var s, dx: String; i, Len: Integer;
function StrTran(const S, S1, S2: String): String; begin Result := StringReplace(S, S1, S2, [rfReplaceAll]); end;
begin
  if mmje < 0 then begin dx := '��'; mmje := -mmje; end;
  s := Format('%.0f', [mmje*100]); Len := Length(s);
  for i := 1 to Len do dx := dx + Copy(s1, (Ord(s[i]) - Ord('0'))*2 + 1, 2) + Copy(s2, (Len - i)*2 + 1, 2);
  dx := StrTran(StrTran(StrTran(StrTran(StrTran(dx, '��Ǫ', '��'), '���', '��'), '��ʰ', '��'), '���', '��'), '���', '��');
  dx := StrTran(StrTran(StrTran(StrTran(StrTran(dx, '����', '��'), '����', '��'), '����', '��'), '����', '��'), '��Ԫ', 'Ԫ');
  if dx = '��' then Result := '��Ԫ��' else Result := StrTran(StrTran(StrTran(dx, '����', '����'), '����', '��'), '����', '��');
end;

procedure TFrmEdt.N6Click(Sender: TObject);
var FrmJieKuanDiYaHeTong:TFrmJieKuanDiYaHeTong;
begin
  FrmJieKuanDiYaHeTong := TFrmJieKuanDiYaHeTong.Create(self);
  if cb.Checked then
    FrmJieKuanDiYaHeTong.QuickRep1.Preview
  else
    FrmJieKuanDiYaHeTong.QuickRep1.Print;
end;

procedure TFrmEdt.N13Click(Sender: TObject);
var FrmDaiKuanShenQingShu1:TFrmDaiKuanShenQingShu1;
begin
  FrmDaiKuanShenQingShu1 := TFrmDaiKuanShenQingShu1.Create(self);
  if cb.checked then
    FrmDaiKuanShenQingShu1.QuickRep1.Preview
  else
    FrmDaiKuanShenQingShu1.QuickRep1.Print
end;

procedure TFrmEdt.DBEdit59Exit(Sender: TObject);
var m1,m2:Currency;
begin
  try
    m1 := StrtoCurr(DBedit59.text);
  except
    m1 := 0;
  end;
  try
    m2 := StrtoCurr(DBedit64.text);
  except
    m2 := 0;
  end;
  DBEdit72.Text := CurrtoStr(m1+m2);

  try
    m1 := StrtoCurr(DBedit59.text);
  except
    m1 := 0;
  end;
  try
    m2 := StrtoCurr(DBEdit41.text);
  except
    m2 := 0;
  end;
  DBEdit78.Text := InttoStr(round(m1/m2*100))+'%';
  ATDaiKuan.Post;
  ATDaiKuan.Edit;
end;

procedure TFrmEdt.DBEdit64Exit(Sender: TObject);
var m1,m2:Currency;
begin
  try
    m1 := StrtoCurr(DBedit59.text);
  except
    m1 := 0;
  end;
  try
    m2 := StrtoCurr(DBedit64.text);
  except
    m2 := 0;
  end;
  DBEdit72.Text := CurrtoStr(m1+m2);

  try
    m1 := StrtoCurr(DBedit64.text);
  except
    m1 := 0;
  end;
  try
    m2 := StrtoCurr(DBEdit41.text);
  except
    m2 := 0;
  end;
  DBEdit62.Text := InttoStr(round(m1/m2*100))+'%';
  ATDaiKuan.Post;
  ATDaiKuan.Edit;
end;

procedure TFrmEdt.DBEdit10Enter(Sender: TObject);
begin
  try
    DBEdit10.Text := InttoStr(StrtoInt(copy(DBEdit78.Text,1,length(DBEdit78.Text)-1))+
                              StrtoInt(copy(DBEdit62.Text,1,length(DBEdit62.Text)-1)))+'%';
  except
  end;
  ATDaiKuan.Post;
  ATDaiKuan.Edit;
end;

procedure TFrmEdt.DBEdit75Exit(Sender: TObject);
var m1,m2:Currency;
begin
  try
    m1 := StrtoCurr(DBedit14.text);
  except
    m1 := 0;
  end;
  try
    m2 := StrtoCurr(DBEdit33.text);
  except
    m2 := 0;
  end;
  DBEdit65.Text := InttoStr(round(m1/m2*100))+'%';
  ATDaiKuan.Post;
  ATDaiKuan.Edit;
end;

procedure TFrmEdt.DBEdit77Exit(Sender: TObject);
var m1,m2:Currency;
begin
  try
    m1 := StrtoCurr(DBedit77.text);
  except
    m1 := 0;
  end;
  try
    m2 := StrtoCurr(DBEdit33.text);
  except
    m2 := 0;
  end;
  DBEdit9.Text := InttoStr(round(m1/m2*100))+'%';
  ATDaiKuan.Post;
  ATDaiKuan.Edit;
end;

procedure TFrmEdt.DBEdit20Enter(Sender: TObject);
begin
  try
    DBEdit20.Text := CurrtoStr(StrtoCurr(copy(DBEdit65.Text,1,length(DBEdit65.Text)-1))+
                              StrtoCurr(copy(DBEdit9.Text,1,length(DBEdit9.Text)-1)))+'%';
  except
  end;
  ATDaiKuan.Post;
  ATDaiKuan.Edit;
end;

procedure TFrmEdt.N21Click(Sender: TObject);
var FrmDaiKuanShenQingShu2:TFrmDaiKuanShenQingShu2;
begin
  FrmDaiKuanShenQingShu2:= TFrmDaiKuanShenQingShu2.Create(self);
  if cb.checked then
    FrmDaiKuanShenQingShu2.QuickRep1.Preview
  else
    FrmDaiKuanShenQingShu2.QuickRep1.Print
end;

procedure TFrmEdt.N17Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportgerenxingyongchaxun(true, true)
  else
    self.exportgerenxingyongchaxun(true, false);
end;

procedure TFrmEdt.N18Click(Sender: TObject);
var FrmHunYin2:TFrmHunYin2;
begin
  FrmHunYin2 := TFrmHunYin2.Create(self);
  if cb.checked then
    FrmHunYin2.QuickRep1.Preview
  else
    FrmHunYin2.QuickRep1.Print;
end;


procedure TFrmEdt.DBEdit44Exit(Sender: TObject);
var s:String;
iyear:word;
begin
  s := DBEdit44.Text;
  if length(s) =15 then begin
    try
      iyear := StrtoInt(copy(s,7,2));
      iyear := iyear+1900;
      ATFangWu.FieldByName('shoufangrenchushenriqi').AsString := InttoStr(iyear)+'-'+copy(s,9,2)+'-'+copy(s,11,2);
    except
      showmessage('��������֤����!');
    end;
  end;

  if length(s) =18 then begin
    try
      iyear := StrtoInt(copy(s,7,4));
      ATFangWu.FieldByName('shoufangrenchushenriqi').AsString := InttoStr(iyear)+'-'+copy(s,11,2)+'-'+copy(s,13,2);
    except
      showmessage('��������֤����!');
    end;
  end;
  ATFangWU.Post;
  ATFangWU.Edit;
end;

procedure TFrmEdt.Button4Click(Sender: TObject);
var menu :TPopupMenu;
begin
  Button1Click(self);
  viewAllforprint(mainid);
  if ADOQuery1.FieldByName('jiekuanzhonglei').AsString = '�ھӱ�' then
    menu := PMRZBExport
  else
    menu := PMOtherExport;
  menu.Popup(Button4.Left+Panel1.Left+self.Left,
                  Button4.Top+Panel1.Top+self.Top);
end;


function TFrmEdt.getExcelFileTmp(filename,tmpfilename:String):String;
begin
  copyFile(PChar(ExtractFilePath(Application.exename)+'templet\'+filename+'.xls'),
          PChar(tmpfilename), false);
  result := tmpfilename;
end;

function TFrmEdt.getDocFileTmp(filename,tmpfilename:String):String;
begin
  copyFile(PChar(ExtractFilePath(Application.exename)+'templet\'+filename+'.doc'),
          PChar(tmpfilename), false);
  result := tmpfilename;
end;

procedure TFrmEdt.exportshenpixinxi1;
function formatvalue(value:String):String ;
begin
  if trim(value)='' then begin
    value := '--';
  end ;
  result := value;
end;
begin
  sd.FileName := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '���ַ�����������Ϣ��1';
  if sd.Execute then begin
    try                                                               

      scEE.LoadDefaultProperties;
      scEE.ExcelVisible:=false;
      scEE.ConnectTo:=ctNewExcel;
      scEE.Filename:= getExcelFileTmp('���ַ�����������Ϣ��1', sd.FileName);
      // Add data to existing worksheet
      scEE.WorksheetName:='Sheet1';
      scEE.Connect;

      scEE.ExcelWorkSheet.Range['B1','C1'].Value :=
        formatvalue(ADOQuery1.FieldByName('hetonghao').AsString);
      scEE.ExcelWorkSheet.Range['L1','L1'].Value :=
        formatvalue(ADOQuery1.FieldByName('yewubianhao').AsString);
      scEE.ExcelWorkSheet.Range['D2','D2'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
      scEE.ExcelWorkSheet.Range['F2','F2'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenxingbie').AsString);
      scEE.ExcelWorkSheet.Range['H2','I2'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
      scEE.ExcelWorkSheet.Range['K2','K2'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenxueli').AsString);
      scEE.ExcelWorkSheet.Range['M2','M2'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenhunfou').AsString);
      scEE.ExcelWorkSheet.Range['D3','D3'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrengongzuonianxian').AsString);
      scEE.ExcelWorkSheet.Range['F3','F3'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrengongzuogangwei').AsString);
      scEE.ExcelWorkSheet.Range['H3','H3'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenrenxianzhinianxian').AsString);
      scEE.ExcelWorkSheet.Range['J3','J3'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenjishuzige').AsString);
      scEE.ExcelWorkSheet.Range['L3','L3'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenyuegongzishouru').AsString);
      scEE.ExcelWorkSheet.Range['N3','N3'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrengongjijinjiaocune').AsString);
      scEE.ExcelWorkSheet.Range['D4','D4'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrendanweiall').AsString);
      scEE.ExcelWorkSheet.Range['J4','J4'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhiall').AsString);
      scEE.ExcelWorkSheet.Range['M4','M4'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrendanweidianhua').AsString);
      scEE.ExcelWorkSheet.Range['M5','M5'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenjiatingdianhua').AsString);
      scEE.ExcelWorkSheet.Range['M6','M6'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenshouji').AsString);
      scEE.ExcelWorkSheet.Range['E7','E7'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenchengxinxitongchaxunqingkuang').AsString);
      scEE.ExcelWorkSheet.Range['L7','L7'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenyuqijiluqingkuang').AsString);
      scEE.ExcelWorkSheet.Range['D8','D8'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString);
      scEE.ExcelWorkSheet.Range['F8','F8'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);
      scEE.ExcelWorkSheet.Range['H8','H8'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeioudanweiall').AsString);
      scEE.ExcelWorkSheet.Range['M8','M8'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeioudanweidianhua').AsString);
      scEE.ExcelWorkSheet.Range['M9','M9'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeioujiatingdianhua').AsString);
      scEE.ExcelWorkSheet.Range['D10','D10'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiouxueli').AsString);
      scEE.ExcelWorkSheet.Range['F10','F10'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiougongzuonianxian').AsString);
      scEE.ExcelWorkSheet.Range['H10','H10'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiougongzuogangwei').AsString);
      scEE.ExcelWorkSheet.Range['J10','J10'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiourenxianzhinianxian').AsString);
      scEE.ExcelWorkSheet.Range['L10','L10'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString);
      scEE.ExcelWorkSheet.Range['N10','N10'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiougongjijinjiaocune').AsString);
      scEE.ExcelWorkSheet.Range['D11','D11'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiouchengxinxitongchaxunqingkuang').AsString);
      scEE.ExcelWorkSheet.Range['I11','I11'].Value :=
        formatvalue(ADOQuery1.FieldByName('gongyangrenqingkuang').AsString);
      scEE.ExcelWorkSheet.Range['L11','L11'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiouyuqijiluqingkuang').AsString);
      scEE.ExcelWorkSheet.Range['C12','C12'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiatingqitashourulaiyuan').AsString);
      scEE.ExcelWorkSheet.Range['H12','H12'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiatingyuezongshouru').AsString);
      scEE.ExcelWorkSheet.Range['J12','J12'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiatingqitafuzhaijizhichu').AsString);
      scEE.ExcelWorkSheet.Range['D13','D13'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiatingshouruzhenshixingjihelipingjia').AsString);
      scEE.ExcelWorkSheet.Range['C14','C14'].Value :=
        formatvalue(ADOQuery1.FieldByName('shoufangrenxingming').AsString);
      scEE.ExcelWorkSheet.Range['E14','E14'].Value :=
        formatvalue(ADOQuery1.FieldByName('shoufangrenxingbie').AsString);
      scEE.ExcelWorkSheet.Range['G14','G14'].Value :=
        formatvalue(ADOQuery1.FieldByName('shoufangrenshenfenzhenghaoma').AsString);
      scEE.ExcelWorkSheet.Range['I14','I14'].Value :=
        formatvalue(ADOQuery1.FieldByName('hunfou').AsString);
      scEE.ExcelWorkSheet.Range['K14','K14'].Value :=
        formatvalue(ADOQuery1.FieldByName('fangchangongyourenxingming').AsString);
      scEE.ExcelWorkSheet.Range['M14','M14'].Value :=
        formatvalue(ADOQuery1.FieldByName('fangchangongyourenshenfenzhenghaoma').AsString);
      scEE.ExcelWorkSheet.Range['D15','D15'].Value :=
        formatvalue(ADOQuery1.FieldByName('shifoutongyi').AsString);
      scEE.ExcelWorkSheet.Range['F15','F15'].Value :=
        formatvalue(ADOQuery1.FieldByName('chanquanzhengbianhao').AsString);
      scEE.ExcelWorkSheet.Range['I15','I15'].Value :=
        formatvalue(ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
      scEE.ExcelWorkSheet.Range['M15','M15'].Value :=
        formatvalue(ADOQuery1.FieldByName('fangwujianchengniandai').AsString);
      scEE.ExcelWorkSheet.Range['D16','D16'].Value :=
        formatvalue(ADOQuery1.FieldByName('fangwuxingzhi').AsString);
      scEE.ExcelWorkSheet.Range['F16','F16'].Value :=
        formatvalue(ADOQuery1.FieldByName('fangwujianzhumianji').AsString);
      scEE.ExcelWorkSheet.Range['H16','H16'].Value :=
        formatvalue(ADOQuery1.FieldByName('fushufangwujianzhumianji').AsString);
      scEE.ExcelWorkSheet.Range['J16','J16'].Value :=
        formatvalue(ADOQuery1.FieldByName('loucong').AsString);
      scEE.ExcelWorkSheet.Range['L16','L16'].Value :=
        formatvalue(ADOQuery1.FieldByName('fangwujiegoujichaoxiang').AsString);
      scEE.ExcelWorkSheet.Range['D17','D17'].Value :=
        formatvalue(ADOQuery1.FieldByName('peitaosheshi').AsString);
      scEE.ExcelWorkSheet.Range['H17','H17'].Value :=
        formatvalue(ADOQuery1.FieldByName('tudiquanliqingkuang').AsString);
      scEE.ExcelWorkSheet.Range['K17','K17'].Value :=
        formatvalue(ADOQuery1.FieldByName('bianxiannenglipingjia').AsString);
      scEE.ExcelWorkSheet.Range['D18','D18'].Value :=
        formatvalue(ADOQuery1.FieldByName('pinggujigoumingcheng').AsString);
      scEE.ExcelWorkSheet.Range['G18','G18'].Value :=
        formatvalue(ADOQuery1.FieldByName('pinggurenzizhi').AsString);
      scEE.ExcelWorkSheet.Range['I18','I18'].Value :=
        formatvalue(ADOQuery1.FieldByName('shifouzhunru').AsString);
      scEE.ExcelWorkSheet.Range['K18','K18'].Value :=
        formatvalue(ADOQuery1.FieldByName('gujiafangfa').AsString);
      scEE.ExcelWorkSheet.Range['M18','M18'].Value :=
        formatvalue(ADOQuery1.FieldByName('pinggujiageall').AsString);
      scEE.ExcelWorkSheet.Range['D19','D19'].Value :=
        formatvalue(ADOQuery1.FieldByName('pinggujiageall').AsString);
      scEE.ExcelWorkSheet.Range['F19','F19'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiagehelixingpingjia').AsString);
      scEE.ExcelWorkSheet.Range['K19','K19'].Value :=
        '�ױ���,��Ѻ��'+formatvalue(ADOQuery1.FieldByName('diyalv').AsString)+',�������й涨';
      scEE.ExcelWorkSheet.Range['C20','C20'].Value :=
        formatvalue(ADOQuery1.FieldByName('shoufukuanbili').AsString);
      scEE.ExcelWorkSheet.Range['E20','E20'].Value :=
        formatvalue(ADOQuery1.FieldByName('shoufukuanjine').AsString);
      scEE.ExcelWorkSheet.Range['G20','G20'].Value :=
        formatvalue(ADOQuery1.FieldByName('shoufouqiandinggoufanghetong').AsString);
      scEE.ExcelWorkSheet.Range['J20','J20'].Value :=
        formatvalue(ADOQuery1.FieldByName('goufangyongtu').AsString);
      scEE.ExcelWorkSheet.Range['L20','L20'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiaoyibeijingzhenshixingqueren').AsString);
      scEE.ExcelWorkSheet.Range['C21','C21'].Value :=
        formatvalue(ADOQuery1.FieldByName('daikuanjine').AsString);
      scEE.ExcelWorkSheet.Range['E21','E21'].Value :=
        formatvalue(ADOQuery1.FieldByName('qixian').AsString);
      scEE.ExcelWorkSheet.Range['G21','G21'].Value :=
        formatvalue(ADOQuery1.FieldByName('lilv').AsString);
      scEE.ExcelWorkSheet.Range['I21','I21'].Value :=
        formatvalue(ADOQuery1.FieldByName('huankuanfangshi').AsString);
      scEE.ExcelWorkSheet.Range['K21','K21'].Value :=
        formatvalue(ADOQuery1.FieldByName('yunhuankuane').AsString);
      scEE.ExcelWorkSheet.Range['M21','M21'].Value :=
        formatvalue(ADOQuery1.FieldByName('yuehuankuanezhanyueshourubili').AsString);


      scEE.SaveAs(sd.FileName,ffxls);
      showmessage('�ѵ����ɹ�');

    finally
      scEE.Disconnect;
    end;
  end;
end;



procedure TFrmEdt.exportshenpixinxi2;
function formatvalue(value:String):String ;
begin
  if trim(value)='' then begin
    value := '--';
  end ;
  result := value;
end;
begin
  sd.FileName := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '���ַ�����������Ϣ��2';
  if sd.Execute then begin
    try

      scEE.LoadDefaultProperties;
      scEE.ExcelVisible:=false;
      scEE.ConnectTo:=ctNewExcel;
      scEE.Filename:= getExcelFileTmp('���ַ�����������Ϣ��2', sd.FileName);
      // Add data to existing worksheet
      scEE.WorksheetName:='Sheet1';
      scEE.Connect;



      scEE.ExcelWorkSheet.Range['D15','D15'].Value :=
        formatvalue(ADOQuery1.FieldByName('toubaojine').AsString);
      scEE.ExcelWorkSheet.Range['F15','F15'].Value :=
        formatvalue(ADOQuery1.FieldByName('xianzhong').AsString);
      scEE.ExcelWorkSheet.Range['H15','H15'].Value :=
        formatvalue(ADOQuery1.FieldByName('shouyiren').AsString);
      scEE.ExcelWorkSheet.Range['J15','J15'].Value :=
        formatvalue(ADOQuery1.FieldByName('qixian').AsString);

      scEE.ExcelWorkSheet.Range['B16','B16'].Value :=
        '��������'+ADOQuery1.FieldByName('daikuanjineall').AsString+'��Ԫ���ܹ���Ѻ��Ϊ'+
        ADOQuery1.FieldByName('diyalv').AsString+'���������д���'+
        ADOQuery1.FieldByName('daikuanjine').AsString+'��Ԫ�����д����Ѻ��'+
        ADOQuery1.FieldByName('yinhangdiyalv').AsString+'�����������'+
        ADOQuery1.FieldByName('gongjijindaikuanjine').AsString+'��Ԫ������������Ѻ��'+
        ADOQuery1.FieldByName('gongjijindiyalv').AsString+'�������»����Ϊ'+
        ADOQuery1.FieldByName('yunhuankuane').AsString+'Ԫ��ռ��������'+
        ADOQuery1.FieldByName('yinhangyuehuankuanezhanyueshourubili').AsString+'���������»����'+
        ADOQuery1.FieldByName('gongjijinyuehuankuane').AsString+'Ԫ��ռ��������'+
        ADOQuery1.FieldByName('gongjijinyuehuankuanezhanyueshourubili').AsString+
        '�����к͹������»����ܶ�ռ�������'+ADOQuery1.FieldByName('yuehuankuanezhanyueshourubili').AsString+
        '�����ϴ���Ҫ���н���'+ADOQuery1.FieldByName('zhongjie').AsString;



      scEE.SaveAs(sd.FileName,ffxls);
      showmessage('�ѵ����ɹ�');

    finally
      scEE.Disconnect;
    end;
  end;
end;

procedure TFrmEdt.MenuItem3Click(Sender: TObject);
begin
  exportshenpixinxi1;
end;

procedure TFrmEdt.N11Click(Sender: TObject);
var FrmShenPiXinXi1:TFrmShenPiXinXi1;
begin
  FrmShenPiXinXi1 := TFrmShenPiXinXi1.Create(self);
  if cb.checked then
    FrmShenPiXinXi1.QuickRep1.Preview
  else
    FrmShenPiXinXi1.QuickRep1.print;
end;

procedure TFrmEdt.MenuItem4Click(Sender: TObject);
begin
  exportshenpixinxi2;
end;

procedure TFrmEdt.exportyijianbiao(print:Boolean=false; PrintPreview:boolean=false);

var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '�ͻ�������������.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;

  try
    getDocFileTmp('��ְ���鱨��', FileName);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanzhonglei',ADOQuery1.FieldByName('jiekuanzhonglei').AsString);
    WordControlFrm.replace('%daikuanjine',ADOQuery1.FieldByName('daikuanjine').AsString);
    WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%zhongjie',ADOQuery1.FieldByName('zhongjie').AsString);
    WordControlFrm.replace('%pinggujiage2',ADOQuery1.FieldByName('pinggujiage2').AsString);
    WordControlFrm.replace('%pinggujiage',ADOQuery1.FieldByName('pinggujiage').AsString);
    WordControlFrm.replace('%qixian',ADOQuery1.FieldByName('qixian').AsString);
    WordControlFrm.replace('%diaocha',ADOQuery1.FieldByName('diaocha').AsString);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;

procedure TFrmEdt.exportyijianbiao1;
var title:String;
begin
  if ATDaiKuan.FieldByName('jiekuanzhonglei').AsString='һ�ַ����Ҵ���' then
    title := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'����ס�����Ҵ���ĵ��鱨��'
  else
    title := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'����ס��������ϴ���ĵ��鱨��';

  sddoc.FileName := title+'.doc';
  if sddoc.Execute then begin
    try
      getDocFileTmp('����ס�����Ҵ���ĵ��鱨��', sddoc.FileName);
      WordControlFrm.connect;
      WordControlFrm.open(sddoc.FileName);
      WordControlFrm.replace('%jiekuanrenxingming',title);
      WordControlFrm.replace('%diaocha1',ADOQuery1.FieldByName('diaocha1').AsString);

      showmessage('�����ɹ�')
    finally
      WordControlFrm.saveAndClose;
    end;
  end;
end;

procedure TFrmEdt.exportyijianbiao2;
begin
  sddoc.FileName := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '��������ϵͳס�������й��������˵��.doc';

  if sddoc.Execute then begin
    try
      getDocFileTmp('��������ϵͳס�������й��������˵��', sddoc.FileName);
      WordControlFrm.connect;
      WordControlFrm.open(sddoc.FileName);
      WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
      WordControlFrm.replace('%diaocha2',ADOQuery1.FieldByName('diaocha2').AsString);

      showmessage('�����ɹ�')
    finally
      WordControlFrm.saveAndClose;
    end;
  end;
end;

procedure TFrmEdt.exportshouxinshenqingbiao;
begin
  sddoc.FileName := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '��������ҵ�������.doc';

  if sddoc.Execute then begin
    try
      getDocFileTmp('��������ҵ�������', sddoc.FileName);
      WordControlFrm.connect;
      WordControlFrm.open(sddoc.FileName);
      WordControlFrm.replace('%yewubianhao',ADOQuery1.FieldByName('yewubianhao').AsString);
      WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
      WordControlFrm.replace('%jiekuanrenxingbie',ADOQuery1.FieldByName('jiekuanrenxingbie').AsString);
      WordControlFrm.replace('%jiekuanrenchushengnianyue',ADOQuery1.FieldByName('jiekuanrenchushengnianyue').AsString);
      WordControlFrm.replace('%jiekuanrenxianjuzhudizhi',ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
      WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
      WordControlFrm.replace('%jiekuanrengongzuodanwei',ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString);
      WordControlFrm.replace('%jiatingyuezongshouru',ADOQuery1.FieldByName('jiatingyuezongshouru').AsString);
      WordControlFrm.replace('%daikuanjine',ADOQuery1.FieldByName('daikuanjine').AsString);
      WordControlFrm.replace('%yinhangdiyalv',ADOQuery1.FieldByName('yinhangdiyalv').AsString);
      WordControlFrm.replace('%qixian',ADOQuery1.FieldByName('qixian').AsString);
      WordControlFrm.replace('%lilv',ADOQuery1.FieldByName('lilv').AsString);
      WordControlFrm.replace('%huankuanfangshi',ADOQuery1.FieldByName('huankuanfangshi').AsString);
      WordControlFrm.replace('%jiekuanzhonglei',ADOQuery1.FieldByName('jiekuanzhonglei').AsString);
      WordControlFrm.replace('%danbaoren',ADOQuery1.FieldByName('danbaoren').AsString);
      WordControlFrm.replace('%diyawumingcheng',ADOQuery1.FieldByName('diyawumingcheng').AsString);
      WordControlFrm.replace('%pinggujiage2',ADOQuery1.FieldByName('pinggujiage2').AsString);
      WordControlFrm.replace('%toubaojine',ADOQuery1.FieldByName('toubaojine').AsString);
      WordControlFrm.replace('%xianzhong',ADOQuery1.FieldByName('xianzhong').AsString);
      WordControlFrm.replace('%qizhiriqi',ADOQuery1.FieldByName('qizhiriqi').AsString);

      showmessage('�����ɹ�')
    finally
      WordControlFrm.saveAndClose;
    end;
  end;
end;

procedure TFrmEdt.exportdaikuanshenpibiao(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '����ס������������.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('����ס������������', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);

    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
      WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
      WordControlFrm.replace('%jiekuanrenxingbie',ADOQuery1.FieldByName('jiekuanrenxingbie').AsString);
      WordControlFrm.replace('%jiekuanrenchushengnianyue',ADOQuery1.FieldByName('jiekuanrenchushengnianyue').AsString);
      WordControlFrm.replace('%jiekuanrenxianjuzhudizhi',ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
      WordControlFrm.replace('%jiatingrenkou',ADOQuery1.FieldByName('jiatingrenkou').AsString);
      WordControlFrm.replace('%jiekuanrengongzuodanwei',ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString);
      WordControlFrm.replace('%jiekuanrendanweidianhua',ADOQuery1.FieldByName('jiekuanrendanweidianhua').AsString);
      WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
      WordControlFrm.replace('%jiekuanrenshouji',ADOQuery1.FieldByName('jiekuanrenshouji').AsString);
      WordControlFrm.replace('%jiatingyuezongshouru',ADOQuery1.FieldByName('jiatingyuezongshouru').AsString);
      WordControlFrm.replace('%yuejiaogongjijine',ADOQuery1.FieldByName('yuejiaogongjijine').AsString);
      WordControlFrm.replace('%gongjijinjiaocune',ADOQuery1.FieldByName('gongjijinjiaocune').AsString);
      WordControlFrm.replace('%jiekuanrencunzhezhanghao',ADOQuery1.FieldByName('jiekuanrencunzhezhanghao').AsString);
      WordControlFrm.replace('%ld',Changdx2(untMain.FrmEdt.ADOQuery1.FieldByName('daikuanjineall').AsCurrency*10000));
      WordControlFrm.replace('%lbl',VartoStr(formatcurr('0.00',untMain.FrmEdt.ADOQuery1.FieldByName('daikuanjineall').AsCurrency/untMain.FrmEdt.ADOQuery1.FieldByName('pinggujiage2').AsCurrency*100))+'%');
      WordControlFrm.replace('%qixian',ADOQuery1.FieldByName('qixian').AsString);
      WordControlFrm.replace('%lilv',ADOQuery1.FieldByName('lilv').AsString);
      WordControlFrm.replace('%fangwulouyumingcheng',ADOQuery1.FieldByName('fangwulouyumingcheng').AsString);
      WordControlFrm.replace('%fangwufanghao',ADOQuery1.FieldByName('fangwufanghao').AsString);
      WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
      WordControlFrm.replace('%fangwujianzhumianji',ADOQuery1.FieldByName('fangwujianzhumianji').AsString);
      WordControlFrm.replace('%pinggujigoumingcheng',ADOQuery1.FieldByName('pinggujigoumingcheng').AsString);
      WordControlFrm.replace('%pinggujiage2',ADOQuery1.FieldByName('pinggujiage2').AsString);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;


procedure TFrmEdt.exportwenjian;
var FrmWenJianYiJiaoQingDan_DB :TFrmWenJianYiJiaoQingDan_DB;
i:Integer;
begin
  FrmWenJianYiJiaoQingDan_DB :=TFrmWenJianYiJiaoQingDan_DB.Create(self);
  FrmWenJianYiJiaoQingDan_DB.init;

  sddoc.FileName := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '�ļ������嵥.doc';

  if sddoc.Execute then begin
    try
      getDocFileTmp('�ļ������嵥', sddoc.FileName);
      WordControlFrm.connect;
      WordControlFrm.open(sddoc.FileName);
      WordControlFrm.replace('%xiangmubianhao',ADOQuery1.FieldByName('xiangmubianhao').AsString);
      WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);

      WordControlFrm.replace('qizhiriqi',FrmWenJianYiJiaoQingDan_DB.QRLabel12.Caption);
      WordControlFrm.replace('%daikuanjine',ADOQuery1.FieldByName('daikuanjine').AsString);
      WordControlFrm.replace('%hetonghao',ADOQuery1.FieldByName('hetonghao').AsString);
      //
      with FrmWenJianYiJiaoQingDan_DB do begin
        cds.first;
        
        for i:= 21 downto 1 do begin
          if not cds.eof then begin
            WordControlFrm.replace('%printorder'+inttoStr(i),cds.FieldByName('printorder').AsString);
            WordControlFrm.replace('%name'+inttoStr(i),cds.FieldByName('name').AsString);
            WordControlFrm.replace('%num'+inttoStr(i),cds.FieldByName('num').AsString);
            WordControlFrm.replace('%type'+inttoStr(i),cds.FieldByName('type').AsString);
            WordControlFrm.replace('%yijiaoriqi'+inttoStr(i),ADOQuery1.FieldByName('yijiaori').AsString);
            cds.next;
          end else begin
            WordControlFrm.replace('%printorder'+inttoStr(i),' ');
            WordControlFrm.replace('%name'+inttoStr(i),' ');
            WordControlFrm.replace('%num'+inttoStr(i),' ');
            WordControlFrm.replace('%type'+inttoStr(i),' ');
            WordControlFrm.replace('%yijiaoriqi'+inttoStr(i),' ');
          end;
        end;
      end;

      WordControlFrm.replace('%yijiaoriqi',ADOQuery1.FieldByName('yijiaori').AsString);
      WordControlFrm.replace('%heji',InttoStr(FrmWenJianYiJiaoQingDan_DB.cds.RecordCount+1));
      showmessage('�����ɹ�')
    finally
      WordControlFrm.saveAndClose;
      FrmWenJianYiJiaoQingDan_DB.Close;
    end;
  end;
end;

procedure TFrmEdt.MenuItem9Click(Sender: TObject);
begin
  exportyijianbiao(false, false);
end;

procedure TFrmEdt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmEdt.MenuItem1Click(Sender: TObject);
begin
  exportwenjian;
end;

procedure TFrmEdt.exportshenpixinxi;
function formatvalue(value:String):String ;
begin
  if trim(value)='' then begin
    value := '--';
  end ;
  result := value;
end;
begin
  sd.FileName := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '���ַ�����������Ϣ��';
  if sd.Execute then begin
    try

      scEE.LoadDefaultProperties;
      scEE.ExcelVisible:=false;
      scEE.ConnectTo:=ctNewExcel;
      scEE.Filename:= getExcelFileTmp('���ַ�����������Ϣ��', sd.FileName);
      // Add data to existing worksheet
      scEE.WorksheetName:='Sheet1';
      scEE.Connect;

      scEE.ExcelWorkSheet.Range['B1','C1'].Value :=
        formatvalue(ADOQuery1.FieldByName('hetonghao').AsString);
      scEE.ExcelWorkSheet.Range['L1','L1'].Value :=
        formatvalue(ADOQuery1.FieldByName('yewubianhao').AsString);
      scEE.ExcelWorkSheet.Range['D2','D2'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
      scEE.ExcelWorkSheet.Range['F2','F2'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenxingbie').AsString);
      scEE.ExcelWorkSheet.Range['H2','I2'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
      scEE.ExcelWorkSheet.Range['K2','K2'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenxueli').AsString);
      scEE.ExcelWorkSheet.Range['M2','M2'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenhunfou').AsString);
      scEE.ExcelWorkSheet.Range['D3','D3'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrengongzuonianxian').AsString);
      scEE.ExcelWorkSheet.Range['F3','F3'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrengongzuogangwei').AsString);
      scEE.ExcelWorkSheet.Range['H3','H3'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenrenxianzhinianxian').AsString);
      scEE.ExcelWorkSheet.Range['J3','J3'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenjishuzige').AsString);
      scEE.ExcelWorkSheet.Range['L3','L3'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenyuegongzishouru').AsString);
      scEE.ExcelWorkSheet.Range['N3','N3'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrengongjijinjiaocune').AsString);
      scEE.ExcelWorkSheet.Range['D4','D4'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrendanweiall').AsString);
      scEE.ExcelWorkSheet.Range['J4','J4'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhiall').AsString);
      scEE.ExcelWorkSheet.Range['M4','M4'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrendanweidianhua').AsString);
      scEE.ExcelWorkSheet.Range['M5','M5'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenjiatingdianhua').AsString);
      scEE.ExcelWorkSheet.Range['M6','M6'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenshouji').AsString);
      scEE.ExcelWorkSheet.Range['E7','E7'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenchengxinxitongchaxunqingkuang').AsString);
      scEE.ExcelWorkSheet.Range['L7','L7'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenyuqijiluqingkuang').AsString);
      scEE.ExcelWorkSheet.Range['D8','D8'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString);
      scEE.ExcelWorkSheet.Range['F8','F8'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);
      scEE.ExcelWorkSheet.Range['H8','H8'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeioudanweiall').AsString);
      scEE.ExcelWorkSheet.Range['M8','M8'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeioudanweidianhua').AsString);
      scEE.ExcelWorkSheet.Range['M9','M9'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeioujiatingdianhua').AsString);
      scEE.ExcelWorkSheet.Range['D10','D10'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiouxueli').AsString);
      scEE.ExcelWorkSheet.Range['F10','F10'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiougongzuonianxian').AsString);
      scEE.ExcelWorkSheet.Range['H10','H10'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiougongzuogangwei').AsString);
      scEE.ExcelWorkSheet.Range['J10','J10'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiourenxianzhinianxian').AsString);
      scEE.ExcelWorkSheet.Range['L10','L10'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString);
      scEE.ExcelWorkSheet.Range['N10','N10'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiougongjijinjiaocune').AsString);
      scEE.ExcelWorkSheet.Range['D11','D11'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiouchengxinxitongchaxunqingkuang').AsString);
      scEE.ExcelWorkSheet.Range['I11','I11'].Value :=
        formatvalue(ADOQuery1.FieldByName('gongyangrenqingkuang').AsString);
      scEE.ExcelWorkSheet.Range['L11','L11'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiouyuqijiluqingkuang').AsString);
      scEE.ExcelWorkSheet.Range['C12','C12'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiatingqitashourulaiyuan').AsString);
      scEE.ExcelWorkSheet.Range['H12','H12'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiatingyuezongshouru').AsString);
      scEE.ExcelWorkSheet.Range['J12','J12'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiatingqitafuzhaijizhichu').AsString);
      scEE.ExcelWorkSheet.Range['D13','D13'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiatingshouruzhenshixingjihelipingjia').AsString);
      scEE.ExcelWorkSheet.Range['C14','C14'].Value :=
        formatvalue(ADOQuery1.FieldByName('shoufangrenxingming').AsString);
      scEE.ExcelWorkSheet.Range['E14','E14'].Value :=
        formatvalue(ADOQuery1.FieldByName('shoufangrenxingbie').AsString);
      scEE.ExcelWorkSheet.Range['G14','G14'].Value :=
        formatvalue(ADOQuery1.FieldByName('shoufangrenshenfenzhenghaoma').AsString);
      scEE.ExcelWorkSheet.Range['I14','I14'].Value :=
        formatvalue(ADOQuery1.FieldByName('hunfou').AsString);
      scEE.ExcelWorkSheet.Range['K14','K14'].Value :=
        formatvalue(ADOQuery1.FieldByName('fangchangongyourenxingming').AsString);
      scEE.ExcelWorkSheet.Range['M14','M14'].Value :=
        formatvalue(ADOQuery1.FieldByName('fangchangongyourenshenfenzhenghaoma').AsString);
      scEE.ExcelWorkSheet.Range['D15','D15'].Value :=
        formatvalue(ADOQuery1.FieldByName('shifoutongyi').AsString);
      scEE.ExcelWorkSheet.Range['F15','F15'].Value :=
        formatvalue(ADOQuery1.FieldByName('chanquanzhengbianhao').AsString);
      scEE.ExcelWorkSheet.Range['I15','I15'].Value :=
        formatvalue(ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
      scEE.ExcelWorkSheet.Range['M15','M15'].Value :=
        formatvalue(ADOQuery1.FieldByName('fangwujianchengniandai').AsString);
      scEE.ExcelWorkSheet.Range['D16','D16'].Value :=
        formatvalue(ADOQuery1.FieldByName('fangwuxingzhi').AsString);
      scEE.ExcelWorkSheet.Range['F16','F16'].Value :=
        formatvalue(ADOQuery1.FieldByName('fangwujianzhumianji').AsString);
      scEE.ExcelWorkSheet.Range['H16','H16'].Value :=
        formatvalue(ADOQuery1.FieldByName('fushufangwujianzhumianji').AsString);
      scEE.ExcelWorkSheet.Range['J16','J16'].Value :=
        formatvalue(ADOQuery1.FieldByName('loucong').AsString);
      scEE.ExcelWorkSheet.Range['L16','L16'].Value :=
        formatvalue(ADOQuery1.FieldByName('fangwujiegoujichaoxiang').AsString);
      scEE.ExcelWorkSheet.Range['D17','D17'].Value :=
        formatvalue(ADOQuery1.FieldByName('peitaosheshi').AsString);
      scEE.ExcelWorkSheet.Range['H17','H17'].Value :=
        formatvalue(ADOQuery1.FieldByName('tudiquanliqingkuang').AsString);
      scEE.ExcelWorkSheet.Range['K17','K17'].Value :=
        formatvalue(ADOQuery1.FieldByName('bianxiannenglipingjia').AsString);
      scEE.ExcelWorkSheet.Range['D18','D18'].Value :=
        formatvalue(ADOQuery1.FieldByName('pinggujigoumingcheng').AsString);
      scEE.ExcelWorkSheet.Range['G18','G18'].Value :=
        formatvalue(ADOQuery1.FieldByName('pinggurenzizhi').AsString);
      scEE.ExcelWorkSheet.Range['I18','I18'].Value :=
        formatvalue(ADOQuery1.FieldByName('shifouzhunru').AsString);
      scEE.ExcelWorkSheet.Range['K18','K18'].Value :=
        formatvalue(ADOQuery1.FieldByName('gujiafangfa').AsString);
      scEE.ExcelWorkSheet.Range['M18','M18'].Value :=
        formatvalue(ADOQuery1.FieldByName('pinggujiageall').AsString);
      scEE.ExcelWorkSheet.Range['D19','D19'].Value :=
        formatvalue(ADOQuery1.FieldByName('pinggujiageall').AsString);
      scEE.ExcelWorkSheet.Range['F19','F19'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiagehelixingpingjia').AsString);
      scEE.ExcelWorkSheet.Range['K19','K19'].Value :=
        '�ױ���,��Ѻ��'+formatvalue(ADOQuery1.FieldByName('diyalv').AsString)+',�������й涨';
      scEE.ExcelWorkSheet.Range['C20','C20'].Value :=
        formatvalue(ADOQuery1.FieldByName('shoufukuanbili').AsString);
      scEE.ExcelWorkSheet.Range['E20','E20'].Value :=
        formatvalue(ADOQuery1.FieldByName('shoufukuanjine').AsString);
      scEE.ExcelWorkSheet.Range['G20','G20'].Value :=
        formatvalue(ADOQuery1.FieldByName('shoufouqiandinggoufanghetong').AsString);
      scEE.ExcelWorkSheet.Range['J20','J20'].Value :=
        formatvalue(ADOQuery1.FieldByName('goufangyongtu').AsString);
      scEE.ExcelWorkSheet.Range['L20','L20'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiaoyibeijingzhenshixingqueren').AsString);
      scEE.ExcelWorkSheet.Range['C21','C21'].Value :=
        formatvalue(ADOQuery1.FieldByName('daikuanjine').AsString);
      scEE.ExcelWorkSheet.Range['E21','E21'].Value :=
        formatvalue(ADOQuery1.FieldByName('qixian').AsString);
      scEE.ExcelWorkSheet.Range['G21','G21'].Value :=
        formatvalue(ADOQuery1.FieldByName('lilv').AsString);
      scEE.ExcelWorkSheet.Range['I21','I21'].Value :=
        formatvalue(ADOQuery1.FieldByName('huankuanfangshi').AsString);
      scEE.ExcelWorkSheet.Range['K21','K21'].Value :=
        formatvalue(ADOQuery1.FieldByName('yunhuankuane').AsString);
      scEE.ExcelWorkSheet.Range['M21','M21'].Value :=
        formatvalue(ADOQuery1.FieldByName('yuehuankuanezhanyueshourubili').AsString);

      //����
      scEE.ExcelWorkSheet.Range['D37','D37'].Value :=
        formatvalue(ADOQuery1.FieldByName('toubaojine').AsString);
      scEE.ExcelWorkSheet.Range['F37','F37'].Value :=
        formatvalue(ADOQuery1.FieldByName('xianzhong').AsString);
      scEE.ExcelWorkSheet.Range['H37','H37'].Value :=
        formatvalue(ADOQuery1.FieldByName('shouyiren').AsString);
      scEE.ExcelWorkSheet.Range['J37','J37'].Value :=
        formatvalue(ADOQuery1.FieldByName('qixian').AsString);

      scEE.ExcelWorkSheet.Range['B38','B38'].Value :=
        '��������'+formatvalue(ADOQuery1.FieldByName('daikuanjineall').AsString)+'��Ԫ���ܹ���Ѻ��Ϊ'+
        formatvalue(ADOQuery1.FieldByName('diyalv').AsString)+'���������д���'+
        formatvalue(ADOQuery1.FieldByName('daikuanjine').AsString)+'��Ԫ�����д����Ѻ��'+
        formatvalue(ADOQuery1.FieldByName('yinhangdiyalv').AsString)+'�����������'+
        formatvalue(ADOQuery1.FieldByName('gongjijindaikuanjine').AsString)+'��Ԫ������������Ѻ��'+
        formatvalue(ADOQuery1.FieldByName('gongjijindiyalv').AsString)+'�������»����Ϊ'+
        formatvalue(ADOQuery1.FieldByName('yunhuankuane').AsString)+'Ԫ��ռ��������'+
        formatvalue(ADOQuery1.FieldByName('yinhangyuehuankuanezhanyueshourubili').AsString)+'���������»����'+
        formatvalue(ADOQuery1.FieldByName('gongjijinyuehuankuane').AsString)+'Ԫ��ռ��������'+
        formatvalue(ADOQuery1.FieldByName('gongjijinyuehuankuanezhanyueshourubili').AsString)+
        '�����к͹������»����ܶ�ռ�������'+formatvalue(ADOQuery1.FieldByName('yuehuankuanezhanyueshourubili').AsString)+
        '�����ϴ���Ҫ���н���'+formatvalue(ADOQuery1.FieldByName('zhongjie').AsString);

      scEE.SaveAs(sd.FileName,ffxls);
      showmessage('�ѵ����ɹ�');

    finally
      scEE.Disconnect;
    end;
  end;
end;

procedure TFrmEdt.N19Click(Sender: TObject);
begin
  exportshenpixinxi;
end;

procedure TFrmEdt.N20Click(Sender: TObject);
var FrmDaiKuanChengNuoHan:TFrmDaiKuanChengNuoHan;
begin
  FrmDaiKuanChengNuoHan := TFrmDaiKuanChengNuoHan.Create(self);
  if cb.checked then
    FrmDaiKuanChengNuoHan.quickrep1.Preview
  else
    FrmDaiKuanChengNuoHan.quickrep1.Print;
end;

procedure TFrmEdt.N23Click(Sender: TObject);
var FrmJuJieShu:TFrmJuJieShu;
begin
  FrmJuJieShu := TFrmJuJieShu.Create(self);
  if cb.checked then
    FrmJuJieShu.quickrep1.Preview
  else
    FrmJuJieShu.quickrep1.Print;

end;

procedure TFrmEdt.N25Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportdaikuanshenpibiao(true, true)
  else
    self.exportdaikuanshenpibiao(true, false);
end;

procedure TFrmEdt.Button5Click(Sender: TObject);
var tmp:String;
begin
  Button1Click(self);

  if ((DBMemo4.Lines.Text <> '') and sysconfirm('������Ѵ���,�Ƿ񸲸�?')) or (DBMemo4.Lines.Text='') then begin
    if ADOQuery1.FieldByName('jiekuanzhonglei').AsString<> '�ھӱ�' then
      tmp := getAnJieBaoGao
    else
      tmp := getEDuBaoGao;
				
    DBMemo4.Lines.Text := tmp;
    DataSource4.DataSet.Post;
    DataSource4.DataSet.Edit;
  end;
end;

procedure TFrmEdt.Button6Click(Sender: TObject);
var tmp:String;
begin
  Button1Click(self);
  if ((DBMemo5.Lines.Text <> '') and sysconfirm('������Ѵ���,�Ƿ񸲸�?')) or (DBMemo5.Lines.Text='') then begin
    tmp :='ʡ�и��˽��ڲ�:'+#13#10+
          '    �����ϱ�����������ϵͳ�е�ҵ����Ϊ'+ADOQuery1.FieldByName('yewubianhao').AsString+','+
          '�����Ϊ'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'�����Ϊ'+
          ADOQuery1.FieldByName('daikuanjineall').AsString+'��Ԫ�ĸ���ס�����ʴ����У�'+
          'Ϊ���˵���ñʴ����������ֽ�����ϵͳ���������������ֵĲ������ݲ���˵�����£�'+#13#10+
          'һ�� ����˻��������'+#13#10+
          '�����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrenxingbie').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrennianling').AsString+'�꣬ѧ����'+
          ADOQuery1.FieldByName('jiekuanrenxueli').AsString+
          '�����֤��'+ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString+
          '����ס'+ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString+
          '��������λ��'+ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrengongzuogangwei').AsString+
          '��������'+ADOQuery1.FieldByName('jiekuanrenyuegongzishouru').AsString+
          'Ԫ���½ɹ������'+ADOQuery1.FieldByName('yuejiaogongjijine').AsString+
          'Ԫ����ż'+ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrenpeiounianling').AsString+'�꣬ѧ����'+
          ADOQuery1.FieldByName('jiekuanrenpeiouxueli').AsString+'�����֤�ţ�'+
          ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString+'��������λ��'+
          ADOQuery1.FieldByName('jiekuanrenpeiougongzuodanwei').AsString+
          '��������'+ADOQuery1.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString+
          'Ԫ����ͥ��������'+ADOQuery1.FieldByName('jiatingyuezongshouru').AsString+
          'Ԫ��������ϵͳ���飬����˼�����ż����������Ͳ�����¼���۷���'+
          ADOQuery1.FieldByName('shoufangrenxingming').AsString+'����ż'+
          ADOQuery1.FieldByName('fangchangongyourenxingming').AsString+
          '��ͬ����۴˷�������˫��������ʵ��Ч��'+#13#10+
          '������������'+#13#10+
          '�����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'��Ҫ����λ��'+
          ADOQuery1.FieldByName('fangwudiliweizhi').AsString+'���ݣ����������������'+
          ADOQuery1.FieldByName('jiekuanzhonglei').AsString+'���ô�����������'+
          ADOQuery1.FieldByName('pinggujiage2').AsString+'��Ԫ�������'+
          ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'������������'+
          ADOQuery1.FieldByName('shoufukuanbili').AsString+'���׸���'+
          ADOQuery1.FieldByName('shoufukuanjine').AsString+'��Ԫ�������빫�������'+
          ADOQuery1.FieldByName('gongjijindaikuanjine').AsString+'��Ԫ��������������'+
          ADOQuery1.FieldByName('daikuanjine').AsString+
          '��Ԫ�������֧������������'+ADOQuery1.FieldByName('qixian').AsString+'�ꡣ'+#13#10+
          '�������������'+#13#10+
          '����˽�����'+ADOQuery1.FieldByName('fangwudiliweizhi').AsString+
          '���ݵ�Ѻ�����У��÷�����'+ADOQuery1.FieldByName('pinggujigoumingcheng').AsString+
          '�������÷��ݽ������'+ADOQuery1.FieldByName('fangwujianchengniandai').AsString+
          '�꣬�������'+ADOQuery1.FieldByName('fangwujianzhumianji').AsString+
          'ƽ���ף�Ϊ'+ADOQuery1.FieldByName('fangwujiegoujichaoxiang').AsString+'��'+
          ADOQuery1.FieldByName('peitaosheshi').AsString+'��������'+
          ADOQuery1.FieldByName('pinggujiage2').AsString+'��Ԫ����Ѻ��'+
          ADOQuery1.FieldByName('diyalv').AsString+'�������������'+
          ADOQuery1.FieldByName('gongjijindaikuanjine').AsString+'�򣬵�Ѻ��'+
          ADOQuery1.FieldByName('gongjijindiyalv').AsString+'�����д���'+
          ADOQuery1.FieldByName('daikuanjine').AsString+'�򣬵�Ѻ��'+
          ADOQuery1.FieldByName('yinhangdiyalv').AsString+'�����������й�����ס���������ߡ�'+
          '�õ�Ѻ����λ��'+ADOQuery1.FieldByName('fangwudiliweizhi').AsString+
          '���ؽǽϺã����ൺ��'+ADOQuery1.FieldByName('fangwuhuanjing').AsString+
          '����Χ��ͨ����������������ʩ��ȫ��'+
          '��ҵ�����Ǿ�ס�����볡�������Զ�����������'+
          ADOQuery1.FieldByName('daikuanjine').AsString+'��Ԫ������е�����'+#13#10+
          '�ġ���������������'+#13#10+
          '������������'+ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString+
          '������Ϊ��λ��ʽְ����ְ��'+ADOQuery1.FieldByName('jiekuanrengongzuogangwei').AsString+
          '��'+ADOQuery1.FieldByName('jiekuanrendanweijianyaoshuoming').AsString+
          ',�����ȶ�������ϸ�;��ż��'+ADOQuery1.FieldByName('jiekuanrenpeioudanweiall').AsString+
          ',���������˼�����ż���������ʵ����ͥ�����������ϡ�����˲���'+
          ADOQuery1.FieldByName('huankuanfangshi').AsString+'�����������»����'+
          ADOQuery1.FieldByName('yunhuankuane').AsString+'Ԫ���������»����'+
          ADOQuery1.FieldByName('gongjijinyuehuankuane').AsString+'Ԫ�����ܻ����ռ���������'+
          ADOQuery1.FieldByName('yuehuankuanezhanyueshourubili').AsString+
          '����������ס���������ߣ������׸�'+ADOQuery1.FieldByName('shoufukuanbili').AsString
          +'���׸���'+ADOQuery1.FieldByName('shoufukuanjine').AsString+'��Ԫ���߱�����������'+
          '���������������������˾߱����������������ͬ��������'+
          ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'����ס������'+
          ADOQuery1.FieldByName('daikuanjine').AsString+'��Ԫ������'+
          ADOQuery1.FieldByName('qixian').AsString+'�ꡣ'+#13#10+
          'ҵ�������������:'+ADOQuery1.FieldByName('dailiren').AsString+'          ����:             �г�:'+ #13#10+
          '��ϵ�绰:'+ADOQuery1.FieldByName('dailirendianhua').AsString+#13#10+
          ADOQuery1.FieldByName('jiekuanshijian').AsString;

    DBMemo5.Lines.Text := tmp;
    DataSource4.DataSet.Post;
    DataSource4.DataSet.Edit;
  end;
end;

procedure TFrmEdt.N27Click(Sender: TObject);
begin
  exportyijianbiao1;  
end;

procedure TFrmEdt.N28Click(Sender: TObject);
begin
  exportyijianbiao2;
end;

procedure TFrmEdt.MenuItem8Click(Sender: TObject);
begin
  self.exportshouxinshenqingbiao;
end;

procedure TFrmEdt.N26Click(Sender: TObject);
begin
  exportdaikuanshenpibiao(false, false);
end;

procedure TFrmEdt.DBComboBox30Change(Sender: TObject);
var i:Integer;
begin
  for i:=0 to self.ComponentCount-1 do begin
    if self.Components[i].ClassType=TLabel then begin
      TLabel(self.Components[i]).color := clSkyBlue;
    end;
  end;

  if DBComboBox30.ItemIndex = 0 then begin
    //�ھӱ�
    ATDaiKuan.FieldByName('jiekuanyongtu').AsString := '����'; 
    ATDaiKuan.Post;
    ATDaiKuan.Edit;
  end else if DBComboBox30.ItemIndex=1then begin
    //���ַ���ϴ���
    Label147.Color := clBtnFace;
    Label146.Color := clBtnFace;
  end else if DBComboBox30.ItemIndex=2then begin
    //���ַ�����
    Label147.Color := clBtnFace;
    Label146.Color := clBtnFace;

    Label83.Color := clBtnFace;
    Label94.Color := clBtnFace;
    Label103.Color := clBtnFace;
    Label92.Color := clBtnFace;
    Label95.Color := clBtnFace;
    Label93.Color := clBtnFace;
    Label124.Color := clBtnFace;
  end else if DBComboBox30.ItemIndex=3then begin
    //һ�ַ�������ϴ���
    Label66.Color := clBtnFace;
    Label44.Color := clBtnFace;
    Label46.Color := clBtnFace;
    Label136.Color := clBtnFace;
    Label135.Color := clBtnFace;
    Label45.Color := clBtnFace;
    Label137.Color := clBtnFace;
    Label50.Color := clBtnFace;
    Label49.Color := clBtnFace;
    Label104.Color := clBtnFace;
    Label51.Color := clBtnFace;

  end else if DBComboBox30.ItemIndex=4then begin
    //һ�ַ����Ҵ���
    Label66.Color := clBtnFace;
    Label44.Color := clBtnFace;
    Label46.Color := clBtnFace;
    Label136.Color := clBtnFace;
    Label135.Color := clBtnFace;
    Label45.Color := clBtnFace;
    Label137.Color := clBtnFace;
    Label50.Color := clBtnFace;
    Label49.Color := clBtnFace;
    Label104.Color := clBtnFace;
    Label51.Color := clBtnFace;


    Label83.Color := clBtnFace;
    Label94.Color := clBtnFace;
    Label103.Color := clBtnFace;
    Label92.Color := clBtnFace;
    Label95.Color := clBtnFace;
    Label93.Color := clBtnFace;
    Label124.Color := clBtnFace;
  end;

  if DBComboBox30.ItemIndex = 0 then
    TabSheet5.Caption := '��ȵ��鱨��'
  else
    TabSheet5.Caption := '���ұ���';
end;

procedure TFrmEdt.N16Click(Sender: TObject);
begin
  N6click(self);
  N13click(self);
  N21click(self);
  N5click(self);
  N1click(self);
  N1click(self);
  N4click(self);
  N3click(self);
  N2click(self);
  N17click(self);
  N29click(self);
  N8click(self);
  N31click(self);
end;

procedure TFrmEdt.N29Click(Sender: TObject);
var FrmJieKuanJieJu:TFrmJieKuanJieJu;
begin
  //
  FrmJieKuanJieJu:=TFrmJieKuanJieJu.Create(self);
  if cb.checked then
    FrmJieKuanJieJu.quickrep1.Preview
  else
    FrmJieKuanJieJu.quickrep1.Print;
end;

procedure TFrmEdt.N31Click(Sender: TObject);
var FrmYaPinShouJu:TFrmYaPinShouJu;
begin
  //
  FrmYaPinShouJu:=TFrmYaPinShouJu.Create(self);
  FrmYaPinShouJu.init;
  if cb.checked then
    FrmYaPinShouJu.quickrep1.Preview
  else
    FrmYaPinShouJu.quickrep1.Print;
end;

procedure TFrmEdt.N32Click(Sender: TObject);
var FrmLanCunZhengMing:TFrmLanCunZhengMing;
begin
  //
  FrmLanCunZhengMing:=TFrmLanCunZhengMing.Create(self);
  if cb.checked then
    FrmLanCunZhengMing.quickrep1.Preview
  else
    FrmLanCunZhengMing.quickrep1.Print;
end;

procedure TFrmEdt.Button7Click(Sender: TObject);
begin
  ATLianMingKeHu.Insert;
end;

procedure TFrmEdt.Button8Click(Sender: TObject);
begin
  if not (ATLIanMingKehu.Bof and ATLianMingKeHu.Eof ) then
    if sysconfirm('ȷ��Ҫɾ��ô?') then
      ATLianMingKeHu.Delete;
end;

procedure TFrmEdt.Button9Click(Sender: TObject);
begin
  ATDiYaWu.insert;
end;

procedure TFrmEdt.Button10Click(Sender: TObject);
begin
  if not (ATDiYaWu.Bof and ATDiYaWu.Eof ) then
    if sysconfirm('ȷ��Ҫɾ��ô?') then
      ATDiYaWu.Delete;
end;

procedure TFrmEdt.Button11Click(Sender: TObject);
begin
  if (ATDiYAWu.Eof) and (ATDiYaWu.Bof) then begin
    ATDiYAWu.Insert;
    ATDiYAWu.FieldByName('¥������').AsString :=
      ATFangWu.FieldByName('fangwulouyumingcheng').AsString;
    ATDiYAWu.FieldByName('����').AsString :=
      ATFangWu.FieldByName('fangwufanghao').AsString;
    ATDiYAWu.FieldByName('Ȩ����').AsString :=
      ATJieKuanRen.FieldByName('jiekuanrenxingming').AsString;
    ATDiYAWu.FieldByName('���').AsString :=ATFangWu.FieldByName('fangwujianzhumianji').AsString;
    ATDiYAWu.FieldByName('����').AsString :='��Ʒ��';
    ATDiYAWu.FieldByName('����ʹ������').AsString := '50';
    try
      ATDiYAWu.FieldByName('Ȩ����ֵ').AsString :=
        vartostr(ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000);
    except
    end;
    ATDiYAWu.FieldByName('Ȩ��֤1').AsString :='����֤��';

  end else begin
    if sysconfirm('�����������滻��ǰ��Ϣ?') then begin
      ATDiYAWu.edit;
      ATDiYAWu.FieldByName('¥������').AsString :=
        ATFangWu.FieldByName('fangwulouyumingcheng').AsString;
      ATDiYAWu.FieldByName('����').AsString :=
        ATFangWu.FieldByName('fangwufanghao').AsString;
      ATDiYAWu.FieldByName('Ȩ����').AsString :=
        ATJieKuanRen.FieldByName('jiekuanrenxingming').AsString;
      ATDiYAWu.FieldByName('���').AsString :=ATFangWu.FieldByName('fangwujianzhumianji').AsString;
      ATDiYAWu.FieldByName('����').AsString :='��Ʒ��';
      ATDiYAWu.FieldByName('����ʹ������').AsString := '50';
      try
        ATDiYAWu.FieldByName('Ȩ����ֵ').AsString :=
          vartostr(ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000);
        except
      end;
      ATDiYAWu.FieldByName('Ȩ��֤1').AsString :='����֤��';
    end;
  end;
end;

procedure TFrmEdt.DBComboBox31Exit(Sender: TObject);
begin
  try
    if DBCombobox31.Text='�ȶ��' then begin
      ATDaiKuan.fieldByName('yunhuankuane').AsString
        := formatcurr('0.00',strtocurr(DBEdit59.Text)*10000/strtocurr(DBEdit73.Text)/12+
             strtocurr(DBEdit59.Text)*10000*strtocurr(stringreplace(DBComboBox35.Text,'��','',[]))/1000);
    end else if DBCombobox31.Text='�ȶ�' then begin
      ATDaiKuan.fieldByName('yunhuankuane').AsString
        := formatcurr('0.00',strtocurr(DBEdit59.Text)*10000*strtocurr(stringreplace(DBComboBox35.Text,'��','',[]))/1000*power(1+strtocurr(stringreplace(DBComboBox35.Text,'��','',[]))/1000,strtocurr(DBEdit73.Text)*12)/
             (power(1+strtocurr(stringreplace(DBComboBox35.Text,'��','',[]))/1000,strtocurr(DBEdit73.Text)*12)-1));
    end;
  finally
  end;
end;

procedure TFrmEdt.exportchengnuonew(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '��ŵ����Ȩ��.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('��ŵ����Ȩ��', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);

    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenpeiouxingming',ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString);
    WordControlFrm.replace('%chanquanzhengbianhao',ADOQuery1.FieldByName('chanquanzhengbianhao').AsString);
    WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%daikuanjine',ADOQuery1.FieldByName('daikuanjine').AsString);
    WordControlFrm.replace('%jiekuanzhonglei',ADOQuery1.FieldByName('jiekuanzhonglei').AsString);
    WordControlFrm.replace('%jiekuanyongtu',ADOQuery1.FieldByName('jiekuanyongtu').AsString);


    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;

procedure TFrmEdt.exportgerenxingyongchaxun(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '�������ñ����ѯ��Ȩ��.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�������ñ����ѯ��Ȩ��', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);

    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%jiekuanshijian', ADOQuery1.FieldByName('jiekuanshijian').AsString);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;

end;


procedure TFrmEdt.exportgongtongzhaiwurenchengnuohan(print,
  PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '��ͬծ���˳�ŵ��.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('��ͬծ���˳�ŵ��', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);

    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenpeiouxingming',ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString);
    WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%daikuanjine',ADOQuery1.FieldByName('daikuanjine').AsString);
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanrenpeioushenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanshijian', ADOQuery1.FieldByName('jiekuanshijian').AsString);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;

end;



procedure TFrmEdt.exportbuchongxieyi(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '�ٽ���ס�������Э��.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�ٽ���ס�������Э��', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);

    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%hetonghao',ADOQuery1.FieldByName('hetonghao').AsString);
    WordControlFrm.replace('%jiekuanrencunzhezhanghao',ADOQuery1.FieldByName('jiekuanrencunzhezhanghao').AsString);
    WordControlFrm.replace('%shoufangrenxingming',ADOQuery1.FieldByName('shoufangrenxingming').AsString);
    WordControlFrm.replace('%shoufangrenshenfenzhenghaoma',ADOQuery1.FieldByName('shoufangrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%shoufangrencunzhezhanghao',ADOQuery1.FieldByName('shoufangrencunzhezhanghao').AsString);
    WordControlFrm.replace('%jiekuanshijian', ADOQuery1.FieldByName('jiekuanshijian').AsString);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;


procedure TFrmEdt.exportchuzhixieyishu(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '����Э����.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('����Э����', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);

    WordControlFrm.replace('%jiekuanzhihangdianhua',ADOQuery1.FieldByName('jiekuanzhihangdianhua').AsString);
    WordControlFrm.replace('%jiekuanzhihangdizhi',ADOQuery1.FieldByName('jiekuanzhihangdizhi').AsString);
    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%daikuanjine',ADOQuery1.FieldByName('daikuanjine').AsString );
    WordControlFrm.replace('%yunhuankuane', ADOQuery1.FieldByName('yunhuankuane').AsString);
    WordControlFrm.replace('%jiekuanrenjiatingdianhua', ADOQuery1.FieldByName('jiekuanrenjiatingdianhua').AsString);
    WordControlFrm.replace('%jiekuanshijian', ADOQuery1.FieldByName('jiekuanshijian').AsString);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;



function TFrmEdt.getDataFromMain(table: TADOTable): String;
var fieldstr, valuestr:String;
i:Integer;
begin
  fieldstr := '';
  valuestr := '';

  for i:= 0 to table.Fields.Count - 1 do begin
    if (lowercase(table.Fields[i].FieldName) <> 'id') and (lowercase(table.Fields[i].FieldName) <> 'mainid')
      and (lowercase(table.Fields[i].FieldName) <> '���') then begin
      
      if fieldstr <> '' then fieldstr := fieldstr + ' , ';
      if valuestr <> '' then valuestr := valuestr + ' , ';

      fieldstr := fieldstr + table.Fields[i].FieldName;

      case table.Fields[i].DataType of
        ftString,ftWideString,ftMemo,ftDate,ftDateTime:
          valuestr := valuestr + ''''+StringReplace(table.Fields[i].AsString,'''','''''',[rfReplaceAll])+'''';
      else
        {ftWord,ftFloat,ftCurrency,ftBCD:
          result := 'Double';
        ftSmallint,ftInteger:
          result := 'Integer';  }
        valuestr := valuestr + table.Fields[i].AsString;
      end;

    end;
  end;

  result := 'insert into '+table.TableName+'( '+fieldstr+' ) values ( '+valuestr+' )'; 
end;

function TFrmEdt.exportToXML(path: String):String;
var rootNode, node:IXMLNode;
  xmlDoc:IXMLDocument;
  sd:TSaveDialog;
  filename:String;
begin
  if path <> '' then begin
    filename := path+'\'+ATJieKuanRen.FieldByName('jiekuanrenxingming').AsString + '.gjj';
    while FileExists(filename) do
      filename := copy(filename, 1, pos('.gjj', filename)-1)+'2.gjj';
  end else begin
    sd := TSaveDialog.Create(nil);
    try

      sd.FileName := ATJieKuanRen.FieldByName('jiekuanrenxingming').AsString + '.gjj';
      if sd.Execute then begin
        filename := sd.FileName;
      end;
    finally
      sd.Free;
    end;
  end;

  if filename <> '' then begin
    xmlDoc := TXMLDocument.Create(nil);
    try
      xmlDoc.Active := True;
      xmlDoc.Version := '1.0';   //�汾
      xmlDoc.Encoding :='GB2312';//����
      rootNode := xmlDoc.AddChild('data');//�����

      //main
      node := rootNode.AddChild('t_main');
      node.NodeValue := getDataFromMain(ATMain);

      //daikuan
      node := rootNode.AddChild(ATDaiKuan.TableName);
      node.NodeValue := getDataFromTable(ATDaiKuan);

      //diyawu
      node := rootNode.AddChild(ATDiYaWu.TableName);
      node.NodeValue := getDataFromTable(ATDiYaWu);

      //fangwu
      node := rootNode.AddChild(ATFangWu.TableName);
      node.NodeValue := getDataFromTable(ATFangWu);

      //jiekuanren
      node := rootNode.AddChild(ATJieKuanRen.TableName);
      node.NodeValue := getDataFromTable(ATJieKuanRen);

      //lianmingkehu
      node := rootNode.AddChild(ATLianMingKeHu.TableName);
      node.NodeValue := getDataFromTable(ATLianMingKeHu);

      //zhengxin
      node := rootNode.AddChild(ATZhengXin.TableName);
      node.NodeValue := getDataFromTable(ATZhengXin);

      xmldoc.SaveToFile(filename);
    finally
      xmlDoc := nil;
    end;
    result := filename;
  end;

end;


function TFrmEdt.getDataFromTable(table: TADOTable): String;
var fieldstr, valuestr:String;
i:Integer;
begin
  fieldstr := '';
  valuestr := '';

  for i:= 0 to table.Fields.Count - 1 do begin
    if (lowercase(table.Fields[i].FieldName) <> 'id') and (lowercase(table.Fields[i].FieldName) <> 'mainid')
      and (lowercase(table.Fields[i].FieldName) <> '���') then begin
      
      if fieldstr <> '' then fieldstr := fieldstr + ' , ';
      if valuestr <> '' then valuestr := valuestr + ' , ';

      fieldstr := fieldstr + table.Fields[i].FieldName;

      case table.Fields[i].DataType of
        ftString,ftWideString,ftMemo,ftDate,ftDateTime:
          valuestr := valuestr + ''''+StringReplace(table.Fields[i].AsString,'''','''''',[rfReplaceAll])+'''';
      else
        {ftWord,ftFloat,ftCurrency,ftBCD:
          result := 'Double';
        ftSmallint,ftInteger:
          result := 'Integer';  }
        valuestr := valuestr + table.Fields[i].AsString;
      end;

    end;
  end;

  result := 'insert into '+table.TableName+'( mainid, '+fieldstr+' ) values ($mainid$, '+valuestr+')'; 
end;

procedure TFrmEdt.exportzhiyahetong(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '���۴�����������±�֤�𶯲���Ѻ��ͬ.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('���۴�����������±�֤�𶯲���Ѻ��ͬ', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);

    WordControlFrm.replace('%hetonghao',ADOQuery1.FieldByName('hetonghao').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString );
    WordControlFrm.replace('%jiekuanrencunzhezhanghao', ADOQuery1.FieldByName('jiekuanrencunzhezhanghao').AsString);
    WordControlFrm.replace('%jiekuanrenxianjuzhudizhi', ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    WordControlFrm.replace('%jiekuanrenshouji', ADOQuery1.FieldByName('jiekuanrenshouji').AsString);
    WordControlFrm.replace('%jiekuanzhihang', ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%daikuanjinedaxie', Changdx2(ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000));
    WordControlFrm.replace('%daikuanjinexiaoxie', vartoStr(ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000));
    WordControlFrm.replace('%dayinshijian', dayinshijian);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;

procedure TFrmEdt.exportjiekuandiyahetong(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '���ַ�����Ѻ��ͬ.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('���ַ�����Ѻ��ͬ', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);

    WordControlFrm.replace('%hetonghao',ADOQuery1.FieldByName('hetonghao').AsString);
    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString );
    WordControlFrm.replace('%jiekuanrencunzhezhanghao', ADOQuery1.FieldByName('jiekuanrencunzhezhanghao').AsString);
    WordControlFrm.replace('%jiekuanrenxianjuzhudizhi', ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    WordControlFrm.replace('%jiekuanrenshouji', ADOQuery1.FieldByName('jiekuanrenshouji').AsString);
    WordControlFrm.replace('%jiekuanrenyoubian', ADOQuery1.FieldByName('jiekuanrenyoubian').AsString);
    WordControlFrm.replace('%jiekuanrenpeiouxingming', ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString);
    WordControlFrm.replace('%jiekuanrenpeioushouji', ADOQuery1.FieldByName('jiekuanrenpeioushouji').AsString);
    WordControlFrm.replace('%shoufangrenxingming', ADOQuery1.FieldByName('shoufangrenxingming').AsString);
    WordControlFrm.replace('%fangwudiliweizhi', ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%fangwujianzhumianji', ADOQuery1.FieldByName('fangwujianzhumianji').AsString);
    WordControlFrm.replace('%qixian', ADOQuery1.FieldByName('qixian').AsString);
    WordControlFrm.replace('%shoufangrencunzhezhanghao', ADOQuery1.FieldByName('shoufangrencunzhezhanghao').AsString);
    if ADOQuery1.FieldByName('huankuanfangshi').AsString = '�ȶ�' then begin
      WordControlFrm.replace('%huankuanfangshi', '(1)');
    end else begin
      WordControlFrm.replace('%huankuanfangshi', '(2)');
    end;
    WordControlFrm.replace('%yuehuankuanjinedaxie', Changdx2(ADOQuery1.FieldByName('yunhuankuane').AsCurrency));
    WordControlFrm.replace('%pinggujiage2', vartoStr(ADOQuery1.FieldByName('pinggujiage2').AsCurrency*10000));
    WordControlFrm.replace('%diyalv', ADOQuery1.FieldByName('diyalv').AsString);

    WordControlFrm.replace('%chanquanzhengbianhao', ADOQuery1.FieldByName('chanquanzhengbianhao').AsString);
    WordControlFrm.replace('%daikuanjinedaxie', Changdx2(ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000));
    WordControlFrm.replace('%daikuanjinexiaoxie', vartoStr(ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000));
    WordControlFrm.replace('%dayinshijian', dayinshijian);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;

procedure TFrmEdt.exportpinggubaogao(print, PrintPreview: boolean);
var filename, jiekuanshijian:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '��������.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('��������', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);

    WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%shoufangrenxingming',ADOQuery1.FieldByName('shoufangrenxingming').AsString);
    jiekuanshijian := formatDateTime('yyyy', ADOQuery1.FieldByName('jiekuanshijian').AsDateTime)+'��'+
                      formatDateTime('mm', ADOQuery1.FieldByName('jiekuanshijian').AsDateTime)+'��'+
                      formatDateTime('dd', ADOQuery1.FieldByName('jiekuanshijian').AsDateTime)+'��';
    WordControlFrm.replace('%jiekuanshijian', jiekuanshijian);
    WordControlFrm.replace('%year', formatDateTime('yyyy', ADOQuery1.FieldByName('jiekuanshijian').AsDateTime));
    WordControlFrm.replace('%pinggubianhao', ADOQuery1.FieldByName('pinggubianhao').AsString);
    WordControlFrm.replace('%chanquanzhengbianhao', ADOQuery1.FieldByName('chanquanzhengbianhao').AsString);
    WordControlFrm.replace('%fangwujianzhumianji', ADOQuery1.FieldByName('fangwujianzhumianji').AsString);
    WordControlFrm.replace('%fangwujianchengniandai', ADOQuery1.FieldByName('fangwujianchengniandai').AsString);
    WordControlFrm.replace('%pinggujiage2daxie', Changdx2(ADOQuery1.FieldByName('pinggujiage2').AsCurrency*10000));
    WordControlFrm.replace('%pinggujiage2', ADOQuery1.FieldByName('pinggujiage2').AsString);
    WordControlFrm.replace('%pinggujiage', ADOQuery1.FieldByName('pinggujiage').AsString);
    WordControlFrm.replace('%fangwujiegou', ADOQuery1.FieldByName('fangwujiegou').AsString);
    WordControlFrm.replace('%fangwuleixing', ADOQuery1.FieldByName('fangwuleixing').AsString);
    WordControlFrm.replace('%louconggong', ADOQuery1.FieldByName('louconggong').AsString);
    WordControlFrm.replace('%loucong', ADOQuery1.FieldByName('loucong').AsString);
    WordControlFrm.replace('%pingmianbuju', ADOQuery1.FieldByName('pingmianbuju').AsString);
    WordControlFrm.replace('%chaoxiang', ADOQuery1.FieldByName('chaoxiang').AsString);
    WordControlFrm.replace('%peitaosheshi', ADOQuery1.FieldByName('peitaosheshi').AsString);
    WordControlFrm.replace('%pinggudaoqishijian', inttoStr(strtoint(formatDateTime('yyyy', ADOQuery1.FieldByName('jiekuanshijian').AsDateTime))+1)+'��'+
                      formatDateTime('mm', ADOQuery1.FieldByName('jiekuanshijian').AsDateTime)+'��'+
                      formatDateTime('dd', ADOQuery1.FieldByName('jiekuanshijian').AsDateTime)+'��');

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;

procedure TFrmEdt.exportpinggubaogao2(print, PrintPreview: boolean);
var filename, jiekuanshijian:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '��������(����).doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('��������(����)', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);

    WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%shoufangrenxingming',ADOQuery1.FieldByName('shoufangrenxingming').AsString);
    jiekuanshijian := formatDateTime('yyyy', ADOQuery1.FieldByName('jiekuanshijian').AsDateTime)+'��'+
                      formatDateTime('mm', ADOQuery1.FieldByName('jiekuanshijian').AsDateTime)+'��'+
                      formatDateTime('dd', ADOQuery1.FieldByName('jiekuanshijian').AsDateTime)+'��';
    WordControlFrm.replace('%jiekuanshijian', jiekuanshijian);
    WordControlFrm.replace('%year', formatDateTime('yyyy', ADOQuery1.FieldByName('jiekuanshijian').AsDateTime));
    WordControlFrm.replace('%pinggubianhao', ADOQuery1.FieldByName('pinggubianhao').AsString);
    WordControlFrm.replace('%chanquanzhengbianhao', ADOQuery1.FieldByName('chanquanzhengbianhao').AsString);
    WordControlFrm.replace('%fangwujianzhumianji', ADOQuery1.FieldByName('fangwujianzhumianji').AsString);
    WordControlFrm.replace('%fangwujianchengniandai', ADOQuery1.FieldByName('fangwujianchengniandai').AsString);
    WordControlFrm.replace('%pinggujiage2daxie', Changdx2(ADOQuery1.FieldByName('pinggujiage2').AsCurrency*10000));
    WordControlFrm.replace('%pinggujiage2', ADOQuery1.FieldByName('pinggujiage2').AsString);
    WordControlFrm.replace('%pinggujiage', ADOQuery1.FieldByName('pinggujiage').AsString);
    WordControlFrm.replace('%fangwujiegou', ADOQuery1.FieldByName('fangwujiegou').AsString);
    WordControlFrm.replace('%fangwuleixing', ADOQuery1.FieldByName('fangwuleixing').AsString);
    WordControlFrm.replace('%louconggong', ADOQuery1.FieldByName('louconggong').AsString);
    WordControlFrm.replace('%loucong', ADOQuery1.FieldByName('loucong').AsString);
    WordControlFrm.replace('%pingmianbuju', ADOQuery1.FieldByName('pingmianbuju').AsString);
    WordControlFrm.replace('%chaoxiang', ADOQuery1.FieldByName('chaoxiang').AsString);
    WordControlFrm.replace('%peitaosheshi', ADOQuery1.FieldByName('peitaosheshi').AsString);
    WordControlFrm.replace('%pinggudaoqishijian', inttoStr(strtoint(formatDateTime('yyyy', ADOQuery1.FieldByName('jiekuanshijian').AsDateTime))+1)+'��'+
                      formatDateTime('mm', ADOQuery1.FieldByName('jiekuanshijian').AsDateTime)+'��'+
                      formatDateTime('dd', ADOQuery1.FieldByName('jiekuanshijian').AsDateTime)+'��');

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;

end;

procedure TFrmEdt.exportbaozhenghetong(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '�й����С��ھӱ�������ס��ѭ����ȴ��֤��ͬ.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�ھӱ�\�й����С��ھӱ�������ס��ѭ����ȴ��֤��ͬ', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);

    WordControlFrm.replace('%hetonghao',ADOQuery1.FieldByName('hetonghao').AsString);
    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString );
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma', ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanrenxianjuzhudizhi', ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    WordControlFrm.replace('%jiekuanrenshouji', ADOQuery1.FieldByName('jiekuanrenshouji').AsString);
    WordControlFrm.replace('%jiekuanzhihang', ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%daikuanjinedaxie', Changdx2(ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000));
    WordControlFrm.replace('%daikuanjinexiaoxie', vartoStr(ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000));
    WordControlFrm.replace('%dayinshijian', dayinshijian);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;

procedure TFrmEdt.exportzhufangmaimaihetong(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          'ס��������ͬ.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('ס��������ͬ', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);

    WordControlFrm.replace('%shoufangrenxingming',ADOQuery1.FieldByName('shoufangrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString );
    WordControlFrm.replace('%chanquanzhengbianhao', ADOQuery1.FieldByName('chanquanzhengbianhao').AsString);
    WordControlFrm.replace('%fangwujianzhumianji', ADOQuery1.FieldByName('fangwujianzhumianji').AsString);
    WordControlFrm.replace('%pinggujiage2xiaoxie', vartoStr(ADOQuery1.FieldByName('pinggujiage2').AsCurrency*10000));
    WordControlFrm.replace('%pinggujiage2daxie', Changdx2(ADOQuery1.FieldByName('pinggujiage2').AsCurrency*10000));
    WordControlFrm.replace('%shoufukuanjinexiaoxie', vartoStr(ADOQuery1.FieldByName('shoufukuanjine').AsCurrency*10000));
    WordControlFrm.replace('%shoufukuanjinedaxie', Changdx2(ADOQuery1.FieldByName('shoufukuanjine').AsCurrency*10000));
    WordControlFrm.replace('%daikuanjinexiaoxie', vartoStr(ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000));
    WordControlFrm.replace('%daikuanjinedaxie', Changdx2(ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000));
    WordControlFrm.replace('%shoufangrenshenfenzhenghaoma',ADOQuery1.FieldByName('shoufangrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%dayinshijian', dayinshijian);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;


procedure TFrmEdt.exportshoufukuanshoudaotiao(print,
  PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '�׸����յ���.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�ھӱ�/�׸����յ���', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);

    WordControlFrm.replace('%fangwudiweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%shoufukuanjinedaxie',Changdx2(ADOQuery1.FieldByName('shoufukuanjine').asCurrency*10000));
    WordControlFrm.replace('%shoufukuanjinexiaoxie', VartoStr(ADOQuery1.FieldByName('shoufukuanjine').asCurrency*10000));
    WordControlFrm.replace('%dayinshijian', dayinshijian);


    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;

procedure TFrmEdt.exportdengjishenqingshu(print,
  PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '�Ǽ�������.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�Ǽ�������', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);

    WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString );
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma', ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanrenshouji', ADOQuery1.FieldByName('jiekuanrenshouji').AsString);
    WordControlFrm.replace('%jiekuanrenxianjuzhudizhi', ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;

procedure TFrmEdt.exportdaikuanchengnuohan(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '�����ŵ��.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�ھӱ�/�����ŵ��', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);

    WordControlFrm.replace('%hetonghao',ADOQuery1.FieldByName('hetonghao').AsString);
    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanrenpeiouxingming',ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString);
    WordControlFrm.replace('%jiekuanrenpeioushenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanjinedaxie',Changdx2(ADOQuery1.FieldByName('daikuanjine').asCurrency*10000));
    WordControlFrm.replace('%jiekuanjinexiaoxie', VartoStr(ADOQuery1.FieldByName('daikuanjine').asCurrency*10000));
    WordControlFrm.replace('%fangwudiliweizhi', ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%pinggujiage2', ADOQuery1.FieldByName('pinggujiage2').AsString);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;


procedure TFrmEdt.exportwudaikuanshengming(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '�޴�������.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�ھӱ�/�޴�������', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);

    if ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString <>'' then
      WordControlFrm.replace('%jiekuanrenxingming',
        ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'����ż'+ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString)
    else
      WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanrenpeioushenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);
    WordControlFrm.replace('%dayinshijian', dayinshijian);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;



procedure TFrmEdt.exportedubaogao(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '���ھӱ�����ȵ��鱨��.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�ھӱ�/���ھӱ�����ȵ��鱨��', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);

    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%hetonghao',ADOQuery1.FieldByName('hetonghao').AsString);
    WordControlFrm.replace('%memo',ADOQuery1.FieldByName('diaocha1').AsString);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;

end;



function TFrmEdt.getAnJieBaoGao: String;
begin
  FrmMain.DSXiangMu.DataSet.Locate('xiangmumingcheng',ADOQuery1.FieldByName('xiangmumingcheng').AsString,[loPartialKey]);
  result :=  '    �����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
        '�������������'+ADOQuery1.FieldByName('jiekuanzhonglei').AsString+'�����Ϊ'+
        ADOQuery1.FieldByName('daikuanjineall').AsString+'��Ԫ,����'+
        ADOQuery1.FieldByName('qixian').AsString+
        '�꣬���ڸý�������������������ϴ������Ŵ���Ա����"��������"'+
        '�йع涨���й�����ס�����Ҵ���ҵ������������Խ���˵�����״����'+
        '������������Ѻ��������������ϸ���飬����������£�'+#13#10+
        'һ�� ����˻��������'+#13#10+
        '�����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'��'+
        ADOQuery1.FieldByName('jiekuanrenxingbie').AsString+'��'+
        ADOQuery1.FieldByName('jiekuanrennianling').AsString+'�꣬���֤��'+
        ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString+
        '����ס'+ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString+
        '��������λ��'+ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString+'������'+
        ADOQuery1.FieldByName('jiekuanrengongzuogangwei').AsString+
        '��������'+ADOQuery1.FieldByName('jiekuanrenyuegongzishouru').AsString+
        'Ԫ;��ż'+ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString+'��'+
        ADOQuery1.FieldByName('jiekuanrenpeiounianling').AsString+'�꣬ѧ����'+
        ADOQuery1.FieldByName('jiekuanrenpeiouxueli').AsString+'�����֤�ţ�'+
        ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString+'��������λ��'+
        ADOQuery1.FieldByName('jiekuanrenpeiougongzuodanwei').AsString+
        '��������'+ADOQuery1.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString+
        'Ԫ����ͥ��������'+ADOQuery1.FieldByName('jiatingyuezongshouru').AsString+
        'Ԫ��������ϵͳ���飬����˼�����ż�޴������˹�������������á�'+#13#10+
        '������������'+#13#10+
        '�����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'��Ҫ����λ��'+
        ADOQuery1.FieldByName('fangwudiliweizhi').AsString+'���ݣ����������������'+
        ADOQuery1.FieldByName('jiekuanzhonglei').AsString+'���ô�������'+
        FrmMain.DSXiangMu.DataSet.FieldByName('kaifashang').AsString+'����,�ۼ�Ϊ'+
        ADOQuery1.FieldByName('pinggujiage2').AsString+'��Ԫ�������'+
        ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'���򿪷��̽���'+
        ADOQuery1.FieldByName('shoufukuanbili').AsString+'���׸���'+
        ADOQuery1.FieldByName('shoufukuanjine').AsString+'��Ԫ�������빫�������'+
        ADOQuery1.FieldByName('gongjijindaikuanjine').AsString+'��Ԫ��������������'+
        ADOQuery1.FieldByName('daikuanjine').AsString+
        '��Ԫ�������֧������������'+ADOQuery1.FieldByName('qixian').AsString+'�ꡣ'+#13#10+
        '�������������'+#13#10+
        '����˽�����'+ADOQuery1.FieldByName('fangwudiliweizhi').AsString+
        '���ݵ�Ѻ�����У��÷��������'+ADOQuery1.FieldByName('fangwujianzhumianji').AsString+
        'ƽ���ף�����Ϊÿƽ����'+ ADOQuery1.FieldByName('pinggujiage').AsString+'Ԫ,'+
        '���ۼ�Ϊ'+ADOQuery1.FieldByName('pinggujiage2').AsString+'��Ԫ����Ѻ��'+
        ADOQuery1.FieldByName('diyalv').AsString+'�������������'+
        ADOQuery1.FieldByName('gongjijindaikuanjine').AsString+'�򣬵�Ѻ��'+
        ADOQuery1.FieldByName('gongjijindiyalv').AsString+'�����д���'+
        ADOQuery1.FieldByName('daikuanjine').AsString+'�򣬵�Ѻ��'+
        ADOQuery1.FieldByName('yinhangdiyalv').AsString+'�����������й�����ס���������ߡ�'+
        FrmMain.DSXiangMu.DataSet.FieldByName('memo').AsString+
        '�Ǿ�ס�����볡�������Զ�����������'+
        ADOQuery1.FieldByName('daikuanjine').AsString+'��Ԫ������е�����'+#13#10+
        '������'+FrmMain.DSXiangMu.DataSet.FieldByName('kaifashang').AsString+'Ϊ�ñʴ���'+
        '�ṩ�׶��Ե���,'+FrmMain.DSXiangMu.DataSet.FieldByName('xiangmumingcheng').AsString+
        'Ϊ����֧�ֵĿ���������Ŀ��������׼����Ŀ��������ʵ����ǿ���ҹ���Ŀǰ�Ѿ��ⶥ��������Խ�С��'+#13#10+
        '�ġ���������������'+#13#10+
        '������������'+ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString+
        '������Ϊ��λ��ʽְ����ְ��'+ADOQuery1.FieldByName('jiekuanrengongzuogangwei').AsString+
        '��'+ADOQuery1.FieldByName('jiekuanrendanweijianyaoshuoming').AsString+
        ',�����ȶ�������ϸ�;��ż'+
        ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString+
        '��'+ADOQuery1.FieldByName('jiekuanrenpeioudanweiall').AsString+
        ',���������˼�����ż���������ʵ����ͥ�����������ϡ�����˲���'+
        ADOQuery1.FieldByName('huankuanfangshi').AsString+'�����������»����'+
        ADOQuery1.FieldByName('yunhuankuane').AsString+'Ԫ���������»����'+
        ADOQuery1.FieldByName('gongjijinyuehuankuane').AsString+'Ԫ�����ܻ����ռ���������'+
        ADOQuery1.FieldByName('yuehuankuanezhanyueshourubili').AsString+
        '����������ס���������ߣ������׸�'+ADOQuery1.FieldByName('shoufukuanbili').AsString
        +'���׸���'+ADOQuery1.FieldByName('shoufukuanjine').AsString+'��Ԫ���߱�����������'+
        '���������������������˾߱����������������ͬ��������'+
        ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'����ס������'+
        ADOQuery1.FieldByName('daikuanjine').AsString+'��Ԫ������'+
        ADOQuery1.FieldByName('qixian').AsString+'�ꡣ'+#13#10+
        '�Ŵ�Ա:'+ADOQuery1.FieldByName('dailiren').AsString+ #13#10+
        '��ϵ�绰:'+ADOQuery1.FieldByName('dailirendianhua').AsString+#13#10+
        ADOQuery1.FieldByName('jiekuanshijian').AsString;
end;

function TFrmEdt.getEDuBaoGao: String;
var lilvfudongbeli:String;
begin

  if pos('-', ADOQuery1.FieldByName('lilvfudongbeli').AsString)>0 then
    lilvfudongbeli :=  StringReplace(ADOQuery1.FieldByName('lilvfudongbeli').AsString, '-', '�¸�',[])+'%'
  else if trim(ADOQuery1.FieldByName('lilvfudongbeli').AsString) <>'' then
    lilvfudongbeli :=  '�ϸ�'+ADOQuery1.FieldByName('lilvfudongbeli').AsString+'%'
  else
    lilvfudongbeli := '';

  result :=  '    �����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanshijian').AsString+'���������'+
          '"�ھӱ�"����ס��ѭ�����������룬���'+ADOQuery1.FieldByName('daikuanjine').AsString+
          '��Ԫ���������'+ADOQuery1.FieldByName('qixian').AsString+
          '�꣬ͨ���Խ���˵�����״�������������������������ϸ�˽⼰���飬�ֽ���������������£�'+#13#10+
          'һ�� ����˻��������'+#13#10+
          '    �����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrenxingbie').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrennianling').AsString+'�꣬ѧ����'+
          ADOQuery1.FieldByName('jiekuanrenxueli').AsString+
          '�����֤��'+ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString+
          '����ס'+ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString+
          '��������λ��'+ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString+'��'+
          '�¹��ʼ�����'+ADOQuery1.FieldByName('jiekuanrenyuegongzishouru').AsString+
          'Ԫ��';
  if ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString <> '' then
    result := result + '��ż'+ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrenpeiounianling').AsString+'�꣬���֤�ţ�'+
          ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString+'��������λ��'+
          ADOQuery1.FieldByName('jiekuanrenpeiougongzuodanwei').AsString+
          '���¹��ʼ�����'+ADOQuery1.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString+
          'Ԫ����ͥ��������'+ADOQuery1.FieldByName('jiatingyuezongshouru').AsString+
          'Ԫ��';

  result := result + '��������ϵͳ��ʾ�����';
  if ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString <> '' then
    result := result + '������ż';
  result := result + '���κδ������¼��'+#13#10+
          '������ȼ��ÿ�������'+#13#10+
          '    �����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'��Ҫ����λ��'+
          ADOQuery1.FieldByName('fangwudiliweizhi').AsString+'���������������� "�ھӱ�"����ס��ѭ�������ȡ�'+
          '�ô�����������Ϊ'+ADOQuery1.FieldByName('pinggujiage2').AsString+'��Ԫ��'+
          '�����������������'+ADOQuery1.FieldByName('shoufukuanbili').AsString+'���׸���'+
          ADOQuery1.FieldByName('shoufukuanjine').AsString+'��Ԫ���������������ס��ѭ��������'+
          ADOQuery1.FieldByName('daikuanjine').AsString+'��Ԫ������'+
          ADOQuery1.FieldByName('qixian').AsString+'�꣬ ������µ����ÿ������֧���������۷���'+
          ADOQuery1.FieldByName('shoufangrenxingming').AsString;
  if ADOQuery1.FieldByName('shoufangrenpeiouxingming').AsString <> '' then
    result := result + '������ż'+ADOQuery1.FieldByName('shoufangrenpeiouxingming').AsString;
  result := result + 'ͬ�����'+ADOQuery1.FieldByName('fangwudiliweizhi').AsString+'������'+#13#10+
          '�����������'+#13#10+
          '    �����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'��������'+
          ADOQuery1.FieldByName('fangwudiliweizhi').AsString+'�������Ըñʴ����Ƚ��е�Ѻ������'+
          ADOQuery1.FieldByName('fangwudiliweizhi').AsString+'����������'+
          ADOQuery1.FieldByName('fangwujianchengniandai').AsString+'�꣬����ʹ��ȨΪ'+
          ADOQuery1.FieldByName('tudiquanliqingkuang').AsString+'����Ӱ�������պ��á������;Ϊ'+
          ADOQuery1.FieldByName('fangwuleixing').AsString+'�����ݽ������Ϊ'+
          ADOQuery1.FieldByName('fangwujianzhumianji').AsString+'ƽ���ף���Ѻ������'+
          ADOQuery1.FieldByName('fangwuhuanjing').AsString+'������λ�ýϺã�'+
          '�ܱ�����������ʩ�����С����еȣ����ж�·�������ڴ���㣬��ͨ�ǳ�������'+
          '�ɹ⡢ͨ���ԽϺã�������ʩ��ȫ���ж�������ˮ�����ߵ��ӡ�˫���ȣ��ʺϾ�ס����'+
          ADOQuery1.FieldByName('pinggujigoumingcheng').AsString+'�������г���Ϊ'+
          ADOQuery1.FieldByName('pinggujiage2').AsString+'��Ԫ������'+
          ADOQuery1.FieldByName('pinggujiage').AsString+'Ԫ����Ѻ��'+
          ADOQuery1.FieldByName('diyalv').AsString+',��ʵ�ؿ�����'+
          '��ʵ�ز鿴�÷��ݣ����κ����顣'+#13#10+
          '�ġ�������������'+#13#10+
          '    �����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString+'������ְ��'+
          ADOQuery1.FieldByName('jiekuanrengongzuogangwei').AsString+'��';
  if ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString <> '' then
    result := result + '��ż'+ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrenpeiougongzuodanwei').AsString+'������ְ��'+
          ADOQuery1.FieldByName('jiekuanrenpeiougongzuogangwei').AsString+'��';
  result := result + '����˶Զ�������ÿ����'+
          ADOQuery1.FieldByName('huankuanfangshi').AsString+'����»����'+
          ADOQuery1.FieldByName('yunhuankuane').AsString+'Ԫ��ռ��ͥ���������'+
          ADOQuery1.FieldByName('yinhangyuehuankuanezhanyueshourubili').AsString+'�������׸�'+
          ADOQuery1.FieldByName('shoufukuanbili').AsString+'�׸���'+
          ADOQuery1.FieldByName('shoufukuanjine').AsString+'��Ԫ���߱�����������'+ #13#10+
          '    �����������������������'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString;
  if ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString <> '' then
    result := result + '����ż';
  result := result + '����ϸߣ��߱������������Ը����������ͬ����׼�����'+
          ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'����ס��ѭ��������'+
          ADOQuery1.FieldByName('daikuanjine').AsString+'��Ԫ������'+
          ADOQuery1.FieldByName('qixian').AsString+'�ꡣ�Զ�����µ����ÿ�����ڹ���'+
          ADOQuery1.FieldByName('fangwudiliweizhi').AsString+'�����������'+
          ADOQuery1.FieldByName('qixian').AsString+'�꣬���ʰ���׼����'+
          lilvfudongbeli+'ִ�С�' + #13#10+ #13#10+
          '�Ŵ�Ա:'+ADOQuery1.FieldByName('dailiren').AsString+ #13#10+
          '��ϵ�绰:'+ADOQuery1.FieldByName('dailirendianhua').AsString+#13#10+
          ADOQuery1.FieldByName('jiekuanshijian').AsString;
end;

procedure TFrmEdt.exportzuigaoediyahetong(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '�й����С��ھӱ�������ס��ѭ��������߶��Ѻ��ͬ.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�ھӱ�/�й����С��ھӱ�������ס��ѭ��������߶��Ѻ��ͬ', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%hetonghao',ADOQuery1.FieldByName('hetonghao').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanzhihangfuzeren',ADOQuery1.FieldByName('jiekuanzhihangfuzeren').AsString);
    WordControlFrm.replace('%jiekuanzhihangdizhi',ADOQuery1.FieldByName('jiekuanzhihangdizhi').AsString);
    WordControlFrm.replace('%jiekuanzhihangdianhua',ADOQuery1.FieldByName('jiekuanzhihangdianhua').AsString);
    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanrenxianjuzhudizhi',ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    WordControlFrm.replace('%jiekuanrenshouji',ADOQuery1.FieldByName('jiekuanrenshouji').AsString);
    WordControlFrm.replace('%jiekuanjinedaxie',Changdx2(ADOQuery1.FieldByName('daikuanjine').asCurrency*10000));
    WordControlFrm.replace('%pinggujiadaxie',Changdx2(ADOQuery1.FieldByName('pinggujiage2').asCurrency*10000));
    WordControlFrm.replace('%diankuanyuefen',VartoStr(ADOQuery1.FieldByName('qixian').AsInteger*12));
    WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%pinggujiage2',ADOQuery1.FieldByName('pinggujiage2').AsString);
    WordControlFrm.replace('%chanquanzhengbianhao',ADOQuery1.FieldByName('chanquanzhengbianhao').AsString);
    WordControlFrm.replace('%pinggujigoumingcheng',ADOQuery1.FieldByName('pinggujigoumingcheng').AsString);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;

procedure TFrmEdt.exportdaikuanjiekuanhetong(print, PrintPreview: boolean);
var filename, lilvfudongbeli:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '�й����С��ھӱ�������ס��ѭ����ȴ������ͬ.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�ھӱ�/�й����С��ھӱ�������ס��ѭ����ȴ������ͬ', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%hetonghao',ADOQuery1.FieldByName('hetonghao').AsString);
    WordControlFrm.replace('%jiekuanzhihangfuzeren',ADOQuery1.FieldByName('jiekuanzhihangfuzeren').AsString);
    WordControlFrm.replace('%jiekuanzhihangdizhi',ADOQuery1.FieldByName('jiekuanzhihangdizhi').AsString);
    WordControlFrm.replace('%jiekuanzhihangdianhua',ADOQuery1.FieldByName('jiekuanzhihangdianhua').AsString);
    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanrenxianjuzhudizhi',ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    WordControlFrm.replace('%jiekuanrenshouji',ADOQuery1.FieldByName('jiekuanrenshouji').AsString);
    WordControlFrm.replace('%jiekuanjinedaxie',Changdx2(ADOQuery1.FieldByName('daikuanjine').asCurrency*10000));
    WordControlFrm.replace('%jiekuanjinexiaoxie',VartoStr(ADOQuery1.FieldByName('daikuanjine').asCurrency*10000));
    
    if pos('-', ADOQuery1.FieldByName('lilvfudongbeli').AsString)>0 then
      lilvfudongbeli :=  StringReplace(ADOQuery1.FieldByName('lilvfudongbeli').AsString, '-', '�¸�',[])+'%'
    else if trim(ADOQuery1.FieldByName('lilvfudongbeli').AsString) <>'' then
      lilvfudongbeli :=  '�ϸ�'+ADOQuery1.FieldByName('lilvfudongbeli').AsString+'%'
    else
      lilvfudongbeli := '';
    WordControlFrm.replace('%lilvfudongbeli', lilvfudongbeli);

    WordControlFrm.replace('%diankuanyuefen',VartoStr(ADOQuery1.FieldByName('qixian').AsInteger*12));
    WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%huankuanfangshi',ADOQuery1.FieldByName('huankuanfangshi').AsString);
    WordControlFrm.replace('%pinggujiage2',ADOQuery1.FieldByName('pinggujiage2').AsString);
    WordControlFrm.replace('%chanquanzhengbianhao',ADOQuery1.FieldByName('chanquanzhengbianhao').AsString);
    WordControlFrm.replace('%pinggujigoumingcheng',ADOQuery1.FieldByName('pinggujigoumingcheng').AsString);
    WordControlFrm.replace('%jiekuanrencunzhezhanghao',ADOQuery1.FieldByName('jiekuanrencunzhezhanghao').AsString);
    WordControlFrm.replace('%shoufangrenxingming',ADOQuery1.FieldByName('shoufangrenxingming').AsString);
    WordControlFrm.replace('%shoufangrencunzhezhanghao',ADOQuery1.FieldByName('shoufangrencunzhezhanghao').AsString);


    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;


procedure TFrmEdt.exporteduxieyi(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '�й����С��ھӱ�������ס��ѭ��������Э��.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�ھӱ�/�й����С��ھӱ�������ס��ѭ��������Э��', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%hetonghao',StringReplace(ADOQuery1.FieldByName('hetonghao').AsString, '����', '', [rfReplaceAll]));
    WordControlFrm.replace('%jiekuanzhihangfuzeren',ADOQuery1.FieldByName('jiekuanzhihangfuzeren').AsString);
    WordControlFrm.replace('%jiekuanzhihangdizhi',ADOQuery1.FieldByName('jiekuanzhihangdizhi').AsString);
    WordControlFrm.replace('%jiekuanzhihangdianhua',ADOQuery1.FieldByName('jiekuanzhihangdianhua').AsString);
    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanrenxianjuzhudizhi',ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    WordControlFrm.replace('%jiekuanrenshouji',ADOQuery1.FieldByName('jiekuanrenshouji').AsString);
    WordControlFrm.replace('%jiekuanjinedaxie',Changdx2(ADOQuery1.FieldByName('daikuanjine').asCurrency*10000));
    WordControlFrm.replace('%diankuanyuefen',VartoStr(ADOQuery1.FieldByName('qixian').AsInteger*12));
    WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);

    if ADOQuery1.FieldByName('huankuanfangshi').AsString='�ȶ�' then
      WordControlFrm.replace('%huankuanfangshi1','��')
    else if ADOQuery1.FieldByName('huankuanfangshi').AsString='�ȶ��' then
      WordControlFrm.replace('%huankuanfangshi2','��')
    else
      WordControlFrm.replace('%huankuanfangshi3','��');
    
    WordControlFrm.replace('%huankuanfangshi1','X');
    WordControlFrm.replace('%huankuanfangshi2','X');
    WordControlFrm.replace('%huankuanfangshi3','X');
    WordControlFrm.replace('%huankuanfangshi4','X');

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;

procedure TFrmEdt.exportshenqingbiao(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '���˴��������.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�ھӱ�/���˴��������', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenxingbie',ADOQuery1.FieldByName('jiekuanrenxingbie').AsString);
    WordControlFrm.replace('%jiekuanrenchushengnianyue',ADOQuery1.FieldByName('jiekuanrenchushengnianyue').AsString);
    WordControlFrm.replace('%jiekuanrenxueli',ADOQuery1.FieldByName('jiekuanrenxueli').AsString);
    WordControlFrm.replace('%jiekuanrenhunfou',ADOQuery1.FieldByName('jiekuanrenhunfou').AsString);
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanrenhujisuozaidi',ADOQuery1.FieldByName('jiekuanrenhujisuozaidi').AsString);
    WordControlFrm.replace('%jiekuanrenxianjuzhudizhi',ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    WordControlFrm.replace('%jiekuanrenyoubian',ADOQuery1.FieldByName('jiekuanrenyoubian').AsString);
    WordControlFrm.replace('%jiekuanrenjiatingdianhua',ADOQuery1.FieldByName('jiekuanrenjiatingdianhua').AsString);
    WordControlFrm.replace('%jiekuanrenshouji',ADOQuery1.FieldByName('jiekuanrenshouji').AsString);
    WordControlFrm.replace('%jiekuanrendanweidianhua',ADOQuery1.FieldByName('jiekuanrendanweidianhua').AsString);
    WordControlFrm.replace('%jiekuanrengongzuodanwei',ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString);
    WordControlFrm.replace('%jiekuanrendanweidizhi',ADOQuery1.FieldByName('jiekuanrendanweidizhi').AsString);
    WordControlFrm.replace('%jiekuanrendanweiyoubian',ADOQuery1.FieldByName('jiekuanrendanweiyoubian').AsString);
    WordControlFrm.replace('%jiekuanrenrenxianzhinianxian',ADOQuery1.FieldByName('jiekuanrenrenxianzhinianxian').AsString);
    WordControlFrm.replace('%jiekuanrengongzuogangwei',ADOQuery1.FieldByName('jiekuanrengongzuogangwei').AsString);
    WordControlFrm.replace('%jiekuanrenyuegongzishouru',ADOQuery1.FieldByName('jiekuanrenyuegongzishouru').AsString);
    WordControlFrm.replace('%gongyangrenrenshu',ADOQuery1.FieldByName('gongyangrenrenshu').AsString);
    WordControlFrm.replace('%jiekuanrenpeiouxingming',ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString);
    WordControlFrm.replace('%jiekuanrenpeioushenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanrenpeiouyuegongzishouru',ADOQuery1.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString);
    WordControlFrm.replace('%jiekuanrenpeioudanweidianhua',ADOQuery1.FieldByName('jiekuanrenpeioudanweidianhua').AsString);
    WordControlFrm.replace('%jiekuanrenpeioushouji',ADOQuery1.FieldByName('jiekuanrenpeioushouji').AsString);
    WordControlFrm.replace('%jiatingyuezongshouru',ADOQuery1.FieldByName('jiatingyuezongshouru').AsString);
    WordControlFrm.replace('%jiekuanrenpeiougongzuodanwei',ADOQuery1.FieldByName('jiekuanrenpeiougongzuodanwei').AsString);
    WordControlFrm.replace('%jiekuanrenpeioudanweidizhi',ADOQuery1.FieldByName('jiekuanrenpeioudanweidizhi').AsString);
    WordControlFrm.replace('%jiekuanrenpeioudanweiyoubian',ADOQuery1.FieldByName('jiekuanrenpeioudanweiyoubian').AsString);
    WordControlFrm.replace('%jiekuanjinedaxie',Changdx2(ADOQuery1.FieldByName('daikuanjine').asCurrency*10000));
    WordControlFrm.replace('%qixian',ADOQuery1.FieldByName('qixian').AsString);
    WordControlFrm.replace('%huankuanfangshi',ADOQuery1.FieldByName('huankuanfangshi').AsString);

    WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%fangwujianzhumianji',ADOQuery1.FieldByName('fangwujianzhumianji').AsString);
    WordControlFrm.replace('%pinggujiage2',ADOQuery1.FieldByName('pinggujiage2').AsString);
    WordControlFrm.replace('%pinggujiage',ADOQuery1.FieldByName('pinggujiage').AsString);
    WordControlFrm.replace('%shoufangrenxingming',ADOQuery1.FieldByName('shoufangrenxingming').AsString);
    WordControlFrm.replace('%dayinshijian', dayinshijian);

    //�����ͻ�
    if not (ATLianMingKeHu.Eof and ATLianMingKeHu.Bof) then begin
      ATLianMingKeHu.First;

      WordControlFrm.replace('%�����ͻ�����1', ATLianMingKeHu.FieldByName('�����ͻ�����').AsString);
      WordControlFrm.replace('%���������˹�ϵ1', ATLianMingKeHu.FieldByName('���������˹�ϵ').AsString);
      WordControlFrm.replace('%֤������1', ATLianMingKeHu.FieldByName('֤������').AsString);
      WordControlFrm.replace('%������1', ATLianMingKeHu.FieldByName('������').AsString);
      WordControlFrm.replace('%������λ1', ATLianMingKeHu.FieldByName('������λ').AsString);
      WordControlFrm.replace('%��λ�绰1', ATLianMingKeHu.FieldByName('��λ�绰').AsString);
      WordControlFrm.replace('%�����绰1', ATLianMingKeHu.FieldByName('�����绰').AsString);

      ATLianMingKeHu.Next;
      if not ATLianMingKeHu.Eof then begin
        WordControlFrm.replace('%�����ͻ�����2', ATLianMingKeHu.FieldByName('�����ͻ�����').AsString);
        WordControlFrm.replace('%���������˹�ϵ2', ATLianMingKeHu.FieldByName('���������˹�ϵ').AsString);
        WordControlFrm.replace('%֤������2', ATLianMingKeHu.FieldByName('֤������').AsString);
        WordControlFrm.replace('%������2', ATLianMingKeHu.FieldByName('������').AsString);
        WordControlFrm.replace('%������λ2', ATLianMingKeHu.FieldByName('������λ').AsString);
        WordControlFrm.replace('%��λ�绰2', ATLianMingKeHu.FieldByName('��λ�绰').AsString);
        WordControlFrm.replace('%�����绰2', ATLianMingKeHu.FieldByName('�����绰').AsString);
      end else begin
        WordControlFrm.replace('%�����ͻ�����2', '');
        WordControlFrm.replace('%���������˹�ϵ2', '');
        WordControlFrm.replace('%֤������2', '');
        WordControlFrm.replace('%������2', '     ');
        WordControlFrm.replace('%������λ2', '');
        WordControlFrm.replace('%��λ�绰2', '');
        WordControlFrm.replace('%�����绰2', '');
      end;
    end else begin
      WordControlFrm.replace('%�����ͻ�����1', '');
      WordControlFrm.replace('%���������˹�ϵ1', '');
      WordControlFrm.replace('%֤������1', '');
      WordControlFrm.replace('%������1', '     ');
      WordControlFrm.replace('%������λ1', '');
      WordControlFrm.replace('%��λ�绰1', '');
      WordControlFrm.replace('%�����绰1', '');

      WordControlFrm.replace('%�����ͻ�����2', '');
      WordControlFrm.replace('%���������˹�ϵ2', '');
      WordControlFrm.replace('%֤������2', '');
      WordControlFrm.replace('%������2', '     ');
      WordControlFrm.replace('%������λ2', '');
      WordControlFrm.replace('%��λ�绰2', '');
      WordControlFrm.replace('%�����绰2', '');
    end;

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;

end;


procedure TFrmEdt.exportzijinhuazhang(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '����ѭ���������ʽ�����Ȩ��.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�ھӱ�/����ѭ���������ʽ�����Ȩ��', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%jiekuanyongtu',ADOQuery1.FieldByName('jiekuanyongtu').AsString);
    WordControlFrm.replace('%daikuanjinedaxie',Changdx2(ADOQuery1.FieldByName('daikuanjine').asCurrency*10000));
    WordControlFrm.replace('%shoufangrenxingming',ADOQuery1.FieldByName('shoufangrenxingming').AsString);
    WordControlFrm.replace('%shoufangrencunzhezhanghao',ADOQuery1.FieldByName('shoufangrencunzhezhanghao').AsString);
    WordControlFrm.replace('%dayinshijian', dayinshijian);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;

procedure TFrmEdt.exportshenpibiao(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '����ѭ���������ÿ������.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�ھӱ�/����ѭ���������ÿ������', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%qixian',ADOQuery1.FieldByName('qixian').AsString);
    WordControlFrm.replace('%huankuanfangshi',ADOQuery1.FieldByName('huankuanfangshi').AsString);
    WordControlFrm.replace('%jiekuanyongtu',ADOQuery1.FieldByName('jiekuanyongtu').AsString);
    WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%huankuanfangshi',ADOQuery1.FieldByName('huankuanfangshi').AsString);
    WordControlFrm.replace('%hetonghao',ADOQuery1.FieldByName('hetonghao').AsString);
    WordControlFrm.replace('%daikuanjinedaxie',Changdx2(ADOQuery1.FieldByName('daikuanjine').asCurrency*10000));
    WordControlFrm.replace('%dayinshijian', dayinshijian);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;

end;

procedure TFrmEdt.exportchengnuohan(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '��ŵ��.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�ھӱ�/��ŵ��', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%dayinshijian', dayinshijian);


    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;

procedure TFrmEdt.exportshouquanweituoshu(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '��Ȩί����.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�ھӱ�/��Ȩί����', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrencunzhezhanghao',ADOQuery1.FieldByName('jiekuanrencunzhezhanghao').AsString);
    WordControlFrm.replace('%hetonghao',ADOQuery1.FieldByName('hetonghao').AsString);
    WordControlFrm.replace('%daikuanjinedaxie',changdx2(ADOQuery1.FieldByName('daikuanjine').asCurrency*10000));
    WordControlFrm.replace('%dayinshijian', dayinshijian);


    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;



procedure TFrmEdt.exportjiaonan1(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '�����з��ز�����Ȩ�Ǽ������.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�����з��ز�����Ȩ�Ǽ������', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%fangwujiegoujichaoxiang',ADOQuery1.FieldByName('fangwujiegoujichaoxiang').AsString);
    WordControlFrm.replace('%fangwujianzhumianji',ADOQuery1.FieldByName('fangwujianzhumianji').AsString);
    WordControlFrm.replace('%fangwujianchengniandai',ADOQuery1.FieldByName('fangwujianchengniandai').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenxingbie',ADOQuery1.FieldByName('jiekuanrenxingbie').AsString);

    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%shoufangrenxingming',ADOQuery1.FieldByName('shoufangrenxingming').AsString);
    WordControlFrm.replace('%shoufangrenxingbie',ADOQuery1.FieldByName('shoufangrenxingbie').AsString);
    WordControlFrm.replace('%shoufangrenshenfenzhenghaoma',ADOQuery1.FieldByName('shoufangrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%fangchangongyourenxingming',ADOQuery1.FieldByName('fangchangongyourenxingming').AsString);
    WordControlFrm.replace('%shoufangrenpeiouxingbie',ADOQuery1.FieldByName('shoufangrenpeiouxingbie').AsString);
    WordControlFrm.replace('%fangchangongyourenshenfenzhenghaoma',ADOQuery1.FieldByName('fangchangongyourenshenfenzhenghaoma').AsString);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;

procedure TFrmEdt.exportjiaonan2(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '�����з��ز�����Ȩ�Ǽ�������.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�����з��ز�����Ȩ�Ǽ�������', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%fangwujiegoujichaoxiang',ADOQuery1.FieldByName('fangwujiegoujichaoxiang').AsString);
    WordControlFrm.replace('%fangwujianzhumianji',ADOQuery1.FieldByName('fangwujianzhumianji').AsString);
    WordControlFrm.replace('%fangwujianchengniandai',ADOQuery1.FieldByName('fangwujianchengniandai').AsString);
    WordControlFrm.replace('%pinggujiage',ADOQuery1.FieldByName('pinggujiage').AsString);
    WordControlFrm.replace('%diyalv',ADOQuery1.FieldByName('diyalv').AsString);

    WordControlFrm.replace('%daikuanjine',ADOQuery1.FieldByName('daikuanjine').AsString);
    
    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;



procedure TFrmEdt.exportkaifaqu(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '�ൺ���ü������������ݵ�Ѻ����ǼǱ�.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�ൺ���ü������������ݵ�Ѻ����ǼǱ�', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%shoufangrenxingming',ADOQuery1.FieldByName('shoufangrenxingming').AsString);
    WordControlFrm.replace('%shoufangrenzhuzhi',ADOQuery1.FieldByName('shoufangrenzhuzhi').AsString);
    WordControlFrm.replace('%shoufangrenshenfenzhenghaoma',ADOQuery1.FieldByName('shoufangrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%shoufangrendianhua',ADOQuery1.FieldByName('shoufangrendianhua').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenxianjuzhudizhi',ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString);

    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanrenshouji',ADOQuery1.FieldByName('jiekuanrenshouji').AsString);
    WordControlFrm.replace('%fangchangongyourenxingming',ADOQuery1.FieldByName('fangchangongyourenxingming').AsString);
    WordControlFrm.replace('%fangchangongyourenshenfenzhenghaoma',ADOQuery1.FieldByName('fangchangongyourenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%fangwujianzhumianji',ADOQuery1.FieldByName('fangwujianzhumianji').AsString);
    WordControlFrm.replace('%chanquanzhengbianhao',ADOQuery1.FieldByName('chanquanzhengbianhao').AsString);
    WordControlFrm.replace('%daikuanjine',ADOQuery1.FieldByName('daikuanjine').AsString);

    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;

{
procedure TFrmEdt.exportedutaizhang;
begin
  sd.FileName := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '���˵֣��ʣ�Ѻѭ��������̨�ˣ�����11��';
  if sd.Execute then begin
    try

      scEE.LoadDefaultProperties;
      scEE.ExcelVisible:=false;
      scEE.ConnectTo:=ctNewExcel;
      scEE.Filename:= getExcelFileTmp('���˵֣��ʣ�Ѻѭ��������̨�ˣ�����11��', sd.FileName);
      // Add data to existing worksheet
      scEE.WorksheetName:='���˵�(��)Ѻѭ��������̨��';
      scEE.Connect;

      scEE.ExcelWorkSheet.Range['B6','B6'].Value :=
        ADOQuery1.FieldByName('jiekuanrenxingming').AsString;
      scEE.ExcelWorkSheet.Range['C6','C6'].Value :=
        ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString;
      scEE.ExcelWorkSheet.Range['D6','D6'].Value :=
        ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString;
      scEE.ExcelWorkSheet.Range['E6','E6'].Value :=
        ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString;
      scEE.ExcelWorkSheet.Range['G6','G6'].Value :=
        vartostr(ADOQuery1.FieldByName('daikuanjine').Ascurrency*10000);
      scEE.ExcelWorkSheet.Range['H6','H6'].Value :=
        vartostr(ADOQuery1.FieldByName('daikuanjine').Ascurrency*10000);
      scEE.ExcelWorkSheet.Range['J6','J6'].Value :=
        ADOQuery1.FieldByName('qixian').AsString+'��';
      scEE.ExcelWorkSheet.Range['L6','L6'].Value :=
        ADOQuery1.FieldByName('jiekuanrenxingming').AsString;
      scEE.ExcelWorkSheet.Range['M6','M6'].Value :=
        ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString;
      scEE.ExcelWorkSheet.Range['N6','N6'].Value := '����';
      scEE.ExcelWorkSheet.Range['O6','O6'].Value :=
        ADOQuery1.FieldByName('pinggujiage2').AsString+'��Ԫ';
      scEE.ExcelWorkSheet.Range['P6','P6'].Value :=
        ADOQuery1.FieldByName('diyalv').AsString;
      scEE.ExcelWorkSheet.Range['Q6','Q6'].Value :=
        ADOQuery1.FieldByName('fangwudiliweizhi').AsString;
      scEE.ExcelWorkSheet.Range['R6','R6'].Value :=
        ADOQuery1.FieldByName('huankuanfangshi').AsString;
      scEE.ExcelWorkSheet.Range['S6','S6'].Value :=
        ADOQuery1.FieldByName('lilv').AsString;
      scEE.ExcelWorkSheet.Range['AU6','AU6'].Value :=
        ADOQuery1.FieldByName('dailiren').AsString;

      scEE.SaveAs(sd.FileName,ffxls);
      showmessage('�ѵ����ɹ�');

    finally
      scEE.Disconnect;
    end;
  end;
end;
}


function TFrmEdt.getJinZhiDiYa: String;
begin
  result := '�����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanshijian').AsString+'�������������'+
          ADOQuery1.FieldByName('jiekuanzhonglei').AsString+
          '������룬���'+ADOQuery1.FieldByName('gongjijindaikuanjine').AsString+
          '��Ԫ���������'+ADOQuery1.FieldByName('qixian').AsString+
          '�꣬ͨ���Խ���˵�����״�������������������������ϸ�˽⼰���飬�ֽ��ô���Ļ�������������£�'+#13#10+
          'һ�� ����˻��������'+#13#10+
          '�����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrenxingbie').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrennianling').AsString+'�꣬ѧ����'+
          ADOQuery1.FieldByName('jiekuanrenxueli').AsString+
          '�����֤��'+ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString+
          '����ס'+ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString+
          '��������λ��'+ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrengongzuogangwei').AsString+
          '��������'+ADOQuery1.FieldByName('jiekuanrenyuegongzishouru').AsString+
          'Ԫ����ż'+ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrenpeiounianling').AsString+'�꣬ѧ����'+
          ADOQuery1.FieldByName('jiekuanrenpeiouxueli').AsString+'�����֤�ţ�'+
          ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString+'��������λ��'+
          ADOQuery1.FieldByName('jiekuanrenpeiougongzuodanwei').AsString+
          '��������'+ADOQuery1.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString+
          'Ԫ����ͥ��������'+ADOQuery1.FieldByName('jiatingyuezongshouru').AsString+
          'Ԫ��'+#13#10+
          '�������������'+#13#10+
          '�����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'����'+ADOQuery1.FieldByName('fangwudiliweizhi').AsString+
          '�ķ����Ըñʴ����Ƚ��е�Ѻ������'+ADOQuery1.FieldByName('fangwudiliweizhi').AsString+'����������'+
          ADOQuery1.FieldByName('fangwujianchengniandai').AsString+
          '�꣬�������'+ADOQuery1.FieldByName('fangwujianzhumianji').AsString+
          'ƽ���ף�Ϊ'+ADOQuery1.FieldByName('fangwujiegoujichaoxiang').AsString+'��'+
          ADOQuery1.FieldByName('peitaosheshi').AsString+'����'+
          ADOQuery1.FieldByName('pinggujigoumingcheng').AsString+'����,�����۸�Ϊ'+
          ADOQuery1.FieldByName('pinggujiage2').AsString+'��Ԫ������'+
          ADOQuery1.FieldByName('pinggujiage2').AsString+'Ԫ/ƽ���ס�'+
          '�õ�Ѻ����λ����λ�ýϺã����ൺ��'+ADOQuery1.FieldByName('fangwuhuanjing').AsString+
          '����Χ��ͨ����������������ʩ��ȫ��'+
          '��ҵ�����Ǿ�ס�����볡�����������ñʵ�Ѻ��Ϊ'+
          ADOQuery1.FieldByName('diyalv').AsString+'���������д���Ҫ��'+   #13#10+
          '������������������'+#13#10+
          '������������'+ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString+
          '������Ϊ��λ��ʽְ����ְ��'+ADOQuery1.FieldByName('jiekuanrengongzuogangwei').AsString+
          '��'+ADOQuery1.FieldByName('jiekuanrendanweijianyaoshuoming').AsString+
          ',�����ȶ���������'+ADOQuery1.FieldByName('jiekuanrenyuegongzishouru').AsString+'����ż'+
          ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString+
          '��'+ADOQuery1.FieldByName('jiekuanrenpeioudanweiall').AsString+
          '������'+ADOQuery1.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString+'Ԫ,���������˼�����ż���������ʵ����ͥ�����������ϡ�'+#13#10+
          '��������������˼�ͥ������Լ'+ADOQuery1.FieldByName('jiatingyuezongshouru').AsString+'Ԫ��������'+ #13#10+
          '�ġ�������;�Ͳ�Ʒ����'+#13#10+
          '�������'+ADOQuery1.FieldByName('jiekuanyongtu').AsString+'��������������ζ�����룬'+
          '�Ե����ÿ����ȡ'+ADOQuery1.FieldByName('huankuanfangshi').AsString+'���ʽ,'+
          '���ʴ����»���'+ADOQuery1.FieldByName('yunhuankuane').AsString+'Ԫ,ռ��ͥ�������'+
          ADOQuery1.FieldByName('yuehuankuanezhanyueshourubili').AsString+
          '�������д���Ҫ��,������������Ե����ÿ�ջ�׼����ִ�С�'+#13#10+
          '����������������������'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
          '������ż������ȶ����Ҿ���һ�����ʽ�ʵ�����߱������������Ը��������'+
          '��ͬ����׼�����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
          '���˵�Ѻѭ��������'+ADOQuery1.FieldByName('daikuanjine').AsString+'��Ԫ,����'+
          ADOQuery1.FieldByName('qixian').AsString+'��,��ȡ'+
          ADOQuery1.FieldByName('huankuanfangshi').AsString+'�Ļ��ʽ�����ջ�׼����ִ�С�'+#13#10+
          '�Ŵ�Ա:'+ADOQuery1.FieldByName('dailiren').AsString+ #13#10+
          '��ϵ�绰:'+ADOQuery1.FieldByName('dailirendianhua').AsString+#13#10+
          ADOQuery1.FieldByName('jiekuanshijian').AsString;
end;

function TFrmEdt.getJinZhiZhuFang: String;
begin
  result := 'ʡ�и��˽��ڲ���'+#13#10 +
          '    �����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'����������'+
          ADOQuery1.FieldByName('daikuanjine').AsString+'��Ԫ';
  if trim(ADOQuery1.FieldByName('gongjijindaikuanjine').AsString)<>'' then
    result := result + ',�����������'+ADOQuery1.FieldByName('gongjijindaikuanjine').AsString+
          '��Ԫ';
  result := result + ADOQuery1.FieldByName('jiekuanzhonglei').AsString+
          '���ֽ���ǰ��������������£�'+#13#10+
          '    һ�� ����˻������'+#13#10+
          '�����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrenxingbie').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrennianling').AsString+'�꣬'+
          ADOQuery1.FieldByName('jiekuanrenhunfou').AsString+'��ѧ����'+
          ADOQuery1.FieldByName('jiekuanrenxueli').AsString+
          '�����֤��'+ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString+
          '����ס'+ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString+
          '��������λ��'+ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrengongzuogangwei').AsString+
          '��������'+ADOQuery1.FieldByName('jiekuanrenyuegongzishouru').AsString+
          'Ԫ��';
  if trim(ADOQuery1.FieldByName('gongjijindaikuanjine').AsString)<>'' then
    result := result + '�½ɹ������'+ADOQuery1.FieldByName('yuejiaogongjijine').AsString+
          'Ԫ';

  result := result +'��ż'+ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrenpeiounianling').AsString+'�꣬ѧ����'+
          ADOQuery1.FieldByName('jiekuanrenpeiouxueli').AsString+'�����֤�ţ�'+
          ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString+'��������λ��'+
          ADOQuery1.FieldByName('jiekuanrenpeiougongzuodanwei').AsString+
          ','+ADOQuery1.FieldByName('jiekuanrenpeiougongzuogangwei').AsString +
          '��������'+ADOQuery1.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString+
          'Ԫ����ͥ��������'+ADOQuery1.FieldByName('jiatingyuezongshouru').AsString+
          'Ԫ����ϵ��ʽ:'+ ADOQuery1.FieldByName('jiekuanrenshouji').AsString+
          ',��һ������Դ��Ϊ��֡�'+#13#10+
          '    �����е���ȷ�ϣ��ÿͻ��Ѱ����������ÿ����������е�����ҵ�񣬸ÿͻ�Ϊ�������ʿͻ���'+
          '���۷���'+ADOQuery1.FieldByName('shoufangrenxingming').AsString+'�޹�����ϵ��'+#13#10+
          '    �����������Ų�ѯ�����'+#13#10+
          '    ������ѯ��������ϵͳ������˼�����ż����������Ͳ�����¼��'+#13#10+
          '    ����˻�ñ��ʴ������»������'+ADOQuery1.FieldByName('yunhuankuane').AsString+'Ԫ��';
  if trim(ADOQuery1.FieldByName('gongjijindaikuanjine').AsString)<>'' then
    result := result + '�������»����'+ADOQuery1.FieldByName('gongjijinyuehuankuane').AsString+'Ԫ��';
  result := result + '�»����ռ��ͥ�����'+ADOQuery1.FieldByName('yuehuankuanezhanyueshourubili').AsString+
            ',�������й涨��'+#13#10+
            '    �����������Ϣ˵��'+#13#10+
            '    ������������������'+ADOQuery1.FieldByName('daikuanjine').AsString+'��Ԫ,���ڹ���λ��'+
          ADOQuery1.FieldByName('fangwudiliweizhi').AsString+'���ݣ�����˽������÷��ݵ�Ѻ�����У��÷�����'+
          ADOQuery1.FieldByName('pinggujigoumingcheng').AsString+'����������Ϊ�����أ��÷��ݽ������'+
          ADOQuery1.FieldByName('fangwujianchengniandai').AsString+ '�꣬�������'+
          ADOQuery1.FieldByName('fangwujianzhumianji').AsString+
          'ƽ���ף�Ϊ'+ADOQuery1.FieldByName('fangwujiegou').AsString+'��'+
           ADOQuery1.FieldByName('chaoxiang').AsString+'��'+
          ADOQuery1.FieldByName('pingmianbuju').AsString+'��'+
          ADOQuery1.FieldByName('peitaosheshi').AsString+'��������'+
          ADOQuery1.FieldByName('pinggujiage2').AsString+'��Ԫ������'+
          ADOQuery1.FieldByName('pinggujiage').AsString+'Ԫ/ƽ���ף����ϵ����г���ֵ����Ѻ��'+
          ADOQuery1.FieldByName('diyalv').AsString+',';
  if trim(ADOQuery1.FieldByName('gongjijindaikuanjine').AsString)<>'' then
    result := result + '(�����������'+ADOQuery1.FieldByName('gongjijindaikuanjine').AsString+'��Ԫ��'+
          '��Ѻ��'+ADOQuery1.FieldByName('gongjijindiyalv').AsString+'�����д���'+
          ADOQuery1.FieldByName('daikuanjine').AsString+'�򣬵�Ѻ��'+
          ADOQuery1.FieldByName('yinhangdiyalv').AsString+'������';
  result := result +'�����й�����ס���������ߡ��۷���'+ADOQuery1.FieldByName('shoufangrenxingming').AsString+'����ż'+
          ADOQuery1.FieldByName('fangchangongyourenxingming').AsString+'��ͬ����۴˷�������˫��������ʵ��Ч��'+#13#10+
          '    �������֧���׸���'+ADOQuery1.FieldByName('shoufukuanjine').AsString+'��Ԫ��ռ���۵�'+ADOQuery1.FieldByName('shoufukuanbili').AsString
          +'���������д���������';
  if trim(ADOQuery1.FieldByName('gongjijindaikuanjine').AsString)<>'' then
    result := result + '�����빫�������'+ADOQuery1.FieldByName('gongjijindaikuanjine').AsString+'��Ԫ��';
  try
    result := result +'������������'+ADOQuery1.FieldByName('daikuanjine').AsString+'Ԫ�������'+
          VartoStr(ADOQuery1.FieldByName('qixian').AsInteger*12)+'���£����ʰ���Ϣ'+
          ADOQuery1.FieldByName('lilv').AsString+'ִ�С�';
  except
    showmessage('��������δ��ȷ���á�');
  end;
  if ADOQuery1.FieldByName('lilvfudongbeli').AsString <> '' then begin
    if pos('-', ADOQuery1.FieldByName('lilvfudongbeli').AsString) >0 then
      result := result+'����׼�����¸�'+ Stringreplace(ADOQuery1.FieldByName('lilvfudongbeli').AsString ,'-','',[])+'%��'
    else
      result := result+'����׼�����ϸ�'+ ADOQuery1.FieldByName('lilvfudongbeli').AsString +'%��';
  end;
  result := result+#13#10+
            '    ����̸�����;ӷõ��飬��ʵ�ؿ�������ǩ��ס�����ű�֤�飬�ñʴ���������е�һ��ס���������ߡ�'+#13#10+
            '    �ġ�������ʩ˵��'+#13#10+
            '    �õ�Ѻ����λ��'+ADOQuery1.FieldByName('fangwudiliweizhi').AsString+
            '����Χ��ͨ����������������ʩ��ȫ����ҵ�����Ǿ�ס�����볡�������Զ�����������'+
            ADOQuery1.FieldByName('daikuanjine').AsString+'��Ԫ������е������ñʴ���������������������Ѻ����Ѻ��'+
            ADOQuery1.FieldByName('diyalv').AsString+',��ס����������λ�ý���Խ��'+
            '����������ǿ���߱���ǿ�ĵ���������'+#13#10+
            '    �����ڰ��׷��ݲ�Ȩ���ǡ���Ѻ�Ǽ������󷽿ɷ��Ŵ����ſ'+#13#10+
            '    �塢����'+#13#10+
            '    �����е��顢�����ھӱ�������ز�������ԭ���˶�һ�£��������пͻ�׼���ʸ�ʹ���������'+
            '���ױ�����ʵ���ţ�����������õĵ���Ʒ�ʺͽ�ǿ�Ļ�����Ը����ͥ������ȶ����ɿ������а�ʱ�����Ϣ��������'+
            '��Ѻ������λ�ý����룬��Ѻ���ֵ�ϳ��㣬����������ǿ������ͬ��Ϊ�����'+
            ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'���Ÿ���ס������'+ADOQuery1.FieldByName('daikuanjine').AsString+
            '��Ԫ������'+VartoStr(ADOQuery1.FieldByName('qixian').AsInteger*12)+'���£����ʰ���Ϣ'+
          ADOQuery1.FieldByName('lilv').AsString+'ִ��';
  if ADOQuery1.FieldByName('lilvfudongbeli').AsString <> '' then begin
    if pos('-', ADOQuery1.FieldByName('lilvfudongbeli').AsString) >0 then
      result := result+'����׼�����¸�'+ Stringreplace(ADOQuery1.FieldByName('lilvfudongbeli').AsString ,'-','',[])+'%��'
    else
      result := result+'����׼�����ϸ�'+ ADOQuery1.FieldByName('lilvfudongbeli').AsString +'%��';
  end;
  result := result +'�����ʽ����'+ ADOQuery1.FieldByName('huankuanfangshi').AsString+
          '�������ʽ����۷���'+ ADOQuery1.FieldByName('shoufangrenxingming').AsString+
          '�����п������˻���������׼�������ڰ��׷��ݲ�Ȩ��������Ѻ�Ǽ������󷽿ɷ��Ŵ����ſ'+#13#10+
          '    �ش˱��棬���ж��ϱ����ϼ�¼����Ϣ����ʵ�ԡ������Ժ�һ���Ը���'+#13#10 +
          '                                                �ͻ�����:'+ADOQuery1.FieldByName('dailiren').AsString+
          '     �ֻ�����:'+ADOQuery1.FieldByName('dailirendianhua').AsString+#13#10+
          '                                                                                     '+ADOQuery1.FieldByName('jiekuanshijian').AsString;

  {
  result := '�����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'�������������'+
          ADOQuery1.FieldByName('jiekuanzhonglei').AsString+
          '�������������'+ADOQuery1.FieldByName('gongjijindaikuanjine').AsString+
          '��Ԫ�����д�����'+ADOQuery1.FieldByName('daikuanjine').AsString+
          '��Ԫ������'+ADOQuery1.FieldByName('qixian').AsString+
          '�꣬�����Ŵ���Ա�Խ���˵�����״����������������Ѻ��������������ϸ���飬����������£�'+#13#10+
          'һ�� ����˻��������'+#13#10+
          '�����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrenxingbie').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrennianling').AsString+'�꣬'+
          ADOQuery1.FieldByName('jiekuanrenhunfou').AsString+'��ѧ����'+
          ADOQuery1.FieldByName('jiekuanrenxueli').AsString+
          '�����֤��'+ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString+
          '����ס'+ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString+
          '��������λ��'+ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrengongzuogangwei').AsString+
          '��������'+ADOQuery1.FieldByName('jiekuanrenyuegongzishouru').AsString+
          'Ԫ���½ɹ������'+ADOQuery1.FieldByName('yuejiaogongjijine').AsString+
          'Ԫ����ż'+ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString+'��'+
          ADOQuery1.FieldByName('jiekuanrenpeiounianling').AsString+'�꣬ѧ����'+
          ADOQuery1.FieldByName('jiekuanrenpeiouxueli').AsString+'�����֤�ţ�'+
          ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString+'��������λ��'+
          ADOQuery1.FieldByName('jiekuanrenpeiougongzuodanwei').AsString+
          '��������'+ADOQuery1.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString+
          'Ԫ����ͥ��������'+ADOQuery1.FieldByName('jiatingyuezongshouru').AsString+
          'Ԫ��������ϵͳ���飬����˼�����ż����������Ͳ�����¼���۷���'+
          ADOQuery1.FieldByName('shoufangrenxingming').AsString+'����ż'+
          ADOQuery1.FieldByName('fangchangongyourenxingming').AsString+
          '��ͬ����۴˷�������˫��������ʵ��Ч��'+#13#10+
          '������������'+#13#10+
          '�����'+ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'��Ҫ����λ��'+
          ADOQuery1.FieldByName('fangwudiliweizhi').AsString+'���ݣ����������������'+
          ADOQuery1.FieldByName('jiekuanzhonglei').AsString+'���ô�����������'+
          ADOQuery1.FieldByName('pinggujiage2').AsString+'��Ԫ�������'+
          ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'������������'+
          ADOQuery1.FieldByName('shoufukuanbili').AsString+'���׸���'+
          ADOQuery1.FieldByName('shoufukuanjine').AsString+'��Ԫ�������빫�������'+
          ADOQuery1.FieldByName('gongjijindaikuanjine').AsString+'��Ԫ��������������'+
          ADOQuery1.FieldByName('daikuanjine').AsString+
          '��Ԫ�������֧������������'+ADOQuery1.FieldByName('qixian').AsString+'�ꡣ'+#13#10+
          '�������������'+#13#10+
          '����˽�����'+ADOQuery1.FieldByName('fangwudiliweizhi').AsString+
          '���ݵ�Ѻ�����У��÷�����'+ADOQuery1.FieldByName('pinggujigoumingcheng').AsString+
          '�������÷��ݽ������'+ADOQuery1.FieldByName('fangwujianchengniandai').AsString+
          '�꣬�������'+ADOQuery1.FieldByName('fangwujianzhumianji').AsString+
          'ƽ���ף�Ϊ'+ADOQuery1.FieldByName('fangwujiegou').AsString+'��'+
           ADOQuery1.FieldByName('chaoxiang').AsString+'��'+
          ADOQuery1.FieldByName('pingmianbuju').AsString+'��'+
          ADOQuery1.FieldByName('peitaosheshi').AsString+'��������'+
          ADOQuery1.FieldByName('pinggujiage2').AsString+'��Ԫ����Ѻ��'+
          ADOQuery1.FieldByName('diyalv').AsString+'�������������'+
          ADOQuery1.FieldByName('gongjijindaikuanjine').AsString+'�򣬵�Ѻ��'+
          ADOQuery1.FieldByName('gongjijindiyalv').AsString+'�����д���'+
          ADOQuery1.FieldByName('daikuanjine').AsString+'�򣬵�Ѻ��'+
          ADOQuery1.FieldByName('yinhangdiyalv').AsString+'�����������й�����ס���������ߡ�'+
          '�õ�Ѻ����λ��'+ADOQuery1.FieldByName('fangwudiliweizhi').AsString+
          '���ؽǽϺã����ൺ��'+ADOQuery1.FieldByName('fangwuhuanjing').AsString+
          '����Χ��ͨ����������������ʩ��ȫ��'+
          '��ҵ�����Ǿ�ס�����볡�������Զ�����������'+
          ADOQuery1.FieldByName('daikuanjine').AsString+'��Ԫ������е�����'+#13#10+
          '�ġ���������������'+#13#10+
          '������������'+ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString+
          '������Ϊ��λ��ʽְ����ְ��'+ADOQuery1.FieldByName('jiekuanrengongzuogangwei').AsString+
          '��'+ADOQuery1.FieldByName('jiekuanrendanweijianyaoshuoming').AsString+
          ',�����ȶ�������ϸ�;��ż'+
          ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString+
          '��'+ADOQuery1.FieldByName('jiekuanrenpeioudanweiall').AsString+
          ',���������˼�����ż���������ʵ����ͥ�����������ϡ�����˲���'+
          ADOQuery1.FieldByName('huankuanfangshi').AsString+'�����������»����'+
          ADOQuery1.FieldByName('yunhuankuane').AsString+'Ԫ���������»����'+
          ADOQuery1.FieldByName('gongjijinyuehuankuane').AsString+'Ԫ�����ܻ����ռ���������'+
          ADOQuery1.FieldByName('yuehuankuanezhanyueshourubili').AsString+
          '����������ס���������ߣ������׸�'+ADOQuery1.FieldByName('shoufukuanbili').AsString
          +'���׸���'+ADOQuery1.FieldByName('shoufukuanjine').AsString+'��Ԫ��'+
          '���������������������˾߱����������������ͬ��������'+
          ADOQuery1.FieldByName('jiekuanrenxingming').AsString+'����ס������'+
          ADOQuery1.FieldByName('daikuanjine').AsString+'��Ԫ������'+
          ADOQuery1.FieldByName('qixian').AsString+'�ꡣ' ;
  if pos('������',ADOQuery1.FieldByName('fangwudiliweizhi').AsString) = 1 then
    result := result + '�÷�������֤�ڵ��ط��ܾ�ͳһ�����������õأ�'
  else
    result := result + '�÷����������أ�';
  result := result + '��Ӱ�������պ��á���ʵ�ز鿴�÷��ݣ����κ����顣�ÿͻ�Ϊ�������ʿͻ���' + #13#10 +
          'ҵ�������������:'+ADOQuery1.FieldByName('dailiren').AsString+ #13#10+
          '��ϵ�绰:'+ADOQuery1.FieldByName('dailirendianhua').AsString+#13#10+
          ADOQuery1.FieldByName('jiekuanshijian').AsString;   }
end;




procedure TFrmEdt.exportdiyayongkuanshepi(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '�й����и���ѭ���������ÿ����������6��.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�й����и���ѭ���������ÿ����������6��', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%daikuanjine',ADOQuery1.FieldByName('daikuanjine').AsString);
    WordControlFrm.replace('%qixian',ADOQuery1.FieldByName('qixian').AsString);
    WordControlFrm.replace('%huankuanfangshi',ADOQuery1.FieldByName('huankuanfangshi').AsString);
    WordControlFrm.replace('%jiekuanyongtu',ADOQuery1.FieldByName('jiekuanyongtu').AsString);


    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;


end;


procedure TFrmEdt.exportdiyaedushenqing(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '�й����и��˵֣��ʣ�Ѻѭ�����������������9��.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('�й����и��˵֣��ʣ�Ѻѭ�����������������9��', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenxingbie',ADOQuery1.FieldByName('jiekuanrenxingbie').AsString);
    WordControlFrm.replace('%jiekuanrenchushengnianyue',ADOQuery1.FieldByName('jiekuanrenchushengnianyue').AsString);
    WordControlFrm.replace('%jiekuanrenxueli',ADOQuery1.FieldByName('jiekuanrenxueli').AsString);
    WordControlFrm.replace('%jiekuanrenhunfou',ADOQuery1.FieldByName('jiekuanrenhunfou').AsString);
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanrenhujisuozaidi',ADOQuery1.FieldByName('jiekuanrenhujisuozaidi').AsString);
    WordControlFrm.replace('%jiekuanrenxianjuzhudizhi',ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    WordControlFrm.replace('%jiekuanrenxianzhufangquanshu',ADOQuery1.FieldByName('jiekuanrenxianzhufangquanshu').AsString);
    WordControlFrm.replace('%jiekuanrenjiatingdianhua',ADOQuery1.FieldByName('jiekuanrenjiatingdianhua').AsString);
    WordControlFrm.replace('%jiekuanrenshouji',ADOQuery1.FieldByName('jiekuanrenshouji').AsString);
    WordControlFrm.replace('%jiekuanrenyoubian',ADOQuery1.FieldByName('jiekuanrenyoubian').AsString);
    WordControlFrm.replace('%jiekuanrengongzuodanwei',ADOQuery1.FieldByName('jiekuanrengongzuodanwei').AsString);
    WordControlFrm.replace('%jiekuanrendanweixingzhi',ADOQuery1.FieldByName('jiekuanrendanweixingzhi').AsString);
    WordControlFrm.replace('%jiekuanrendanweidizhi',ADOQuery1.FieldByName('jiekuanrendanweidizhi').AsString);
    WordControlFrm.replace('%jiekuanrendanweiyoubian',ADOQuery1.FieldByName('jiekuanrendanweiyoubian').AsString);
    WordControlFrm.replace('%jiekuanrengongzuogangwei',ADOQuery1.FieldByName('jiekuanrengongzuogangwei').AsString);
    WordControlFrm.replace('%jiekuanrenjishuzige',ADOQuery1.FieldByName('jiekuanrenjishuzige').AsString);
    WordControlFrm.replace('%jiekuanrendanweidianhua',ADOQuery1.FieldByName('jiekuanrendanweidianhua').AsString);
    WordControlFrm.replace('%jiekuanrenpeiouxingming',ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString);
    WordControlFrm.replace('%jiekuanrenpeiouchushengnianyue',ADOQuery1.FieldByName('jiekuanrenpeiouchushengnianyue').AsString);
    WordControlFrm.replace('%jiekuanrenpeioushenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanrenpeiougongzuodanwei',ADOQuery1.FieldByName('jiekuanrenpeiougongzuodanwei').AsString);
    WordControlFrm.replace('%jiekuanrenpeioudanweixingzhi',ADOQuery1.FieldByName('jiekuanrenpeioudanweixingzhi').AsString);
    WordControlFrm.replace('%jiekuanrenpeioudanweidizhi',ADOQuery1.FieldByName('jiekuanrenpeioudanweidizhi').AsString);
    WordControlFrm.replace('%jiekuanrenpeioudanweiyoubian',ADOQuery1.FieldByName('jiekuanrenpeioudanweiyoubian').AsString);
    WordControlFrm.replace('%jiekuanrenpeiougongzuogangwei',ADOQuery1.FieldByName('jiekuanrenpeiougongzuogangwei').AsString);
    WordControlFrm.replace('%jiekuanrenpeiouzhicheng',ADOQuery1.FieldByName('jiekuanrenpeiouzhicheng').AsString);
    WordControlFrm.replace('%jiekuanrenpeioudanweidianhua',ADOQuery1.FieldByName('jiekuanrenpeioudanweidianhua').AsString);
    WordControlFrm.replace('%jiekuanrenpeioushouji',ADOQuery1.FieldByName('jiekuanrenpeioushouji').AsString);
    WordControlFrm.replace('%jiekuanrenyuegongzishouru',ADOQuery1.FieldByName('jiekuanrenyuegongzishouru').AsString);
    WordControlFrm.replace('%jiekuanrenpeiouyuegongzishouru',ADOQuery1.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString);
    WordControlFrm.replace('%gongyangrenrenshu',ADOQuery1.FieldByName('gongyangrenrenshu').AsString);
    WordControlFrm.replace('%jiatingyuezongshouru',ADOQuery1.FieldByName('jiatingyuezongshouru').AsString);
    WordControlFrm.replace('%jiatingyuezhichu',ADOQuery1.FieldByName('jiatingyuezhichu').AsString);
    WordControlFrm.replace('%jiekuanjinedaxie',changdx2(ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000));
    WordControlFrm.replace('%qixian',ADOQuery1.FieldByName('qixian').AsString);
    WordControlFrm.replace('%shoufangrenxingming',ADOQuery1.FieldByName('shoufangrenxingming').AsString);
    WordControlFrm.replace('%pinggujiage2',ADOQuery1.FieldByName('pinggujiage2').AsString);
    WordControlFrm.replace('%pinggujigoumingcheng',ADOQuery1.FieldByName('pinggujigoumingcheng').AsString);


    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;


end;



procedure TFrmEdt.exportdiyadiyawiqingkuang(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '��Ѻ�������ϸ��.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('��Ѻ�������ϸ��', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%hetonghao',ADOQuery1.FieldByName('hetonghao').AsString);
    if ADOQuery1.FieldByName('fangwuleixing').AsString='��ͨסլ' then begin
      WordControlFrm.replace('%fangwuleixing1','��');
      WordControlFrm.replace('%fangwuleixing2','��');
      WordControlFrm.replace('%fangwuleixing3','��');
      WordControlFrm.replace('%fangwuleixing4','��');
    end else if pos('��', ADOQuery1.FieldByName('fangwuleixing').AsString)>0 then begin
      WordControlFrm.replace('%fangwuleixing1','��');
      WordControlFrm.replace('%fangwuleixing2','��');
      WordControlFrm.replace('%fangwuleixing3','��');
      WordControlFrm.replace('%fangwuleixing4','��');
    end else if  ADOQuery1.FieldByName('fangwuleixing').AsString='д��¥' then begin
      WordControlFrm.replace('%fangwuleixing1','��');
      WordControlFrm.replace('%fangwuleixing2','��');
      WordControlFrm.replace('%fangwuleixing3','��');
      WordControlFrm.replace('%fangwuleixing4','��');
    end else begin
      WordControlFrm.replace('%fangwuleixing1','��');
      WordControlFrm.replace('%fangwuleixing2','��');
      WordControlFrm.replace('%fangwuleixing3','��');
      WordControlFrm.replace('%fangwuleixing4','��');
    end;
    WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%fangwujianchengniandai',ADOQuery1.FieldByName('fangwujianchengniandai').AsString);
    WordControlFrm.replace('%fangwujianzhumianji',ADOQuery1.FieldByName('fangwujianzhumianji').AsString);
    WordControlFrm.replace('%shoufangrenxingming',ADOQuery1.FieldByName('shoufangrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%chanquanzhengbianhao',ADOQuery1.FieldByName('chanquanzhengbianhao').AsString);
    WordControlFrm.replace('%pinggujiage2',vartostr(ADOQuery1.FieldByName('pinggujiage').AsCurrency+100));
    WordControlFrm.replace('%pinggujiage',ADOQuery1.FieldByName('pinggujiage').AsString);
    WordControlFrm.replace('%pinggujigoumingcheng',ADOQuery1.FieldByName('pinggujigoumingcheng').AsString);


    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;

end;


procedure TFrmEdt.exportdiyadiyahetong(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '���˵֣��ʣ�Ѻѭ�������Ѻ��ͬ������6��.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('���˵֣��ʣ�Ѻѭ�������Ѻ��ͬ������6��', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%hetonghao',ADOQuery1.FieldByName('hetonghao').AsString);
    WordControlFrm.replace('%jiekuanzhihangfuzeren',ADOQuery1.FieldByName('jiekuanzhihangfuzeren').AsString);
    WordControlFrm.replace('%jiekuanzhihangdizhi',ADOQuery1.FieldByName('jiekuanzhihangdizhi').AsString);
    WordControlFrm.replace('%jiekuanzhihangdianhua',ADOQuery1.FieldByName('jiekuanzhihangdianhua').AsString);
    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%shoufangrenxingming',ADOQuery1.FieldByName('shoufangrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%shoufangrenshenfenzhenghaoma',ADOQuery1.FieldByName('shoufangrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%shoufangrenzhuzhi',ADOQuery1.FieldByName('shoufangrenzhuzhi').AsString);
    WordControlFrm.replace('%shoufangrendianhua',ADOQuery1.FieldByName('shoufangrendianhua').AsString);
    WordControlFrm.replace('%jiekuanshijian',formatdatetime('yyyy-mm-dd',ADOQuery1.FieldByName('jiekuanshijian').AsDateTime));
    WordControlFrm.replace('%jiekuanjinexiaoxie',vartostr(ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000));
    WordControlFrm.replace('%jiekuanrenshouji',ADOQuery1.FieldByName('jiekuanrenshouji').AsString);
    WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%chanquanzhengbianhao',ADOQuery1.FieldByName('chanquanzhengbianhao').AsString);
    WordControlFrm.replace('%pinggujiage2',ADOQuery1.FieldByName('pinggujiage2').AsString);



    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;

end;



procedure TFrmEdt.exportdiyaeduxieyi(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '���˵֣��ʣ�Ѻѭ��������Э�飨����4��.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('���˵֣��ʣ�Ѻѭ��������Э�飨����4��', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%hetonghao',ADOQuery1.FieldByName('hetonghao').AsString);
    WordControlFrm.replace('%jiekuanzhihangfuzeren',ADOQuery1.FieldByName('jiekuanzhihangfuzeren').AsString);
    WordControlFrm.replace('%jiekuanzhihangdizhi',ADOQuery1.FieldByName('jiekuanzhihangdizhi').AsString);
    WordControlFrm.replace('%jiekuanzhihangdianhua',ADOQuery1.FieldByName('jiekuanzhihangdianhua').AsString);
    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanrenxianjuzhudizhi',ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    WordControlFrm.replace('%jiekuanrenshouji',ADOQuery1.FieldByName('jiekuanrenshouji').AsString);
    WordControlFrm.replace('%jiekuanjinedaxie',changdx2(ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000));
    WordControlFrm.replace('%jiekuanjinexiaoxie',vartostr(ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000));
    WordControlFrm.replace('%jiekuanyuefen',vartostr(ADOQuery1.FieldByName('qixian').AsInteger*12));
    WordControlFrm.replace('%jiekuanshijian',formatdatetime('yyyy-mm-dd',ADOQuery1.FieldByName('jiekuanshijian').AsDateTime));
    WordControlFrm.replace('%daoqishijian',formatdatetime('yyyy-mm-dd',IncYear(ADOQuery1.FieldByName('jiekuanshijian').AsDateTime,ADOQuery1.FieldByName('qixian').AsInteger)));
    WordControlFrm.replace('%jiekuanrencunzhezhanghao',ADOQuery1.FieldByName('jiekuanrencunzhezhanghao').AsString);


    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;

end;




procedure TFrmEdt.exportdiyashouquanshu(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '��Ȩί����.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('��Ȩί����', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrencunzhezhanghao',ADOQuery1.FieldByName('jiekuanrencunzhezhanghao').AsString);
    WordControlFrm.replace('%hetonghao',ADOQuery1.FieldByName('hetonghao').AsString);
    WordControlFrm.replace('%jiekuanjinedaxie',changdx2(ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000));
    WordControlFrm.replace('%lilv',ADOQuery1.FieldByName('lilv').AsString);
    WordControlFrm.replace('%jiekuanshijian',ADOQuery1.FieldByName('jiekuanshijian').AsString);


    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;


end;



procedure TFrmEdt.exportdiyachengnuohan(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '��  ͬ  ծ  ��  ��  ��  ŵ  ��������15��.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('��  ͬ  ծ  ��  ��  ��  ŵ  ��������15��', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%jiekuanshijian',ADOQuery1.FieldByName('jiekuanshijian').AsString);
    WordControlFrm.replace('%daikuanjine',ADOQuery1.FieldByName('daikuanjine').AsString);
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenpeiouxingming',ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString);
    WordControlFrm.replace('%fangwudiliweizhi',ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanrenpeioushenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);


    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;

end;





procedure TFrmEdt.exportdiyahetong(print, PrintPreview: boolean);
var filename:String;
begin
  filename := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '���˵֣��ʣ�Ѻѭ����������ҽ���ͬ������5��.doc';

  if not (print or printPreview) then begin
    sddoc.FileName := filename;
    if sddoc.Execute then begin
      filename := sddoc.FileName;

    end else exit;
  end else begin
    filename := ExtractFilePath(Application.ExeName)+'\tmp\'+filename;
  end;
  try
    getDocFileTmp('���˵֣��ʣ�Ѻѭ����������ҽ���ͬ������5��', filename);
    WordControlFrm.connect;
    WordControlFrm.open(filename);
    WordControlFrm.replace('%hetonghao',ADOQuery1.FieldByName('hetonghao').AsString);
    WordControlFrm.replace('%jiekuanzhihangfuzeren',ADOQuery1.FieldByName('jiekuanzhihangfuzeren').AsString);
    WordControlFrm.replace('%jiekuanzhihangdizhi',ADOQuery1.FieldByName('jiekuanzhihangdizhi').AsString);
    WordControlFrm.replace('%jiekuanzhihangdianhua',ADOQuery1.FieldByName('jiekuanzhihangdianhua').AsString);
    WordControlFrm.replace('%jiekuanzhihang',ADOQuery1.FieldByName('jiekuanzhihang').AsString);
    
    WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
    WordControlFrm.replace('%jiekuanrenshenfenzhenghaoma',ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    WordControlFrm.replace('%jiekuanrenxianjuzhudizhi',ADOQuery1.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    WordControlFrm.replace('%jiekuanrenshouji',ADOQuery1.FieldByName('jiekuanrenshouji').AsString);
    WordControlFrm.replace('%jiekuanshijian',formatdatetime('yyyy-mm-dd',ADOQuery1.FieldByName('jiekuanshijian').AsDateTime));

    WordControlFrm.replace('%jiekuanjinedaxie',changdx2(ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000));
    WordControlFrm.replace('%jiekuanjinexiaoxie',vartostr(ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000));
    WordControlFrm.replace('%jiekuanyuefen',vartostr(ADOQuery1.FieldByName('qixian').AsInteger*12));
    WordControlFrm.replace('%daoqishijian',formatdatetime('yyyy-mm-dd',IncYear(ADOQuery1.FieldByName('jiekuanshijian').AsDateTime,ADOQuery1.FieldByName('qixian').AsInteger)));
    WordControlFrm.replace('%jiekuanyongtu',ADOQuery1.FieldByName('jiekuanyongtu').AsString);
    WordControlFrm.replace('%lilv',ADOQuery1.FieldByName('lilv').AsString);
    WordControlFrm.replace('%jiekuanrencunzhezhanghao',ADOQuery1.FieldByName('jiekuanrencunzhezhanghao').AsString);
    if ADOQuery1.FieldByName('huankuanfangshi').AsString='�ȶ�' then
      WordControlFrm.replace('%huankuanfangshi','4')
    else if ADOQuery1.FieldByName('huankuanfangshi').AsString='�ȶ��' then
      WordControlFrm.replace('%huankuanfangshi','5')
    else if ADOQuery1.FieldByName('huankuanfangshi').AsString='����(��)��Ϣ��ÿ���껹��' then
      WordControlFrm.replace('%huankuanfangshi','1')
    else if ADOQuery1.FieldByName('huankuanfangshi').AsString='����(��)��Ϣ������һ�λ���' then
      WordControlFrm.replace('%huankuanfangshi','2')
    else if ADOQuery1.FieldByName('huankuanfangshi').AsString='���¸�Ϣ����������' then
      WordControlFrm.replace('%huankuanfangshi','3');


    if not (print or printPreview) then begin

      showmessage('�����ɹ�');
    end else if printPreview then
      WordControlFrm.PrintPreview
    else
      WordControlFrm.Print;
  finally
    WordControlFrm.saveAndClose;
  end;
end;




procedure TFrmEdt.exporthunyin;
begin
sddoc.FileName := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '����״������.doc';

  if sddoc.Execute then begin
    try
      getDocFileTmp('����״������', sddoc.FileName);
      WordControlFrm.connect;
      WordControlFrm.open(sddoc.FileName);
      showmessage('�����ɹ�')
    finally
      WordControlFrm.saveAndClose;
    end;
  end;

end;

procedure TFrmEdt.exportqiepin;
begin
  sddoc.FileName := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          'ѺƷ��֤�����վ�.doc';

  if sddoc.Execute then begin
    try
      getDocFileTmp('ѺƷ��֤�����վ�', sddoc.FileName);
      WordControlFrm.connect;
      WordControlFrm.open(sddoc.FileName);
      WordControlFrm.replace('%jiekuanrenxingming',ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
      WordControlFrm.replace('%dailiren',ADOQuery1.FieldByName('dailiren').AsString);
      WordControlFrm.replace('%hetonghao',ADOQuery1.FieldByName('hetonghao').AsString);
      WordControlFrm.replace('%daikuanjine',ADOQuery1.FieldByName('daikuanjine').AsString);
      WordControlFrm.replace('%qixian',ADOQuery1.FieldByName('qixian').AsString);
      WordControlFrm.replace('%xiangmubianhao',ADOQuery1.FieldByName('xiangmubianhao').AsString);
      if ADOQuery1.FieldByName('print8').AsString='0' then begin
        WordControlFrm.replace('%baoxian1','');
        WordControlFrm.replace('%baoxian2','');
        WordControlFrm.replace('%baoxian3','');
        WordControlFrm.replace('%baoxian4','');
      end else begin
        WordControlFrm.replace('%baoxian1','2');
        WordControlFrm.replace('%baoxian2','���յ���');
        WordControlFrm.replace('%baoxian3','1');
        WordControlFrm.replace('%baoxian4',ADOQuery1.FieldByName('baodanhao').AsString);
      end;
      showmessage('�����ɹ�')
    finally
      WordControlFrm.saveAndClose;
    end;
  end;

end;

procedure TFrmEdt.viewallforPrint(id: String);
var sqlstr:String;
begin
  sqlstr := ' select * from viewallforprint where id='+id;
  opensql(sqlstr, ADOQuery1);

end;

procedure TFrmEdt.N33Click(Sender: TObject);
var FrmShouQuanWeiTuoShu:TFrmShouQuanWeiTuoShu;
begin
  //
  FrmShouQuanWeiTuoShu:=TFrmShouQuanWeiTuoShu.Create(self);
  if cb.checked then
    FrmShouQuanWeiTuoShu.quickrep1.Preview
  else
    FrmShouQuanWeiTuoShu.quickrep1.Print;

end;

procedure TFrmEdt.DBEdit73Exit(Sender: TObject);
begin
  try
    aTdaikuan.FieldByName('qizhiriqi').AsString :=
      formatdatetime('yyyy', now)+'-'+
      formatdatetime('yyyy', IncYear(now,aTdaikuan.FieldByName('qixian').AsInteger));
  except
  end;
end;

procedure TFrmEdt.DBEdit41Exit(Sender: TObject);
begin
  try
    atFangwu.FieldByName('pinggujiage').AsCurrency :=
      strtocurr(formatcurr('0',atFangwu.FieldByName('pinggujiage2').AsCurrency*10000/atFangwu.FieldByName('fangwujianzhumianji').AsCurrency+0.5));  
  except
  end;
end;

procedure TFrmEdt.DBLookupComboBox1Exit(Sender: TObject);
begin
  if DBLookupComboBox1.Text<> '' then begin
    ATFangwu.FieldByName('shoufangrenxingming').AsString :=
      FrmMain.DSXiangMu.DataSet.FieldByName('kaifashang').AsString;
    ATFangwu.FieldByName('fangwulouyumingcheng').AsString :=
      FrmMain.DSXiangMu.DataSet.FieldByName('xiangmumingcheng').AsString;
    ATDaiKuan.FieldByName('shoufangrencunzhezhanghao').AsString :=
      FrmMain.DSXiangMu.DataSet.FieldByName('zhanghao').AsString;

  end;
end;

procedure TFrmEdt.N34Click(Sender: TObject);
begin
  exportqiepin;
end;

procedure TFrmEdt.N35Click(Sender: TObject);
var FrmHunYin3:TFrmHunYin3;
begin
  FrmHunYin3 := TFrmHunYin3.Create(self);
  if cb.checked then
    FrmHunYin3.QuickRep1.Preview
  else
    FrmHunYin3.QuickRep1.Print;

end;

procedure TFrmEdt.N38Click(Sender: TObject);
begin
  self.exportdiyahetong(false, false);
end;

procedure TFrmEdt.N46Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportdiyahetong(true, true)
  else
    self.exportdiyahetong(true, false);
end;

procedure TFrmEdt.N44Click(Sender: TObject);
begin
  exportdiyachengnuohan(false, false);
end;

procedure TFrmEdt.N52Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportdiyachengnuohan(true, true)
  else
    self.exportdiyachengnuohan(true, false);
end;

procedure TFrmEdt.N45Click(Sender: TObject);
begin
  exportdiyashouquanshu(false, false);
end;

procedure TFrmEdt.N53Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportdiyashouquanshu(true, true)
  else
    self.exportdiyashouquanshu(true, false);

end;

procedure TFrmEdt.N39Click(Sender: TObject);
begin
  exportdiyaeduxieyi(false, false);
end;

procedure TFrmEdt.N47Click(Sender: TObject);
begin

  if cb.Checked then
    self.exportdiyaeduxieyi(true, true)
  else
    self.exportdiyaeduxieyi(true, false);

end;

procedure TFrmEdt.N40Click(Sender: TObject);
begin
  exportdiyadiyahetong(false, false);
end;

procedure TFrmEdt.N48Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportdiyadiyahetong(true, true)
  else
    self.exportdiyadiyahetong(true, false);

end;

procedure TFrmEdt.N41Click(Sender: TObject);
begin
  exportdiyadiyawiqingkuang(false, false);
end;

procedure TFrmEdt.N49Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportdiyadiyawiqingkuang(true, true)
  else
    self.exportdiyadiyawiqingkuang(true, false);

end;

procedure TFrmEdt.N42Click(Sender: TObject);
begin
  exportdiyaedushenqing(false, false)
end;

procedure TFrmEdt.N50Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportdiyaedushenqing(true, true)
  else
    self.exportdiyaedushenqing(true, false);

end;

procedure TFrmEdt.N43Click(Sender: TObject);
begin
  exportdiyayongkuanshepi(false, false);
end;

procedure TFrmEdt.N51Click(Sender: TObject);
begin

  if cb.Checked then
    self.exportdiyayongkuanshepi(true, true)
  else
    self.exportdiyayongkuanshepi(true, false);

end;

procedure TFrmEdt.N55Click(Sender: TObject);
begin
  exportedutaizhang
end;

procedure TFrmEdt.N56Click(Sender: TObject);
begin
  exportkaifaqu(false, false);
end;

procedure TFrmEdt.N54Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportkaifaqu(true, true)
  else
    self.exportkaifaqu(true, false);
end;

procedure TFrmEdt.N59Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportjiaonan1(true, true)
  else
    self.exportjiaonan1(true, false);
end;

procedure TFrmEdt.N60Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportjiaonan2(true, true)
  else
    self.exportjiaonan2(true, false)
end;

procedure TFrmEdt.N57Click(Sender: TObject);
begin
  exportjiaonan1(false, false);
end;

procedure TFrmEdt.N58Click(Sender: TObject);
begin
  exportjiaonan2(false, false);
end;

procedure TFrmEdt.N61Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportchengnuohan(true, true)
  else
    self.exportchengnuohan(true, false);
end;

procedure TFrmEdt.N62Click(Sender: TObject);
begin
  exportchengnuohan(false, false);
end;

procedure TFrmEdt.N72Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportshouquanweituoshu(true, true)
  else
    self.exportshouquanweituoshu(true, false);
end;

procedure TFrmEdt.N73Click(Sender: TObject);
begin
  exportshouquanweituoshu(false, false);
end;

procedure TFrmEdt.N74Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportshenpibiao(true, true)
  else
    self.exportshenpibiao(true, false);
end;

procedure TFrmEdt.N75Click(Sender: TObject);
begin
  self.exportshenpibiao(false, false);
end;

procedure TFrmEdt.N76Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportzijinhuazhang(true, true)
  else
    self.exportzijinhuazhang(true, false);
end;

procedure TFrmEdt.N77Click(Sender: TObject);
begin
    self.exportzijinhuazhang(false, false);
end;

procedure TFrmEdt.N78Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportshenqingbiao(true, true)
  else
    self.exportshenqingbiao(true, false);
end;

procedure TFrmEdt.N79Click(Sender: TObject);
begin
  self.exportshenqingbiao(false, false)
end;


procedure TFrmEdt.exportedutaizhang;
function formatvalue(value:String):String ;
begin
  if trim(value)='' then begin
    value := '--';
  end ;
  result := value;
end;
begin
  sd.FileName := ADOQuery1.FieldByName('jiekuanrenxingming').AsString+
                          '���˵֣��ʣ�Ѻѭ��������̨��.xls';
  if sd.Execute then begin
    try                                                               

      scEE.LoadDefaultProperties;
      scEE.ExcelVisible:=false;
      scEE.ConnectTo:=ctNewExcel;
      scEE.Filename:= getExcelFileTmp('\�ھӱ�\���˵֣��ʣ�Ѻѭ��������̨��', sd.FileName);
      // Add data to existing worksheet
      scEE.WorksheetName:='���˵�(��)Ѻѭ��������̨��';
      scEE.Connect;

      scEE.ExcelWorkSheet.Range['A6','A6'].Value :=
        formatvalue(ADOQuery1.FieldByName('hetonghao').AsString);
      scEE.ExcelWorkSheet.Range['B6','B6'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
      scEE.ExcelWorkSheet.Range['C6','C6'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
      scEE.ExcelWorkSheet.Range['D6','D6'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeiouxingming').AsString);
      scEE.ExcelWorkSheet.Range['E6','E6'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);
      scEE.ExcelWorkSheet.Range['G6','G6'].Value :=
        formatvalue(CurrtoStr(ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000));
      scEE.ExcelWorkSheet.Range['H6','H6'].Value :=
        formatvalue(CurrtoStr(ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000));
      scEE.ExcelWorkSheet.Range['I6','I6'].Value :=
        formatDateTime('yyyymmdd', now);
      scEE.ExcelWorkSheet.Range['J6','J6'].Value :=
        formatvalue(ADOQuery1.FieldByName('qixian').AsString+'��');
      scEE.ExcelWorkSheet.Range['L6','L6'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenxingming').AsString);
      scEE.ExcelWorkSheet.Range['M6','M6'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
      scEE.ExcelWorkSheet.Range['O6','O6'].Value :=
        formatvalue(ADOQuery1.FieldByName('pinggujiage2').AsString+'��Ԫ');
      scEE.ExcelWorkSheet.Range['P6','P6'].Value :=
        formatvalue(ADOQuery1.FieldByName('diyalv').AsString);
        scEE.ExcelWorkSheet.Range['Q6','Q6'].Value :=
        formatvalue(ADOQuery1.FieldByName('fangwudiliweizhi').AsString);
      scEE.ExcelWorkSheet.Range['R6','R6'].Value :=
        formatvalue(ADOQuery1.FieldByName('huankuanfangshi').AsString);
      scEE.ExcelWorkSheet.Range['S6','S6'].Value :=
        formatvalue(ADOQuery1.FieldByName('lilv').AsString);
      scEE.ExcelWorkSheet.Range['AC6','AC6'].Value :=
        formatvalue(ADOQuery1.FieldByName('hetonghao').AsString);
      scEE.ExcelWorkSheet.Range['AG6','AG6'].Value :=
        formatvalue(ADOQuery1.FieldByName('hetonghao').AsString);
      scEE.ExcelWorkSheet.Range['AH6','AH6'].Value :=
        formatvalue(ADOQuery1.FieldByName('hetonghao').AsString);
        
      scEE.ExcelWorkSheet.Range['AK6','AK6'].Value :=
        formatvalue(ADOQuery1.FieldByName('shoufukuanbili').AsString);
      scEE.ExcelWorkSheet.Range['AL6','AL6'].Value :=
        formatvalue(CurrtoStr(ADOQuery1.FieldByName('daikuanjine').AsCurrency*10000));
      scEE.ExcelWorkSheet.Range['AR6','AR6'].Value :=
        formatvalue(ADOQuery1.FieldByName('qixian').AsString+'��');
      scEE.ExcelWorkSheet.Range['AS6','AS6'].Value :=
        formatvalue(ADOQuery1.FieldByName('jiekuanyongtu').AsString);
      scEE.ExcelWorkSheet.Range['AT6','AT6'].Value :=
        formatvalue(ADOQuery1.FieldByName('dailiren').AsString);


      scEE.ExcelWorkSheet.Range['AS12','AT12'].Value :=
        formatDateTime('yyyy', now) + '��' +
        formatDateTime('mm', now) + '��' +
        formatDateTime('dd', now) + '��' ;
      scEE.SaveAs(sd.FileName,ffxls);
      showmessage('�ѵ����ɹ�');

    finally
      scEE.Disconnect;
    end;
  end;
end;

procedure TFrmEdt.N81Click(Sender: TObject);
begin
  exportedutaizhang;
end;

procedure TFrmEdt.N82Click(Sender: TObject);
begin
  if cb.Checked then
    self.exporteduxieyi(true, true)
  else
    self.exporteduxieyi(true, false);
end;

procedure TFrmEdt.N83Click(Sender: TObject);
begin
  self.exporteduxieyi(false, false);
end;

procedure TFrmEdt.N84Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportzuigaoediyahetong(true, true)
  else
    self.exportzuigaoediyahetong(true, false);
end;

procedure TFrmEdt.N85Click(Sender: TObject);
begin
  exportzuigaoediyahetong(false, false);
end;

procedure TFrmEdt.N86Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportdaikuanjiekuanhetong(true, true)
  else
    self.exportdaikuanjiekuanhetong(true, false);
end;

procedure TFrmEdt.N87Click(Sender: TObject);
begin
  exportdaikuanjiekuanhetong(false, false);
end;

procedure TFrmEdt.N88Click(Sender: TObject);
begin
  exportedubaogao(false, false);
end;

procedure TFrmEdt.N89Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportedubaogao(true, true)
  else
    self.exportedubaogao(true, false);
end;

procedure TFrmEdt.N90Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportwudaikuanshengming(true, true)
  else
    self.exportwudaikuanshengming(true, false);
end;

procedure TFrmEdt.ff1Click(Sender: TObject);
begin
  exportwudaikuanshengming(false, false);
end;

procedure TFrmEdt.N95Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportdaikuanchengnuohan(true, true)
  else
    self.exportdaikuanchengnuohan(true, false);
end;

procedure TFrmEdt.N96Click(Sender: TObject);
begin
  exportdaikuanchengnuohan(false, false);
end;

procedure TFrmEdt.N99Click(Sender: TObject);
begin
  // exportshoufukuanshoudaotiao
  if cb.Checked then
    self.exportshoufukuanshoudaotiao(true, true)
  else
    self.exportshoufukuanshoudaotiao(true, false);
end;

procedure TFrmEdt.N100Click(Sender: TObject);
begin
  exportshoufukuanshoudaotiao(false, false);
end;

procedure TFrmEdt.DBComboBox41Change(Sender: TObject);
var index:Integer;
begin
  try
    index := DBComboBox41.Items.IndexOf(DBComboBox41.Text);
    DBComboBox42.Field.AsString := DBComboBox42.Items[index];
    DBComboBox88.Field.AsString := DBComboBox88.Items[index];
  except
    showmessage('�Ŵ�Ա���ѡ�������쳣���޷��Զ������Ŵ�Ա(���֤���绰)');
  end;
  ATJieKuanRen.Post;
  ATJieKuanRen.Edit;
end;

procedure TFrmEdt.N103Click(Sender: TObject);
begin

  if cb.Checked then
    self.exportdengjishenqingshu(true, true)
  else
    self.exportdengjishenqingshu(true, false);
end;

procedure TFrmEdt.N104Click(Sender: TObject);
begin
  exportdengjishenqingshu(false, false);
end;

procedure TFrmEdt.N106Click(Sender: TObject);
begin

  if cb.Checked then
    self.exportzhufangmaimaihetong(true, true)
  else
    self.exportzhufangmaimaihetong(true, false);
end;



procedure TFrmEdt.N107Click(Sender: TObject);
begin
  exportzhufangmaimaihetong(false, false);
end;

procedure TFrmEdt.N111Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportzhiyahetong(true, true)
  else
    self.exportzhiyahetong(true, false);
end;

procedure TFrmEdt.doc1Click(Sender: TObject);
begin
  exportzhiyahetong(false, false);
end;

procedure TFrmEdt.N114Click(Sender: TObject);
begin
    if cb.Checked then
    self.exportbaozhenghetong(true, true)
  else
    self.exportbaozhenghetong(true, false);
end;

procedure TFrmEdt.N115Click(Sender: TObject);
begin
  exportbaozhenghetong(false, false);
end;

procedure TFrmEdt.Button12Click(Sender: TObject);
begin
  self.exportToXML('');
end;

procedure TFrmEdt.N116Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportjiekuandiyahetong(true, true)
  else
    self.exportjiekuandiyahetong(true, false);
end;

procedure TFrmEdt.N118Click(Sender: TObject);
begin
  self.exportjiekuandiyahetong(false, false);
end;

procedure TFrmEdt.N119Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportpinggubaogao(true, true)
  else
    self.exportpinggubaogao(true, false);
end;

procedure TFrmEdt.N120Click(Sender: TObject);
begin
  exportpinggubaogao(false, false);
end;

procedure TFrmEdt.N121Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportpinggubaogao(true, true)
  else
    self.exportpinggubaogao(true, false);
end;

procedure TFrmEdt.N122Click(Sender: TObject);
begin
  exportpinggubaogao(false, false);
end;

procedure TFrmEdt.N123Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportpinggubaogao2(true, true)
  else
    self.exportpinggubaogao2(true, false);
end;

procedure TFrmEdt.N124Click(Sender: TObject);
begin
  exportpinggubaogao2(false, false);
end;

procedure TFrmEdt.N125Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportpinggubaogao2(true, true)
  else
    self.exportpinggubaogao2(true, false);
end;

procedure TFrmEdt.N126Click(Sender: TObject);
begin
  exportpinggubaogao2(false, false);
end;

procedure TFrmEdt.DBComboBox82Change(Sender: TObject);
var index:Integer;
begin
  try
    index := DBComboBox82.Items.IndexOf(DBComboBox82.Text);
    DBComboBox85.Field.AsString := DBComboBox85.Items[index];
    DBComboBox86.Field.AsString := DBComboBox86.Items[index];
    DBComboBox87.Field.AsString := DBComboBox87.Items[index];
  except
    showmessage('���֧�����ѡ�������쳣���޷��Զ����Ľ��֧��(�����ˣ���ַ���绰)');
  end;
  ATDaiKuan.Post;
  ATDaiKuan.Edit;
end;



procedure TFrmEdt.N1Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportchuzhixieyishu(true, true)
  else
    self.exportchuzhixieyishu(true, false);
end;

procedure TFrmEdt.N71Click(Sender: TObject);
begin
  self.exportchuzhixieyishu(false, false);
end;

procedure TFrmEdt.N3Click1Click(Sender: TObject);
begin
  self.exportbuchongxieyi(false, false);
end;

procedure TFrmEdt.N94Click(Sender: TObject);
begin
  self.exportgongtongzhaiwurenchengnuohan(false, false);
end;

procedure TFrmEdt.N65Click(Sender: TObject);
begin
  self.exportgerenxingyongchaxun(false, false);
end;

procedure TFrmEdt.N127Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportchengnuonew(true, true)
  else
    self.exportchengnuonew(true, false);
end;

procedure TFrmEdt.N129Click(Sender: TObject);
begin
  if cb.Checked then
    self.exportchengnuonew(true, true)
  else
    self.exportchengnuonew(true, false);
end;

procedure TFrmEdt.N130Click(Sender: TObject);
begin
  self.exportchengnuonew(false, false);
end;

procedure TFrmEdt.N128Click(Sender: TObject);
begin
  self.exportchengnuonew(false, false);
end;

end.
