program pro;

uses
  Forms,
  UntMain in 'UntMain.pas' {FrmMain},
  untEdt in 'untEdt.pas' {FrmEdt},
  UntShenPiXinXi1 in 'UntShenPiXinXi1.pas' {FrmShenPiXinXi1},
  UntShenPiXinXi2 in 'UntShenPiXinXi2.pas' {FrmShenPiXinXi2},
  UntFangWuChuZhiXieYiShu in 'UntFangWuChuZhiXieYiShu.pas' {FrmFangWuChuZhiXieYiShu},
  UntGongTongZhaiWuRenChengNuoShu in 'UntGongTongZhaiWuRenChengNuoShu.pas' {FrmGongTongZhaiWuRenChengNuoShu},
  UntZaiJiaoYiBuChengXieYi in 'UntZaiJiaoYiBuChengXieYi.pas' {FrmZaiJiaoYiBuChengXieYi},
  UntFangWuChuShouZhengMing in 'UntFangWuChuShouZhengMing.pas' {FrmFangWuChuShouZhengMing},
  UntFangDiChanDengJiShenQingShu in 'UntFangDiChanDengJiShenQingShu.pas' {FrmFangDiChanDengJiShenQingShu},
  UntGeRenShouXinYeWuShenQingBiao in 'UntGeRenShouXinYeWuShenQingBiao.pas' {FrmGeRenShouXinYeWuShenQingBiao},
  UntWenJianYiJiaoQingDan_DB in 'UntWenJianYiJiaoQingDan_DB.pas' {FrmWenJianYiJiaoQingDan},
  UntYiJianBiao in 'UntYiJianBiao.pas' {FrmYiJianBiao},
  UntHunYin in 'UntHunYin.pas' {FrmHunYin},
  UntBuChengXieYi in 'UntBuChengXieYi.pas' {FrmBuChengXieYi},
  UntJieKuanDiYaHeTong in 'UntJieKuanDiYaHeTong.pas' {FrmJieKuanDiYaHeTong},
  UntLogin in 'UntLogin.pas' {FrmLogin},
  UntDaiKuanShenQingShu1 in 'UntDaiKuanShenQingShu1.pas' {FrmDaiKuanShenQingShu1},
  UntDaiKuanShenQingShu2 in 'UntDaiKuanShenQingShu2.pas' {FrmDaiKuanShenQingShu2},
  untChaXunshouQuanShu in 'untChaXunshouQuanShu.pas' {FrmChaXunShouQuanShu},
  untHunYin2 in 'untHunYin2.pas' {FrmHunYin2},
  wordtest in 'wordtest.pas' {WordControlFrm},
  UntXiangMu in 'UntXiangMu.pas' {FrmXiangMu},
  UntDaiKuanChengNuoHan in 'UntDaiKuanChengNuoHan.pas' {FrmDaiKuanChengNuoHan},
  UntJuJieShu in 'UntJuJieShu.pas' {FrmJuJieShu},
  UntDaiKuanShenPiBiao in 'UntDaiKuanShenPiBiao.pas' {FrmDaiKuanShenPiBiao},
  untExplorer in 'untExplorer.pas' {FrmExplorer},
  untYaPinQieZhengZiLiaoShouJu in 'untYaPinQieZhengZiLiaoShouJu.pas' {FrmYaPinShouJu},
  UntJieKuanJieJu in 'UntJieKuanJieJu.pas' {FrmJieKuanJieJu},
  UntQiTaZhengXin in 'UntQiTaZhengXin.pas' {FrmQiTaZhengXin},
  UntLanCunZhengMing in 'UntLanCunZhengMing.pas' {FrmLanCunZhengMing},
  untSysSet in 'untSysSet.pas' {FrmSysSet},
  reg in '..\key\reg.pas' {RegFrm},
  UntShouQuanWeiTuoShu in 'UntShouQuanWeiTuoShu.pas' {frmShouQuanWeiTuoShu},
  untDict in 'untDict.pas' {FrmDict},
  UntHunYin3 in 'UntHunYin3.pas' {FrmHunYin3},
  UntEmailData in 'UntEmailData.pas' {FrmEmailData},
  UntUpload in 'UntUpload.pas' {FrmUpload},
  UntUser in 'UntUser.pas' {FrmUser},
  UntUserLogin in 'UntUserLogin.pas' {FrmUserLogin},
  md5 in 'md5.pas',
  untUtil in 'untUtil.pas',
  untUpdate in 'untUpdate.pas',
  UntCCASImport in 'UntCCASImport.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '中行贷款管理系统';
  if reg.checkreg then begin
    Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TFrmUser, FrmUser);
  Application.CreateForm(TFrmUserLogin, FrmUserLogin);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TWordControlFrm, WordControlFrm);
  Application.CreateForm(TFrmXiangMu, FrmXiangMu);
  Application.CreateForm(TFrmQiTaZhengXin, FrmQiTaZhengXin);
  Application.CreateForm(TFrmSysSet, FrmSysSet);
  Application.CreateForm(TfrmShouQuanWeiTuoShu, frmShouQuanWeiTuoShu);
  Application.CreateForm(TFrmDict, FrmDict);
  Application.CreateForm(TFrmEmailData, FrmEmailData);
  Application.CreateForm(TFrmUpload, FrmUpload);
  end;
  Application.Run;
end.
