unit UntCCASImport;

interface
uses Classes, SysUtils, Forms, untUtil, UntMain, UntEdt, Variants, DateUtils;

function find(name, shenfenzheng:String):String;
function findpeiou(name, shenfenzheng:String):String;
function import(msg:String):String;
function importfind(name, shenfenzheng: String): String;
function getCCASValue(name, value:String):String;

implementation
var lastfindname, lastfindshenfenzheng:String;


{旧版CCAS
function TFrmMain.import(msg:String):String;
var sqlstr,fn, mainid:String;
msgs:TStrings;
begin
  mainid := '';

  fn := ExtractFilePath(Application.ExeName)+'tmp.ini';
  msgs := TStringList.Create;
  msgs.Text := msg;
  msgs[0]:= '[import]';
  msgs.SaveToFile(fn);
  sqlstr := 'select mainid from t_jiekuanren where 1=1 ';
  if lastfindname <> '' then
    sqlstr := sqlstr+' and  jiekuanrenxingming='''+DBS(lastfindname)+'''';
  if lastfindshenfenzheng<> '' then
    sqlstr := sqlstr+' and jiekuanrenshenfenzhenghaoma='''+DBS(lastfindshenfenzheng)+'''';
  opensql(sqlstr ,AQOpen);

  if (AQOpen.eof and AQOpen.bof) then begin
    mainid := '';
  end else begin
    mainid := AQOpen.FieldByName('mainid').AsString;
  end;
  
  FrmEdt := TFrmEdt.Create(self);
  if mainid = '' then
    FrmEdt.new(0)
  else
    FrmEdt.edit(mainid, false);

    //CCAS_PLAATRN.CBICUSNM 姓名
    msgs.Add('CCAS_PLAATRN.CBICUSNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingming').AsString);
    //CCAS_PLAATRN.CBISEXID 性别
    msgs.Add('CCAS_PLAATRN.CBISEXID='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingbie').AsString);
    //CCAS_PLAATRN.CBIBTHDA 出生日期
    try
      msgs.Add('CCAS_PLAATRN.CBIBTHDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenchushengnianyue').AsDateTime));
    except
    end;
    //CCAS_PLAATRN.LCLIVEYRLMT 现居住时间
    msgs.Add('CCAS_PLAATRN.LCLIVEYRLMT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhushijian').AsString);
    //CCAS_PLAATRN.CBICERTY 证件类别
    msgs.Add('CCAS_PLAATRN.CBICERTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenzhengjianleibie').AsString);
    //CCAS_PLAATRN.CBICERNO 证件号码
    msgs.Add('CCAS_PLAATRN.CBICERNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    //CCAS_PLAATRN.CBICTADD 通讯地址
    msgs.Add('CCAS_PLAATRN.CBICTADD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    //CCAS_PLAATRN.CBIPSTCD 邮政编码
    msgs.Add('CCAS_PLAATRN.CBIPSTCD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyoubian').AsString);
    //CCAS_PLAATRN.PERHMTEL 住宅电话
    msgs.Add('CCAS_PLAATRN.PERHMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjiatingdianhua').AsString);
    //CCAS_PLAATRN.PERMBLNO 手机号码
    msgs.Add('CCAS_PLAATRN.PERMBLNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenshouji').AsString);
    //CCAS_PLAATRN.PERHOMAD 现住地址
    msgs.Add('CCAS_PLAATRN.PERHOMAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    //CCAS_PLAATRN.PERCMTEL 单位电话
    msgs.Add('CCAS_PLAATRN.PERCMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidianhua').AsString);
    //CCAS_PLAATRN.OTHERTEL 其它电话
    //CCAS_PLAATRN.CUSDMCLR 户籍所在地
    msgs.Add('CCAS_PLAATRN.CUSDMCLR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhujisuozaidi').AsString);
    //CCAS_PLAATRN.PEREDUBK 教育程度
    msgs.Add('CCAS_PLAATRN.PEREDUBK='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxueli').AsString);
    //CCAS_PLAATRN.LIVESTUS 居住状况
    msgs.Add('CCAS_PLAATRN.LIVESTUS='+FrmEdt.ATDaiKuan.FieldByName('jiekuanrenxianzhufangquanshu').AsString);
    //CCAS_PLAATRN.PERWOKDA 参加工作时间
    msgs.Add('CCAS_PLAATRN.PERWOKDA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuonianxian').AsString);
    //CCAS_PLAATRN.PERNWKDA 现职年数
    msgs.Add('CCAS_PLAATRN.PERNWKDA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenrenxianzhinianxian').AsString);
    //CCAS_PLAATRN.PERCMPNM 现工作单位
    msgs.Add('CCAS_PLAATRN.PERCMPNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanwei').AsString);
    //CCAS_PLAATRN.WKIBUSTY 单位所属行业
    msgs.Add('CCAS_PLAATRN.WKIBUSTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweisuoshuhangye').AsString);
    //CCAS_PLAATRN.PERCMPAD 现单位地址
    msgs.Add('CCAS_PLAATRN.PERCMPAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString);
    //CCAS_PLAATRN.PERRGCPT 企业注册资本
    msgs.Add('CCAS_PLAATRN.PERRGCPT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweizhuceziben').AsString);
    //CCAS_PLAATRN.PEROCCPA 职 业
    msgs.Add('CCAS_PLAATRN.PEROCCPA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuogangwei').AsString);
    //CCAS_PLAATRN.PERTITLE 职 称
    msgs.Add('CCAS_PLAATRN.PERTITLE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjishuzige').AsString);
    //CCAS_PLAATRN.DOMICILE 客户户籍
    msgs.Add('CCAS_PLAATRN.DOMICILE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguoji').AsString);
    //CCAS_PLAATRN.CLIENTCHR 客户特征
    msgs.Add('CCAS_PLAATRN.CLIENTCHR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenkehutezheng').AsString);
    //CCAS_PLAATRN.WKIMONIN 月收入
    msgs.Add('CCAS_PLAATRN.WKIMONIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyuegongzishouru').AsString);
    //CCAS_PLAATRN.PERHMCAD 信用卡数量
    msgs.Add('CCAS_PLAATRN.PERHMCAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxinyongkashuliang').AsString);
    //CCAS_PLAATRN.OPENBK 开户银行
    //CCAS_PLAATRN.SALARYACC 工资帐号
    //CCAS_PLAATRN.BOCCLIENT 成为BOC客户的时间
    msgs.Add('CCAS_PLAATRN.BOCCLIENT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenboc').AsString);
    //CCAS_PLAATRN.BANKACCINF 银行往来情况
    msgs.Add('CCAS_PLAATRN.BANKACCINF='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyinhangwanglaiqingkuang').AsString);
    //CCAS_PLAATRN.HVCMPCHARTERFLG 提供任职单位营业执照
    msgs.Add('CCAS_PLAATRN.HVCMPCHARTERFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrentigongdanweiyingyezhizhao').AsString);
    //CCAS_PLAATRN.HVLIVEPRAVEFLG 购买两套以上住房
    msgs.Add('CCAS_PLAATRN.HVLIVEPRAVEFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanren2fang').AsString);
    //CCAS_PLAATRN.HVHSID 房产证
    //CCAS_PLAATRN.HSAGE 楼 龄
    //CCAS_PLAATRN.HSUSESTATUS 物业使用状况
    //CCAS_PLAATRN.HSKIND 物业性质
    //CCAS_PLAATRN.HSUSE 物业用途
    //CCAS_PLAATRN.LINKNM 联系人姓名
    //CCAS_PLAATRN.LINKADDR 性 别
    //CCAS_PLAATRN.LINKCERTY 证件类别
    //CCAS_PLAATRN.LINKCERNO 证件号码
    //CCAS_PLAATRN.LINKHOMAD 联系地址
    //CCAS_PLAATRN.LINKHMTEL 住宅电话
    //CCAS_PLAATRN.LINKMBLNO 手机号码
    //CCAS_PLAATRN.HVTWOHSFLG 提供居留证明
    msgs.Add('CCAS_PLAATRN.HVTWOHSFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrentigongjuliuzhengming').AsString);
    //CCAS_PLAATRN.PERHMPER 供养人数
    msgs.Add('CCAS_PLAATRN.PERHMPER='+FrmEdt.ATJieKuanRen.FieldByName('gongyangrenrenshu').AsString);
    //CCAS_PLAATRN.PERRELFG 关联客户标记
    msgs.Add('CCAS_PLAATRN.PERRELFG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguanliankehubiaoji').AsString);
    //CCAS_PLAATRN.PERSOURC 客户来源
    msgs.Add('CCAS_PLAATRN.PERSOURC='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenkehulaiyuan').AsString);
    //CCAS_PLAATRN.PERCRMFG 是否有违法记录
    msgs.Add('CCAS_PLAATRN.PERCRMFG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenweifanjilu').AsString);

    //2
    //CCAS_PERCREDIT.MATCHNMID_1   档案上的名字与客户提供相符
    msgs.Add('CCAS_PERCREDIT.MATCHNMID_1='+FrmEdt.ATZhengXin.FieldByName('档案上的名字与客户提供相符').AsString);
    //CCAS_PERCREDIT.MATCHADID_1   档案上的地址与客户提供相符
    msgs.Add('CCAS_PERCREDIT.MATCHADID_1='+FrmEdt.ATZhengXin.FieldByName('档案上的地址与客户提供相符').AsString);
    //CCAS_PERCREDIT.CONFIRMID_1   由公安部身份认证中心确认
    msgs.Add('CCAS_PERCREDIT.CONFIRMID_1='+FrmEdt.ATZhengXin.FieldByName('由公安部身份认证中心确认').AsString);
    //CCAS_PERCREDIT.CREDITFG_1    借款人资信情况
    msgs.Add('CCAS_PERCREDIT.CREDITFG_1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenchengxinxitongchaxunqingkuang').AsString);
    //CCAS_PERCREDIT.SPOCREFG_1   配偶资信情况
    msgs.Add('CCAS_PERCREDIT.SPOCREFG_1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouchengxinxitongchaxunqingkuang').AsString);
    //CCAS_PERCREDIT.COMDRCNT_1 目前贷款笔数
    msgs.Add('CCAS_PERCREDIT.COMDRCNT_1='+FrmEdt.ATZhengXin.FieldByName('目前贷款笔数').AsString);
    //CCAS_PERCREDIT.BOCDRCNT_1 其中中行贷款笔数
    msgs.Add('CCAS_PERCREDIT.BOCDRCNT_1='+FrmEdt.ATZhengXin.FieldByName('其中中行贷款笔数').AsString);
    //CCAS_PERCREDIT.TOTDRBAL_1 总贷款金额
    msgs.Add('CCAS_PERCREDIT.TOTDRBAL_1='+FrmEdt.ATZhengXin.FieldByName('总贷款金额').AsString);
    //CCAS_PERCREDIT.DLTDRBAL_1 未偿贷款余额
    msgs.Add('CCAS_PERCREDIT.DLTDRBAL_1='+FrmEdt.ATZhengXin.FieldByName('未偿贷款余额').AsString);
    //CCAS_PERCREDIT.MOTHLYPAY_1 月供
    msgs.Add('CCAS_PERCREDIT.MOTHLYPAY_1='+FrmEdt.ATZhengXin.FieldByName('月供').AsString);
    //CCAS_PERCREDIT.TOTARREAR_1 总欠款
    msgs.Add('CCAS_PERCREDIT.TOTARREAR_1='+FrmEdt.ATZhengXin.FieldByName('总欠款').AsString);
    //CCAS_PERCREDIT.CURDLTER_1 目前欠款期数
    msgs.Add('CCAS_PERCREDIT.CURDLTER_1='+FrmEdt.ATZhengXin.FieldByName('目前欠款期数').AsString);
    //CCAS_PERCREDIT.MAXDLTER_1 两年内欠款最长期数
    msgs.Add('CCAS_PERCREDIT.MAXDLTER_1='+FrmEdt.ATZhengXin.FieldByName('两年内欠款最长期数').AsString);
    //CCAS_PERCREDIT.DEBCDNUM_1 借记卡数量
    msgs.Add('CCAS_PERCREDIT.DEBCDNUM_1='+FrmEdt.ATZhengXin.FieldByName('借记卡数量').AsString);
    //CCAS_PERCREDIT.CRECDNUM_1 信用卡数量
    msgs.Add('CCAS_PERCREDIT.CRECDNUM_1='+FrmEdt.ATZhengXin.FieldByName('信用卡数量').AsString);
    //CCAS_PERCREDIT.BOCCDNUM_1 其中中行信用卡数量
    msgs.Add('CCAS_PERCREDIT.BOCCDNUM_1='+FrmEdt.ATZhengXin.FieldByName('其中中行信用卡数量').AsString);
    //CCAS_PERCREDIT.CREDITLINE_1 透支额度
    msgs.Add('CCAS_PERCREDIT.CREDITLINE_1='+FrmEdt.ATZhengXin.FieldByName('透支额度').AsString);
    //CCAS_PERCREDIT.OUTAMOUNT_1 未偿还余额
    msgs.Add('CCAS_PERCREDIT.OUTAMOUNT_1='+FrmEdt.ATZhengXin.FieldByName('未偿还余额').AsString);
    //CCAS_PERCREDIT.MOTHREPAY_1 本月应还款额
    msgs.Add('CCAS_PERCREDIT.MOTHREPAY_1='+FrmEdt.ATZhengXin.FieldByName('本月应还款额').AsString);
    //CCAS_PERCREDIT.EXPIRAMT_1 逾期金额
    msgs.Add('CCAS_PERCREDIT.EXPIRAMT_1='+FrmEdt.ATZhengXin.FieldByName('逾期金额').AsString);
    //CCAS_PERCREDIT.CUREXNUM_1 目前逾期未还笔数
    msgs.Add('CCAS_PERCREDIT.CUREXNUM_1='+FrmEdt.ATZhengXin.FieldByName('目前逾期未还笔数').AsString);
    //CCAS_PERCREDIT.MAXEXNUM_1 两年内最高逾期未还笔数
    msgs.Add('CCAS_PERCREDIT.MAXEXNUM_1='+FrmEdt.ATZhengXin.FieldByName('两年内最高逾期未还笔数').AsString);
    //CCAS_PERCREDIT.REMARK_1 备注
    msgs.Add('CCAS_PERCREDIT.REMARK_1='+FrmEdt.ATZhengXin.FieldByName('备注').AsString);

    //3
    //CCAS_PLAATRN.PERMRTST 婚姻状况
    msgs.Add('CCAS_PLAATRN.PERMRTST='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhunfou').AsString);
    //CCAS_PLAATRN.SPSNAME 配偶姓名
    msgs.Add('CCAS_PLAATRN.SPSNAME='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouxingming').AsString);
    //CCAS_PLAATRN.SPSCERTY 配偶证件类别
    msgs.Add('CCAS_PLAATRN.SPSCERTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouzhengjianleibie').AsString);
    //CCAS_PLAATRN.SPSCERNO 配偶证件号码
    msgs.Add('CCAS_PLAATRN.SPSCERNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);
    //CCAS_PLAATRN.SPSMNIN 配偶月收入
    msgs.Add('CCAS_PLAATRN.SPSMNIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString);
    //CCAS_PLAATRN.FAMILYOTSALARY 家庭其他成员月收入
    //msgs.Add('CCAS_PLAATRN.FAMILYOTSALARY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhunfou').AsString);
    //CCAS_PLAATRN.PERMTHTOUT 每月支出合计
    msgs.Add('CCAS_PLAATRN.PERMTHTOUT='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezhichu').AsString);
    //CCAS_PLAATRN.PERMTOTIN 家庭总收入
    msgs.Add('CCAS_PLAATRN.PERMTOTIN='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezongshouru').AsString);

    //4
    //CCAS_RETAILTRAN.HAFHOUID 楼盘编号
    //CCAS_RETAILTRAN.HAFHUSNA 楼宇名称
    msgs.Add('CCAS_RETAILTRAN.HAFHUSNA='+FrmEdt.ATFangWu.FieldByName('fangwulouyumingcheng').AsString);
    //CCAS_RETAILTRAN.TYPE 类型
    msgs.Add('CCAS_RETAILTRAN.TYPE='+FrmEdt.ATFangWu.FieldByName('fangwuleixing').AsString);
    //CCAS_RETAILTRAN.RELREFLG 物业状态
    msgs.Add('CCAS_RETAILTRAN.RELREFLG='+FrmEdt.ATFangWu.FieldByName('fangwuwuyezhuangtai').AsString);
    //CCAS_RETAILTRAN.TOTPRICE 购房总价
    msgs.Add('CCAS_RETAILTRAN.TOTPRICE='+Vartostr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    //CCAS_RETAILTRAN.PRICE 评估价
    msgs.Add('CCAS_RETAILTRAN.PRICE='+Vartostr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    //CCAS_RETAILTRAN.LCTBCTNO 购房合同号
    msgs.Add('CCAS_RETAILTRAN.LCTBCTNO='+FrmEdt.ATDaiKuan.FieldByName('hetonghao').AsString);
    //CCAS_RETAILTRAN.LAFLNUSE 购房用途
    msgs.Add('CCAS_RETAILTRAN.LAFLNUSE='+FrmEdt.ATFangWu.FieldByName('goufangyongtu').AsString);
    //CCAS_RETAILTRAN.LCTBLDAR 面积
    msgs.Add('CCAS_RETAILTRAN.LCTBLDAR='+FrmEdt.ATFangWu.FieldByName('fangwujianzhumianji').AsString);
    //tempgfdj 购房单价


    //5
    //CCAS_PLAATRN.LAFAPYAM 已交首期款
    try
      if pos('组',FrmEdt.ATDaiKuan.FieldByName('jiekuanzhonglei').AsString)>0 then
        msgs.Add('CCAS_PLAATRN.LAFAPYAM='+vartostr(
                (FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency+
                FrmEdt.ATDaiKuan.FieldByName('gongjijindaikuanjine').AsCurrency)*10000))
      else
        msgs.Add('CCAS_PLAATRN.LAFAPYAM='+
                vartostr(FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFDRCCY 借款货币
    msgs.Add('CCAS_PLAATRN.LAFDRCCY=人民币');
    //CCAS_PLAATRN.LAFDRAMT 申请借款金额
    msgs.Add('CCAS_PLAATRN.LAFDRAMT='+Vartostr(FrmEdt.ATDaiKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //CCAS_PLAATRN.LAFTERM 申请借款期限
    msgs.Add('CCAS_PLAATRN.LAFTERM='+Vartostr(FrmEdt.ATDaiKuan.FieldByName('qixian').AsInteger*12));
    //CCAS_PLAATRN.TMPINT 基准利率
    //CCAS_PLAATRN.FLRATESCA 利率浮动比例
    msgs.Add('CCAS_PLAATRN.FLRATESCA='+FrmEdt.ATDaiKuan.FieldByName('lilvfudongbeli').AsString);
    //CCAS_PLAATRN.FLRATE 利率浮动值
    //CCAS_PLAATRN.LAFRATVL 利 率
    msgs.Add('CCAS_PLAATRN.LAFRATVL='+frmEdt.ATDaiKuan.FieldByName('lilv').AsString);
    //CCAS_PLAATRN.LAFRATVD 利率调整周期
    msgs.Add('CCAS_PLAATRN.LAFRATVD=12');
    //CCAS_PLAATRN.RETPER 还款间隔
    //CCAS_PLAATRN.LAFRTMOD 还款方式
    msgs.Add('CCAS_PLAATRN.LAFRTMOD='+frmEdt.ATDaiKuan.FieldByName('huankuanfangshi').AsString);
    //CCAS_PLAATRN.LAFGRAPD 还款宽限期
    //CCAS_PLAATRN.LAFPACTT 还款帐号类型
    msgs.Add('CCAS_PLAATRN.LAFPACTT=个人结算帐户');
    //CCAS_PLAATRN.LAFPACT 还款帐号
    msgs.Add('CCAS_PLAATRN.LAFPACT='+frmEdt.ATDaiKuan.FieldByName('jiekuanrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.RETDTTYPE 还款日类型
    msgs.Add('CCAS_PLAATRN.RETDTTYPE=不变更还款日');
    //CCAS_PLAATRN.FIRRET 每期固定还款日
    //msgs.Add('CCAS_PLAATRN.FIRRET='+Vartostr(FrmEdt.ATJieKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //CCAS_PLAATRN.RECEIVEPER 收款人
    msgs.Add('CCAS_PLAATRN.RECEIVEPER='+FrmEdt.ATFangWu.FieldByName('shoufangrenxingming').AsString);
    //CCAS_PLAATRN.RECEIVEACCNO 收款人帐号
    msgs.Add('CCAS_PLAATRN.RECEIVEACCNO='+frmEdt.ATDaiKuan.FieldByName('shoufangrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.PAYMN 首期供款额
    //msgs.Add('CCAS_PLAATRN.PAYMN='+Vartostr(FrmEdt.ATJieKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //tempdyl 抵押率
    msgs.Add('tempdyl'+Vartostr(FrmEdt.ATDaiKuan.FieldByName('diyalv').ASString));
    //CCAS_PLAATRN.LOANRATE 贷款成数


    //6           addimp3334
    FrmEdt.ATLianMingKeHu.First;
    while not FrmEdt.ATLianMingKeHu.Eof do begin
    //CCAS_CCTCBITRN.CBICUSNM_1 联名客户姓名
    msgs.Add('CCAS_CCTCBITRN.CBICUSNM_1='+FrmEdt.ATLianMingKeHu.FieldByName('联名客户姓名').AsString);
    //CCAS_CCTPERTRN.PEREDUBK_1 最高学历
    msgs.Add('CCAS_CCTCBITRN.PEREDUBK_1='+FrmEdt.ATLianMingKeHu.FieldByName('最高学历').AsString);
    //CCAS_CCTCBITRN.CBICERTY_1 证件类别
    msgs.Add('CCAS_CCTCBITRN.CBICERTY_1='+FrmEdt.ATLianMingKeHu.FieldByName('证件类别').AsString);
    //CCAS_CCTCBITRN.CBICERNO_1 证件号码
    msgs.Add('CCAS_CCTCBITRN.CBICERNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('证件号码').AsString);
    //CCAS_CCTCBITRN.CBICTADD_1 联系地址
    msgs.Add('CCAS_CCTCBITRN.CBICTADD_1='+FrmEdt.ATLianMingKeHu.FieldByName('联系地址').AsString);
    //CCAS_CCTCBITRN.CBIPSTCD_1 邮政编码
    msgs.Add('CCAS_CCTCBITRN.CBIPSTCD_1='+FrmEdt.ATLianMingKeHu.FieldByName('邮政编码').AsString);
    //CCAS_CCTPERTRN.PEROCCPA_1 职 业
    msgs.Add('CCAS_CCTCBITRN.PEROCCPA_1='+FrmEdt.ATLianMingKeHu.FieldByName('职业').AsString);
    //CCAS_CCTPERTRN.PERCMPNM_1 工作单位   CCAS_CCTPERTRN.PERCMPNM_1
    msgs.Add('CCAS_CCTCBITRN.PERCMPNM_1='+FrmEdt.ATLianMingKeHu.FieldByName('工作单位').AsString);
    //CCAS_CCTCBITRN.CBIRID12_1 与主申请人关系
    msgs.Add('CCAS_CCTCBITRN.CBIRID12_1='+FrmEdt.ATLianMingKeHu.FieldByName('与主申请人关系').AsString);
    //CCAS_CCTPERTRN.WKIMONIN_1 月收入
    msgs.Add('CCAS_CCTCBITRN.WKIMONIN_1='+FrmEdt.ATLianMingKeHu.FieldByName('月收入').AsString);
    //CCAS_CCTPERTRN.PERPGRNO_1 联系电话
    msgs.Add('CCAS_CCTCBITRN.PERPGRNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('联系电话').AsString);
    //CCAS_CCTPERTRN.PERHMTEL_1 住宅电话
    msgs.Add('CCAS_CCTCBITRN.PERHMTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('住宅电话').AsString);
    //CCAS_CCTPERTRN.PERMBLNO_1 手机号码
    msgs.Add('CCAS_CCTCBITRN.PERMBLNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('手机号码').AsString);
    //CCAS_CCTPERTRN.PERCMTEL_1 单位电话
    msgs.Add('CCAS_CCTCBITRN.PERCMTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('单位电话').AsString);
    //CCAS_CCTPERTRN.OTHERTEL_1 其它电话
    msgs.Add('CCAS_CCTCBITRN.OTHERTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('其它电话').AsString);
      FrmEdt.ATLianMingKeHu.Next;
      if not FrmEdt.ATLianMingKeHu.eof then msgs.Add('addimp3334=click');
    end;

    //7    addimp333
    FrmEdt.ATDiYaWu.First;
    while not FrmEdt.ATDiYaWu.Eof do begin
    //CCAS_CCTCTI.IMPADDR_1 楼宇名称
    msgs.Add('CCAS_CCTCTI.IMPADDR_1='+FrmEdt.ATDiYaWu.FieldByName('楼宇名称').AsString);
    //CCAS_CCTCTI.IMPNAME_1 房号/铺号
    msgs.Add('CCAS_CCTCTI.IMPNAME_1='+FrmEdt.ATDiYaWu.FieldByName('房号').AsString);
    //CCAS_CCTCTI.IMPPER_1 权属人
    msgs.Add('CCAS_CCTCTI.IMPPER_1='+FrmEdt.ATDiYaWu.FieldByName('权属人').AsString);
    //CCAS_CCTCTI.IMPTYPE_1 性质
    msgs.Add('CCAS_CCTCTI.IMPTYPE_1='+FrmEdt.ATDiYaWu.FieldByName('性质').AsString);
    //CCAS_CCTCTI.IMPAREA_1 面积
    msgs.Add('CCAS_CCTCTI.IMPAREA_1='+FrmEdt.ATDiYaWu.FieldByName('面积').AsString);
    //CCAS_CCTCTI.LIMYEAR_1 土地使用年限
    msgs.Add('CCAS_CCTCTI.LIMYEAR_1='+FrmEdt.ATDiYaWu.FieldByName('土地使用年限').AsString);
    //CCAS_CCTCTI.PRICE_1 权利价值
    msgs.Add('CCAS_CCTCTI.PRICE_1='+FrmEdt.ATDiYaWu.FieldByName('权利价值').AsString);
    //CCAS_CCTCTI.ISAUTO_1 权属证类别
    msgs.Add('CCAS_CCTCTI.ISAUTO_1='+FrmEdt.ATDiYaWu.FieldByName('权属证1').AsString);
    //CCAS_CCTCTI.LCTHIDNO_1 权属证
    msgs.Add('CCAS_CCTCTI.LCTHIDNO_1='+FrmEdt.ATDiYaWu.FieldByName('权属证2').AsString);
    //CCAS_CCTCTI.OTHERTYPE_1 抵押证明 类别
    msgs.Add('CCAS_CCTCTI.OTHERTYPE_1='+FrmEdt.ATDiYaWu.FieldByName('抵押证明1').AsString);
    //CCAS_CCTCTI.OTRIGHTNO_1  抵押证明
    msgs.Add('CCAS_CCTCTI.OTRIGHTNO_1='+FrmEdt.ATDiYaWu.FieldByName('抵押证明2').AsString);
    //CCAS_CCTCTI.INSURENO_1 保险单号
    msgs.Add('CCAS_CCTCTI.INSURENO_1='+FrmEdt.ATDiYaWu.FieldByName('保险单号').AsString);
      FrmEdt.ATDiYaWu.Next;
      if not FrmEdt.ATDiYaWu.eof then msgs.Add('addimp333=click');
    end;
    msg := 'msg已经导入成功!';
    frmedt.Free;
    msgs.Free;
  result := msg;
end;
}

function getCCASValue(name, value:String):String;
begin
  if FrmMain.AQCCASValue.Active = false then FrmMain.AQCCASValue.Active := true;
  FrmMain.AQCCASValue.Filtered := false;
  FrmMain.AQCCASValue.Filter := 'leixing='''+DBS(name)+''' and svalue='''+DBS(value)+'''';
  FrmMain.AQCCASValue.Filtered := true;
  if not (FrmMain.AQCCASValue.Eof and FrmMain.AQCCASValue.Bof) then
    result := FrmMain.AQCCASValue.FieldByName('ccasvalue').AsString
  else
    result := value;
end;

function import(msg:String):String;
var sqlstr,fn, mainid:String;
msgs:TStrings;
begin
  mainid := '';

  fn := ExtractFilePath(Application.ExeName)+'tmp.ini';
  msgs := TStringList.Create;
  msgs.Text := msg;
  msgs[0]:= '[import]';
  msgs.SaveToFile(fn);
  sqlstr := 'select mainid from t_jiekuanren where 1=1 ';
  if lastfindname <> '' then
    sqlstr := sqlstr+' and  jiekuanrenxingming='''+DBS(lastfindname)+'''';
  if lastfindshenfenzheng<> '' then
    sqlstr := sqlstr+' and jiekuanrenshenfenzhenghaoma='''+DBS(lastfindshenfenzheng)+'''';
  opensql(sqlstr, FrmMain.AQOpen);

  if (FrmMain.AQOpen.eof and FrmMain.AQOpen.bof) then begin
    mainid := '';
  end else begin
    mainid := FrmMain.AQOpen.FieldByName('mainid').AsString;
  end;
  
  FrmEdt := TFrmEdt.Create(nil);
  if mainid = '' then
    FrmEdt.new(0)
  else
    FrmEdt.edit(mainid, false);

    //CCAS_PLAATRN.CBICUSNM 姓名
    msgs.Add('CCAS_PLAATRN.CBICUSNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingming').AsString);
    //CCAS_PLAATRN.CBISEXID 性别
    msgs.Add('CCAS_PLAATRN.CBISEXID='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingbie').AsString);
    //CCAS_PLAATRN.CBIBTHDA 出生日期
    try
      msgs.Add('CCAS_PLAATRN.CBIBTHDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenchushengnianyue').AsDateTime));
    except
    end;
    //CCAS_PLAATRN.LCLIVEYRLMT 现居住时间
    msgs.Add('CCAS_PLAATRN.LCLIVEYRLMT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhushijian').AsString);
    //CCAS_PLAATRN.CBICERTY 证件类别
    msgs.Add('CCAS_PLAATRN.CBICERTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenzhengjianleibie').AsString);
    //CCAS_PLAATRN.CBICERNO 证件号码
    msgs.Add('CCAS_PLAATRN.CBICERNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    //CCAS_PLAATRN.CBICTADD 通讯地址
    msgs.Add('CCAS_PLAATRN.CBICTADD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    //CCAS_PLAATRN.CBIPSTCD 邮政编码
    msgs.Add('CCAS_PLAATRN.CBIPSTCD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyoubian').AsString);
    //CCAS_PLAATRN.PERHMTEL 住宅电话
    msgs.Add('CCAS_PLAATRN.PERHMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjiatingdianhua').AsString);
    //CCAS_PLAATRN.PERMBLNO 手机号码
    msgs.Add('CCAS_PLAATRN.PERMBLNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenshouji').AsString);
    //CCAS_PLAATRN.PERHOMAD 现住地址
    msgs.Add('CCAS_PLAATRN.PERHOMAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    //CCAS_PLAATRN.PERCMTEL 单位电话
    msgs.Add('CCAS_PLAATRN.PERCMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidianhua').AsString);
    //CCAS_PLAATRN.OTHERTEL 其它电话
    //CCAS_PLAATRN.CUSDMCLR 户籍所在地
    msgs.Add('CCAS_PLAATRN.CUSDMCLR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhujisuozaidi').AsString);
    //CCAS_PLAATRN.PEREDUBK 教育程度
    msgs.Add('CCAS_PLAATRN.PEREDUBK='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxueli').AsString);
    //CCAS_PLAATRN.LIVESTUS 居住状况
    msgs.Add('CCAS_PLAATRN.LIVESTUS='+FrmEdt.ATDaiKuan.FieldByName('jiekuanrenxianzhufangquanshu').AsString);
    //CCAS_PLAATRN.PERWOKDA 参加工作时间
    msgs.Add('CCAS_PLAATRN.PERWOKDA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuonianxian').AsString);
    //CCAS_PLAATRN.PERNWKDA 现职年数
    msgs.Add('CCAS_PLAATRN.PERNWKDA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenrenxianzhinianxian').AsString);
    //CCAS_PLAATRN.PERCMPNM 现工作单位
    msgs.Add('CCAS_PLAATRN.PERCMPNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanwei').AsString);
    //CCAS_PLAATRN.WKIBUSTY 单位所属行业
    msgs.Add('CCAS_PLAATRN.WKIBUSTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweisuoshuhangye').AsString);
    //CCAS_PLAATRN.PERCMPAD 现单位地址
    msgs.Add('CCAS_PLAATRN.PERCMPAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString);
    //CCAS_PLAATRN.PERRGCPT 企业注册资本
    msgs.Add('CCAS_PLAATRN.PERRGCPT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweizhuceziben').AsString);
    //CCAS_PLAATRN.PEROCCPA 职 业
    msgs.Add('CCAS_PLAATRN.PEROCCPA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuogangwei').AsString);
    //CCAS_PLAATRN.PERTITLE 职 称
    msgs.Add('CCAS_PLAATRN.PERTITLE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjishuzige').AsString);
    //CCAS_PLAATRN.DOMICILE 客户户籍
    msgs.Add('CCAS_PLAATRN.DOMICILE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguoji').AsString);
    //CCAS_PLAATRN.CLIENTCHR 客户特征
    msgs.Add('CCAS_PLAATRN.CLIENTCHR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenkehutezheng').AsString);
    //CCAS_PLAATRN.WKIMONIN 月收入
    msgs.Add('CCAS_PLAATRN.WKIMONIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyuegongzishouru').AsString);
    //CCAS_PLAATRN.PERHMCAD 信用卡数量
    msgs.Add('CCAS_PLAATRN.PERHMCAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxinyongkashuliang').AsString);
    //CCAS_PLAATRN.OPENBK 开户银行
    //CCAS_PLAATRN.SALARYACC 工资帐号
    //CCAS_PLAATRN.BOCCLIENT 成为BOC客户的时间
    msgs.Add('CCAS_PLAATRN.BOCCLIENT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenboc').AsString);
    //CCAS_PLAATRN.BANKACCINF 银行往来情况
    msgs.Add('CCAS_PLAATRN.BANKACCINF='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyinhangwanglaiqingkuang').AsString);
    //CCAS_PLAATRN.HVCMPCHARTERFLG 提供任职单位营业执照
    msgs.Add('CCAS_PLAATRN.HVCMPCHARTERFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrentigongdanweiyingyezhizhao').AsString);
    //CCAS_PLAATRN.HVLIVEPRAVEFLG 购买两套以上住房
    msgs.Add('CCAS_PLAATRN.HVLIVEPRAVEFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanren2fang').AsString);
    //CCAS_PLAATRN.HVHSID 房产证
    //CCAS_PLAATRN.HSAGE 楼 龄
    //CCAS_PLAATRN.HSUSESTATUS 物业使用状况
    //CCAS_PLAATRN.HSKIND 物业性质
    //CCAS_PLAATRN.HSUSE 物业用途
    //CCAS_PLAATRN.LINKNM 联系人姓名
    //CCAS_PLAATRN.LINKADDR 性 别
    //CCAS_PLAATRN.LINKCERTY 证件类别
    //CCAS_PLAATRN.LINKCERNO 证件号码
    //CCAS_PLAATRN.LINKHOMAD 联系地址
    //CCAS_PLAATRN.LINKHMTEL 住宅电话
    //CCAS_PLAATRN.LINKMBLNO 手机号码
    //CCAS_PLAATRN.HVTWOHSFLG 提供居留证明
    msgs.Add('CCAS_PLAATRN.HVTWOHSFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrentigongjuliuzhengming').AsString);
    //CCAS_PLAATRN.PERHMPER 供养人数
    msgs.Add('CCAS_PLAATRN.PERHMPER='+FrmEdt.ATJieKuanRen.FieldByName('gongyangrenrenshu').AsString);
    //CCAS_PLAATRN.PERRELFG 关联客户标记
    msgs.Add('CCAS_PLAATRN.PERRELFG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguanliankehubiaoji').AsString);
    //CCAS_PLAATRN.PERSOURC 客户来源
    msgs.Add('CCAS_PLAATRN.PERSOURC='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenkehulaiyuan').AsString);
    //CCAS_PLAATRN.PERCRMFG 是否有违法记录
    msgs.Add('CCAS_PLAATRN.PERCRMFG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenweifanjilu').AsString);

    //2
    //CCAS_PERCREDIT.MATCHNMID_1   档案上的名字与客户提供相符
    msgs.Add('CCAS_PERCREDIT.MATCHNMID_1='+FrmEdt.ATZhengXin.FieldByName('档案上的名字与客户提供相符').AsString);
    //CCAS_PERCREDIT.MATCHADID_1   档案上的地址与客户提供相符
    msgs.Add('CCAS_PERCREDIT.MATCHADID_1='+FrmEdt.ATZhengXin.FieldByName('档案上的地址与客户提供相符').AsString);
    //CCAS_PERCREDIT.CONFIRMID_1   由公安部身份认证中心确认
    msgs.Add('CCAS_PERCREDIT.CONFIRMID_1='+FrmEdt.ATZhengXin.FieldByName('由公安部身份认证中心确认').AsString);
    //CCAS_PERCREDIT.CREDITFG_1    借款人资信情况
    msgs.Add('CCAS_PERCREDIT.CREDITFG_1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenchengxinxitongchaxunqingkuang').AsString);
    //CCAS_PERCREDIT.SPOCREFG_1   配偶资信情况
    msgs.Add('CCAS_PERCREDIT.SPOCREFG_1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouchengxinxitongchaxunqingkuang').AsString);
    //CCAS_PERCREDIT.COMDRCNT_1 目前贷款笔数
    msgs.Add('CCAS_PERCREDIT.COMDRCNT_1='+FrmEdt.ATZhengXin.FieldByName('目前贷款笔数').AsString);
    //CCAS_PERCREDIT.BOCDRCNT_1 其中中行贷款笔数
    msgs.Add('CCAS_PERCREDIT.BOCDRCNT_1='+FrmEdt.ATZhengXin.FieldByName('其中中行贷款笔数').AsString);
    //CCAS_PERCREDIT.TOTDRBAL_1 总贷款金额
    msgs.Add('CCAS_PERCREDIT.TOTDRBAL_1='+FrmEdt.ATZhengXin.FieldByName('总贷款金额').AsString);
    //CCAS_PERCREDIT.DLTDRBAL_1 未偿贷款余额
    msgs.Add('CCAS_PERCREDIT.DLTDRBAL_1='+FrmEdt.ATZhengXin.FieldByName('未偿贷款余额').AsString);
    //CCAS_PERCREDIT.MOTHLYPAY_1 月供
    msgs.Add('CCAS_PERCREDIT.MOTHLYPAY_1='+FrmEdt.ATZhengXin.FieldByName('月供').AsString);
    //CCAS_PERCREDIT.TOTARREAR_1 总欠款
    msgs.Add('CCAS_PERCREDIT.TOTARREAR_1='+FrmEdt.ATZhengXin.FieldByName('总欠款').AsString);
    //CCAS_PERCREDIT.CURDLTER_1 目前欠款期数
    msgs.Add('CCAS_PERCREDIT.CURDLTER_1='+FrmEdt.ATZhengXin.FieldByName('目前欠款期数').AsString);
    //CCAS_PERCREDIT.MAXDLTER_1 两年内欠款最长期数
    msgs.Add('CCAS_PERCREDIT.MAXDLTER_1='+FrmEdt.ATZhengXin.FieldByName('两年内欠款最长期数').AsString);
    //CCAS_PERCREDIT.DEBCDNUM_1 借记卡数量
    msgs.Add('CCAS_PERCREDIT.DEBCDNUM_1='+FrmEdt.ATZhengXin.FieldByName('借记卡数量').AsString);
    //CCAS_PERCREDIT.CRECDNUM_1 信用卡数量
    msgs.Add('CCAS_PERCREDIT.CRECDNUM_1='+FrmEdt.ATZhengXin.FieldByName('信用卡数量').AsString);
    //CCAS_PERCREDIT.BOCCDNUM_1 其中中行信用卡数量
    msgs.Add('CCAS_PERCREDIT.BOCCDNUM_1='+FrmEdt.ATZhengXin.FieldByName('其中中行信用卡数量').AsString);
    //CCAS_PERCREDIT.CREDITLINE_1 透支额度
    msgs.Add('CCAS_PERCREDIT.CREDITLINE_1='+FrmEdt.ATZhengXin.FieldByName('透支额度').AsString);
    //CCAS_PERCREDIT.OUTAMOUNT_1 未偿还余额
    msgs.Add('CCAS_PERCREDIT.OUTAMOUNT_1='+FrmEdt.ATZhengXin.FieldByName('未偿还余额').AsString);
    //CCAS_PERCREDIT.MOTHREPAY_1 本月应还款额
    msgs.Add('CCAS_PERCREDIT.MOTHREPAY_1='+FrmEdt.ATZhengXin.FieldByName('本月应还款额').AsString);
    //CCAS_PERCREDIT.EXPIRAMT_1 逾期金额
    msgs.Add('CCAS_PERCREDIT.EXPIRAMT_1='+FrmEdt.ATZhengXin.FieldByName('逾期金额').AsString);
    //CCAS_PERCREDIT.CUREXNUM_1 目前逾期未还笔数
    msgs.Add('CCAS_PERCREDIT.CUREXNUM_1='+FrmEdt.ATZhengXin.FieldByName('目前逾期未还笔数').AsString);
    //CCAS_PERCREDIT.MAXEXNUM_1 两年内最高逾期未还笔数
    msgs.Add('CCAS_PERCREDIT.MAXEXNUM_1='+FrmEdt.ATZhengXin.FieldByName('两年内最高逾期未还笔数').AsString);
    //CCAS_PERCREDIT.REMARK_1 备注
    msgs.Add('CCAS_PERCREDIT.REMARK_1='+FrmEdt.ATZhengXin.FieldByName('备注').AsString);

    //3
    //CCAS_PLAATRN.PERMRTST 婚姻状况
    msgs.Add('CCAS_PLAATRN.PERMRTST='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhunfou').AsString);
    //CCAS_PLAATRN.SPSNAME 配偶姓名
    msgs.Add('CCAS_PLAATRN.SPSNAME='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouxingming').AsString);
    //CCAS_PLAATRN.SPSCERTY 配偶证件类别
    msgs.Add('CCAS_PLAATRN.SPSCERTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouzhengjianleibie').AsString);
    //CCAS_PLAATRN.SPSCERNO 配偶证件号码
    msgs.Add('CCAS_PLAATRN.SPSCERNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);
    //CCAS_PLAATRN.SPSMNIN 配偶月收入
    msgs.Add('CCAS_PLAATRN.SPSMNIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString);
    //CCAS_PLAATRN.FAMILYOTSALARY 家庭其他成员月收入
    //msgs.Add('CCAS_PLAATRN.FAMILYOTSALARY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhunfou').AsString);
    //CCAS_PLAATRN.PERMTHTOUT 每月支出合计
    msgs.Add('CCAS_PLAATRN.PERMTHTOUT='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezhichu').AsString);
    //CCAS_PLAATRN.PERMTOTIN 家庭总收入
    msgs.Add('CCAS_PLAATRN.PERMTOTIN='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezongshouru').AsString);

    //4
    //CCAS_RETAILTRAN.HAFHOUID 楼盘编号
    //CCAS_RETAILTRAN.HAFHUSNA 楼宇名称
    msgs.Add('CCAS_RETAILTRAN.HAFHUSNA='+FrmEdt.ATFangWu.FieldByName('fangwulouyumingcheng').AsString);
    //CCAS_RETAILTRAN.TYPE 类型
    msgs.Add('CCAS_RETAILTRAN.TYPE='+FrmEdt.ATFangWu.FieldByName('fangwuleixing').AsString);
    //CCAS_RETAILTRAN.RELREFLG 物业状态
    msgs.Add('CCAS_RETAILTRAN.RELREFLG='+FrmEdt.ATFangWu.FieldByName('fangwuwuyezhuangtai').AsString);
    //CCAS_RETAILTRAN.TOTPRICE 购房总价
    msgs.Add('CCAS_RETAILTRAN.TOTPRICE='+Vartostr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    //CCAS_RETAILTRAN.PRICE 评估价
    msgs.Add('CCAS_RETAILTRAN.PRICE='+Vartostr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    //CCAS_RETAILTRAN.LCTBCTNO 购房合同号
    msgs.Add('CCAS_RETAILTRAN.LCTBCTNO='+FrmEdt.ATDaiKuan.FieldByName('hetonghao').AsString);
    //CCAS_RETAILTRAN.LAFLNUSE 购房用途
    msgs.Add('CCAS_RETAILTRAN.LAFLNUSE='+FrmEdt.ATFangWu.FieldByName('goufangyongtu').AsString);
    //CCAS_RETAILTRAN.LCTBLDAR 面积
    msgs.Add('CCAS_RETAILTRAN.LCTBLDAR='+FrmEdt.ATFangWu.FieldByName('fangwujianzhumianji').AsString);
    //tempgfdj 购房单价


    //5
    //CCAS_PLAATRN.LAFAPYAM 已交首期款
    try
      if pos('组',FrmEdt.ATDaiKuan.FieldByName('jiekuanzhonglei').AsString)>0 then
        msgs.Add('CCAS_PLAATRN.LAFAPYAM='+vartostr(
                (FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency+
                FrmEdt.ATDaiKuan.FieldByName('gongjijindaikuanjine').AsCurrency)*10000))
      else
        msgs.Add('CCAS_PLAATRN.LAFAPYAM='+
                vartostr(FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFDRCCY 借款货币
    msgs.Add('CCAS_PLAATRN.LAFDRCCY=人民币');
    //CCAS_PLAATRN.LAFDRAMT 申请借款金额
    msgs.Add('CCAS_PLAATRN.LAFDRAMT='+Vartostr(FrmEdt.ATDaiKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //CCAS_PLAATRN.LAFTERM 申请借款期限
    msgs.Add('CCAS_PLAATRN.LAFTERM='+Vartostr(FrmEdt.ATDaiKuan.FieldByName('qixian').AsInteger*12));
    //CCAS_PLAATRN.TMPINT 基准利率
    //CCAS_PLAATRN.FLRATESCA 利率浮动比例
    msgs.Add('CCAS_PLAATRN.FLRATESCA='+FrmEdt.ATDaiKuan.FieldByName('lilvfudongbeli').AsString);
    //CCAS_PLAATRN.FLRATE 利率浮动值
    //CCAS_PLAATRN.LAFRATVL 利 率
    msgs.Add('CCAS_PLAATRN.LAFRATVL='+frmEdt.ATDaiKuan.FieldByName('lilv').AsString);
    //CCAS_PLAATRN.LAFRATVD 利率调整周期
    msgs.Add('CCAS_PLAATRN.LAFRATVD=12');
    //CCAS_PLAATRN.RETPER 还款间隔
    //CCAS_PLAATRN.LAFRTMOD 还款方式
    msgs.Add('CCAS_PLAATRN.LAFRTMOD='+frmEdt.ATDaiKuan.FieldByName('huankuanfangshi').AsString);
    //CCAS_PLAATRN.LAFGRAPD 还款宽限期
    //CCAS_PLAATRN.LAFPACTT 还款帐号类型
    msgs.Add('CCAS_PLAATRN.LAFPACTT=个人结算帐户');
    //CCAS_PLAATRN.LAFPACT 还款帐号
    msgs.Add('CCAS_PLAATRN.LAFPACT='+frmEdt.ATDaiKuan.FieldByName('jiekuanrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.RETDTTYPE 还款日类型
    msgs.Add('CCAS_PLAATRN.RETDTTYPE=不变更还款日');
    //CCAS_PLAATRN.FIRRET 每期固定还款日
    //msgs.Add('CCAS_PLAATRN.FIRRET='+Vartostr(FrmEdt.ATJieKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //CCAS_PLAATRN.RECEIVEPER 收款人
    msgs.Add('CCAS_PLAATRN.RECEIVEPER='+FrmEdt.ATFangWu.FieldByName('shoufangrenxingming').AsString);
    //CCAS_PLAATRN.RECEIVEACCNO 收款人帐号
    msgs.Add('CCAS_PLAATRN.RECEIVEACCNO='+frmEdt.ATDaiKuan.FieldByName('shoufangrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.PAYMN 首期供款额
    //msgs.Add('CCAS_PLAATRN.PAYMN='+Vartostr(FrmEdt.ATJieKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //tempdyl 抵押率
    msgs.Add('tempdyl'+Vartostr(FrmEdt.ATDaiKuan.FieldByName('diyalv').ASString));
    //CCAS_PLAATRN.LOANRATE 贷款成数


    //6           addimp3334
    FrmEdt.ATLianMingKeHu.First;
    while not FrmEdt.ATLianMingKeHu.Eof do begin
    //CCAS_CCTCBITRN.CBICUSNM_1 联名客户姓名
    msgs.Add('CCAS_CCTCBITRN.CBICUSNM_1='+FrmEdt.ATLianMingKeHu.FieldByName('联名客户姓名').AsString);
    //CCAS_CCTPERTRN.PEREDUBK_1 最高学历
    msgs.Add('CCAS_CCTCBITRN.PEREDUBK_1='+FrmEdt.ATLianMingKeHu.FieldByName('最高学历').AsString);
    //CCAS_CCTCBITRN.CBICERTY_1 证件类别
    msgs.Add('CCAS_CCTCBITRN.CBICERTY_1='+FrmEdt.ATLianMingKeHu.FieldByName('证件类别').AsString);
    //CCAS_CCTCBITRN.CBICERNO_1 证件号码
    msgs.Add('CCAS_CCTCBITRN.CBICERNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('证件号码').AsString);
    //CCAS_CCTCBITRN.CBICTADD_1 联系地址
    msgs.Add('CCAS_CCTCBITRN.CBICTADD_1='+FrmEdt.ATLianMingKeHu.FieldByName('联系地址').AsString);
    //CCAS_CCTCBITRN.CBIPSTCD_1 邮政编码
    msgs.Add('CCAS_CCTCBITRN.CBIPSTCD_1='+FrmEdt.ATLianMingKeHu.FieldByName('邮政编码').AsString);
    //CCAS_CCTPERTRN.PEROCCPA_1 职 业
    msgs.Add('CCAS_CCTCBITRN.PEROCCPA_1='+FrmEdt.ATLianMingKeHu.FieldByName('职业').AsString);
    //CCAS_CCTPERTRN.PERCMPNM_1 工作单位   CCAS_CCTPERTRN.PERCMPNM_1
    msgs.Add('CCAS_CCTCBITRN.PERCMPNM_1='+FrmEdt.ATLianMingKeHu.FieldByName('工作单位').AsString);
    //CCAS_CCTCBITRN.CBIRID12_1 与主申请人关系
    msgs.Add('CCAS_CCTCBITRN.CBIRID12_1='+FrmEdt.ATLianMingKeHu.FieldByName('与主申请人关系').AsString);
    //CCAS_CCTPERTRN.WKIMONIN_1 月收入
    msgs.Add('CCAS_CCTCBITRN.WKIMONIN_1='+FrmEdt.ATLianMingKeHu.FieldByName('月收入').AsString);
    //CCAS_CCTPERTRN.PERPGRNO_1 联系电话
    msgs.Add('CCAS_CCTCBITRN.PERPGRNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('联系电话').AsString);
    //CCAS_CCTPERTRN.PERHMTEL_1 住宅电话
    msgs.Add('CCAS_CCTCBITRN.PERHMTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('住宅电话').AsString);
    //CCAS_CCTPERTRN.PERMBLNO_1 手机号码
    msgs.Add('CCAS_CCTCBITRN.PERMBLNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('手机号码').AsString);
    //CCAS_CCTPERTRN.PERCMTEL_1 单位电话
    msgs.Add('CCAS_CCTCBITRN.PERCMTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('单位电话').AsString);
    //CCAS_CCTPERTRN.OTHERTEL_1 其它电话
    msgs.Add('CCAS_CCTCBITRN.OTHERTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('其它电话').AsString);
      FrmEdt.ATLianMingKeHu.Next;
      if not FrmEdt.ATLianMingKeHu.eof then msgs.Add('addimp3334=click');
    end;

    //7    addimp333
    FrmEdt.ATDiYaWu.First;
    while not FrmEdt.ATDiYaWu.Eof do begin
    //CCAS_CCTCTI.IMPADDR_1 楼宇名称
    msgs.Add('CCAS_CCTCTI.IMPADDR_1='+FrmEdt.ATDiYaWu.FieldByName('楼宇名称').AsString);
    //CCAS_CCTCTI.IMPNAME_1 房号/铺号
    msgs.Add('CCAS_CCTCTI.IMPNAME_1='+FrmEdt.ATDiYaWu.FieldByName('房号').AsString);
    //CCAS_CCTCTI.IMPPER_1 权属人
    msgs.Add('CCAS_CCTCTI.IMPPER_1='+FrmEdt.ATDiYaWu.FieldByName('权属人').AsString);
    //CCAS_CCTCTI.IMPTYPE_1 性质
    msgs.Add('CCAS_CCTCTI.IMPTYPE_1='+FrmEdt.ATDiYaWu.FieldByName('性质').AsString);
    //CCAS_CCTCTI.IMPAREA_1 面积
    msgs.Add('CCAS_CCTCTI.IMPAREA_1='+FrmEdt.ATDiYaWu.FieldByName('面积').AsString);
    //CCAS_CCTCTI.LIMYEAR_1 土地使用年限
    msgs.Add('CCAS_CCTCTI.LIMYEAR_1='+FrmEdt.ATDiYaWu.FieldByName('土地使用年限').AsString);
    //CCAS_CCTCTI.PRICE_1 权利价值
    msgs.Add('CCAS_CCTCTI.PRICE_1='+FrmEdt.ATDiYaWu.FieldByName('权利价值').AsString);
    //CCAS_CCTCTI.ISAUTO_1 权属证类别
    msgs.Add('CCAS_CCTCTI.ISAUTO_1='+FrmEdt.ATDiYaWu.FieldByName('权属证1').AsString);
    //CCAS_CCTCTI.LCTHIDNO_1 权属证
    msgs.Add('CCAS_CCTCTI.LCTHIDNO_1='+FrmEdt.ATDiYaWu.FieldByName('权属证2').AsString);
    //CCAS_CCTCTI.OTHERTYPE_1 抵押证明 类别
    msgs.Add('CCAS_CCTCTI.OTHERTYPE_1='+FrmEdt.ATDiYaWu.FieldByName('抵押证明1').AsString);
    //CCAS_CCTCTI.OTRIGHTNO_1  抵押证明
    msgs.Add('CCAS_CCTCTI.OTRIGHTNO_1='+FrmEdt.ATDiYaWu.FieldByName('抵押证明2').AsString);
    //CCAS_CCTCTI.INSURENO_1 保险单号
    msgs.Add('CCAS_CCTCTI.INSURENO_1='+FrmEdt.ATDiYaWu.FieldByName('保险单号').AsString);
      FrmEdt.ATDiYaWu.Next;
      if not FrmEdt.ATDiYaWu.eof then msgs.Add('addimp333=click');
    end;
    msg := 'msg已经导入成功!';
    frmedt.Free;
    msgs.Free;
  result := msg;
end;

{老CCAS导入
function TFrmMain.find(name, shenfenzheng:String):String;
var sqlstr, msg, mainid:String;
msgs:TStrings;
begin
  sqlstr := 'select mainid from t_jiekuanren where 1=1 ';
  if name <> '' then
    sqlstr := sqlstr+' and  jiekuanrenxingming='''+DBS(name)+'''';
  if shenfenzheng<> '' then
    sqlstr := sqlstr+' and jiekuanrenshenfenzhenghaoma='''+DBS(shenfenzheng)+'''';
  opensql(sqlstr ,AQOpen);

  if (AQOpen.eof and AQOpen.bof) then begin
    msg := 'msg系统未找到此人数据。';
  end else begin
    mainid := AQOpen.FieldByName('mainid').AsString;

    msgs := TStringList.Create;
    msgs.Add('import');
    FrmEdt := TFrmEdt.Create(self);
    FrmEdt.edit(mainid, false);
    //CCAS_PLAATRN.CBICUSNM 姓名
    msgs.Add('CCAS_PLAATRN.CBICUSNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingming').AsString);
    //CCAS_PLAATRN.CBISEXID 性别
    msgs.Add('CCAS_PLAATRN.CBISEXID='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingbie').AsString);
    //CCAS_PLAATRN.CBIBTHDA 出生日期
    try
      msgs.Add('CCAS_PLAATRN.CBIBTHDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenchushengnianyue').AsDateTime));
    except
    end;
    //CCAS_PLAATRN.LCLIVEYRLMT 现居住时间
    msgs.Add('CCAS_PLAATRN.LCLIVEYRLMT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhushijian').AsString);
    //CCAS_PLAATRN.CBICERTY 证件类别
    msgs.Add('CCAS_PLAATRN.CBICERTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenzhengjianleibie').AsString);
    //CCAS_PLAATRN.CBICERNO 证件号码
    msgs.Add('CCAS_PLAATRN.CBICERNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    //CCAS_PLAATRN.CBICTADD 通讯地址
    msgs.Add('CCAS_PLAATRN.CBICTADD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    //CCAS_PLAATRN.CBIPSTCD 邮政编码
    msgs.Add('CCAS_PLAATRN.CBIPSTCD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyoubian').AsString);
    //CCAS_PLAATRN.PERHMTEL 住宅电话
    msgs.Add('CCAS_PLAATRN.PERHMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjiatingdianhua').AsString);
    //CCAS_PLAATRN.PERMBLNO 手机号码
    msgs.Add('CCAS_PLAATRN.PERMBLNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenshouji').AsString);
    //CCAS_PLAATRN.PERHOMAD 现住地址
    msgs.Add('CCAS_PLAATRN.PERHOMAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    //CCAS_PLAATRN.PERCMTEL 单位电话
    msgs.Add('CCAS_PLAATRN.PERCMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidianhua').AsString);
    //CCAS_PLAATRN.OTHERTEL 其它电话
    //CCAS_PLAATRN.CUSDMCLR 户籍所在地
    msgs.Add('CCAS_PLAATRN.CUSDMCLR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhujisuozaidi').AsString);
    //CCAS_PLAATRN.PEREDUBK 教育程度
    msgs.Add('CCAS_PLAATRN.PEREDUBK='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxueli').AsString);
    //CCAS_PLAATRN.LIVESTUS 居住状况
    msgs.Add('CCAS_PLAATRN.LIVESTUS='+FrmEdt.ATDaiKuan.FieldByName('jiekuanrenxianzhufangquanshu').AsString);
    //CCAS_PLAATRN.PERWOKDA 参加工作时间
    try
      msgs.Add('CCAS_PLAATRN.PERWOKDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuonianxian').AsDateTime));
    except
    end;
    //CCAS_PLAATRN.PERNWKDA 现职年数
    msgs.Add('CCAS_PLAATRN.PERNWKDA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenrenxianzhinianxian').AsString);
    //CCAS_PLAATRN.PERCMPNM 现工作单位
    msgs.Add('CCAS_PLAATRN.PERCMPNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanwei').AsString);
    //CCAS_PLAATRN.WKIBUSTY 单位所属行业
    msgs.Add('CCAS_PLAATRN.WKIBUSTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweisuoshuhangye').AsString);
    //CCAS_PLAATRN.PERCMPAD 现单位地址
    msgs.Add('CCAS_PLAATRN.PERCMPAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString);
    //CCAS_PLAATRN.PERRGCPT 企业注册资本
    msgs.Add('CCAS_PLAATRN.PERRGCPT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweizhuceziben').AsString);
    //CCAS_PLAATRN.PEROCCPA 职 业
    msgs.Add('CCAS_PLAATRN.PEROCCPA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuogangwei').AsString);
    //CCAS_PLAATRN.PERTITLE 职 称
    msgs.Add('CCAS_PLAATRN.PERTITLE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjishuzige').AsString);
    //CCAS_PLAATRN.DOMICILE 客户户籍
    msgs.Add('CCAS_PLAATRN.DOMICILE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguoji').AsString);
    //CCAS_PLAATRN.CLIENTCHR 客户特征
    msgs.Add('CCAS_PLAATRN.CLIENTCHR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenkehutezheng').AsString);
    //CCAS_PLAATRN.WKIMONIN 月收入
    //msgs.Add('CCAS_PLAATRN.WKIMONIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyuegongzishouru').AsString);
    msgs.Add('CCAS_PLAATRN.WKIMONIN='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezongshouru').AsString);
    //CCAS_PLAATRN.PERHMCAD 信用卡数量
    msgs.Add('CCAS_PLAATRN.PERHMCAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxinyongkashuliang').AsString);
    //CCAS_PLAATRN.OPENBK 开户银行
    //CCAS_PLAATRN.SALARYACC 工资帐号
    //CCAS_PLAATRN.BOCCLIENT 成为BOC客户的时间
    msgs.Add('CCAS_PLAATRN.BOCCLIENT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenboc').AsString);
    //CCAS_PLAATRN.BANKACCINF 银行往来情况
    msgs.Add('CCAS_PLAATRN.BANKACCINF='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyinhangwanglaiqingkuang').AsString);
    //CCAS_PLAATRN.HVCMPCHARTERFLG 提供任职单位营业执照
    msgs.Add('CCAS_PLAATRN.HVCMPCHARTERFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrentigongdanweiyingyezhizhao').AsString);
    //CCAS_PLAATRN.HVLIVEPRAVEFLG 购买两套以上住房
    msgs.Add('CCAS_PLAATRN.HVLIVEPRAVEFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanren2fang').AsString);
    //CCAS_PLAATRN.HVHSID 房产证
    //CCAS_PLAATRN.HSAGE 楼 龄
    //CCAS_PLAATRN.HSUSESTATUS 物业使用状况
    //CCAS_PLAATRN.HSKIND 物业性质
    //CCAS_PLAATRN.HSUSE 物业用途
    //CCAS_PLAATRN.LINKNM 联系人姓名
    //CCAS_PLAATRN.LINKADDR 性 别
    //CCAS_PLAATRN.LINKCERTY 证件类别
    //CCAS_PLAATRN.LINKCERNO 证件号码
    //CCAS_PLAATRN.LINKHOMAD 联系地址
    //CCAS_PLAATRN.LINKHMTEL 住宅电话
    //CCAS_PLAATRN.LINKMBLNO 手机号码
    //CCAS_PLAATRN.HVTWOHSFLG 提供居留证明
    msgs.Add('CCAS_PLAATRN.HVTWOHSFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrentigongjuliuzhengming').AsString);
    //CCAS_PLAATRN.PERHMPER 供养人数
    msgs.Add('CCAS_PLAATRN.PERHMPER='+FrmEdt.ATJieKuanRen.FieldByName('gongyangrenrenshu').AsString);
    //CCAS_PLAATRN.PERRELFG 关联客户标记
    msgs.Add('CCAS_PLAATRN.PERRELFG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguanliankehubiaoji').AsString);
    //CCAS_PLAATRN.PERSOURC 客户来源
    msgs.Add('CCAS_PLAATRN.PERSOURC='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenkehulaiyuan').AsString);
    //CCAS_PLAATRN.PERCRMFG 是否有违法记录
    msgs.Add('CCAS_PLAATRN.PERCRMFG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenweifanjilu').AsString);

    //2
    //CCAS_PERCREDIT.MATCHNMID_1   档案上的名字与客户提供相符
    msgs.Add('CCAS_PERCREDIT.MATCHNMID_1='+FrmEdt.ATZhengXin.FieldByName('档案上的名字与客户提供相符').AsString);
    //CCAS_PERCREDIT.MATCHADID_1   档案上的地址与客户提供相符
    msgs.Add('CCAS_PERCREDIT.MATCHADID_1='+FrmEdt.ATZhengXin.FieldByName('档案上的地址与客户提供相符').AsString);
    //CCAS_PERCREDIT.CONFIRMID_1   由公安部身份认证中心确认
    msgs.Add('CCAS_PERCREDIT.CONFIRMID_1='+FrmEdt.ATZhengXin.FieldByName('由公安部身份认证中心确认').AsString);
    //CCAS_PERCREDIT.CREDITFG_1    借款人资信情况
    msgs.Add('CCAS_PERCREDIT.CREDITFG_1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenchengxinxitongchaxunqingkuang').AsString);
    //CCAS_PERCREDIT.SPOCREFG_1   配偶资信情况
    msgs.Add('CCAS_PERCREDIT.SPOCREFG_1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouchengxinxitongchaxunqingkuang').AsString);
    //CCAS_PERCREDIT.COMDRCNT_1 目前贷款笔数
    msgs.Add('CCAS_PERCREDIT.COMDRCNT_1='+FrmEdt.ATZhengXin.FieldByName('目前贷款笔数').AsString);
    //CCAS_PERCREDIT.BOCDRCNT_1 其中中行贷款笔数
    msgs.Add('CCAS_PERCREDIT.BOCDRCNT_1='+FrmEdt.ATZhengXin.FieldByName('其中中行贷款笔数').AsString);
    //CCAS_PERCREDIT.TOTDRBAL_1 总贷款金额
    msgs.Add('CCAS_PERCREDIT.TOTDRBAL_1='+FrmEdt.ATZhengXin.FieldByName('总贷款金额').AsString);
    //CCAS_PERCREDIT.DLTDRBAL_1 未偿贷款余额
    msgs.Add('CCAS_PERCREDIT.DLTDRBAL_1='+FrmEdt.ATZhengXin.FieldByName('未偿贷款余额').AsString);
    //CCAS_PERCREDIT.MOTHLYPAY_1 月供
    msgs.Add('CCAS_PERCREDIT.MOTHLYPAY_1='+FrmEdt.ATZhengXin.FieldByName('月供').AsString);
    //CCAS_PERCREDIT.TOTARREAR_1 总欠款
    msgs.Add('CCAS_PERCREDIT.TOTARREAR_1='+FrmEdt.ATZhengXin.FieldByName('总欠款').AsString);
    //CCAS_PERCREDIT.CURDLTER_1 目前欠款期数
    msgs.Add('CCAS_PERCREDIT.CURDLTER_1='+FrmEdt.ATZhengXin.FieldByName('目前欠款期数').AsString);
    //CCAS_PERCREDIT.MAXDLTER_1 两年内欠款最长期数
    msgs.Add('CCAS_PERCREDIT.MAXDLTER_1='+FrmEdt.ATZhengXin.FieldByName('两年内欠款最长期数').AsString);
    //CCAS_PERCREDIT.DEBCDNUM_1 借记卡数量
    msgs.Add('CCAS_PERCREDIT.DEBCDNUM_1='+FrmEdt.ATZhengXin.FieldByName('借记卡数量').AsString);
    //CCAS_PERCREDIT.CRECDNUM_1 信用卡数量
    msgs.Add('CCAS_PERCREDIT.CRECDNUM_1='+FrmEdt.ATZhengXin.FieldByName('信用卡数量').AsString);
    //CCAS_PERCREDIT.BOCCDNUM_1 其中中行信用卡数量
    msgs.Add('CCAS_PERCREDIT.BOCCDNUM_1='+FrmEdt.ATZhengXin.FieldByName('其中中行信用卡数量').AsString);
    //CCAS_PERCREDIT.CREDITLINE_1 透支额度
    msgs.Add('CCAS_PERCREDIT.CREDITLINE_1='+FrmEdt.ATZhengXin.FieldByName('透支额度').AsString);
    //CCAS_PERCREDIT.OUTAMOUNT_1 未偿还余额
    msgs.Add('CCAS_PERCREDIT.OUTAMOUNT_1='+FrmEdt.ATZhengXin.FieldByName('未偿还余额').AsString);
    //CCAS_PERCREDIT.MOTHREPAY_1 本月应还款额
    msgs.Add('CCAS_PERCREDIT.MOTHREPAY_1='+FrmEdt.ATZhengXin.FieldByName('本月应还款额').AsString);
    //CCAS_PERCREDIT.EXPIRAMT_1 逾期金额
    msgs.Add('CCAS_PERCREDIT.EXPIRAMT_1='+FrmEdt.ATZhengXin.FieldByName('逾期金额').AsString);
    //CCAS_PERCREDIT.CUREXNUM_1 目前逾期未还笔数
    msgs.Add('CCAS_PERCREDIT.CUREXNUM_1='+FrmEdt.ATZhengXin.FieldByName('目前逾期未还笔数').AsString);
    //CCAS_PERCREDIT.MAXEXNUM_1 两年内最高逾期未还笔数
    msgs.Add('CCAS_PERCREDIT.MAXEXNUM_1='+FrmEdt.ATZhengXin.FieldByName('两年内最高逾期未还笔数').AsString);
    //CCAS_PERCREDIT.REMARK_1 备注
    msgs.Add('CCAS_PERCREDIT.REMARK_1='+FrmEdt.ATZhengXin.FieldByName('备注').AsString);

    //3
    //CCAS_PLAATRN.PERMRTST 婚姻状况
    msgs.Add('CCAS_PLAATRN.PERMRTST='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhunfou').AsString);
    //CCAS_PLAATRN.SPSNAME 配偶姓名
    msgs.Add('CCAS_PLAATRN.SPSNAME='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouxingming').AsString);
    //CCAS_PLAATRN.SPSCERTY 配偶证件类别
    msgs.Add('CCAS_PLAATRN.SPSCERTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouzhengjianleibie').AsString);
    //CCAS_PLAATRN.SPSCERNO 配偶证件号码
    msgs.Add('CCAS_PLAATRN.SPSCERNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);
    //CCAS_PLAATRN.SPSMNIN 配偶月收入
    //msgs.Add('CCAS_PLAATRN.SPSMNIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString);
    if FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouxingming').AsString<>'' then
      msgs.Add('CCAS_PLAATRN.SPSMNIN=0');
    //CCAS_PLAATRN.FAMILYOTSALARY 家庭其他成员月收入
    //msgs.Add('CCAS_PLAATRN.FAMILYOTSALARY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhunfou').AsString);
    //CCAS_PLAATRN.PERMTHTOUT 每月支出合计
    msgs.Add('CCAS_PLAATRN.PERMTHTOUT='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezhichu').AsString);
    //CCAS_PLAATRN.PERMTOTIN 家庭总收入
    msgs.Add('CCAS_PLAATRN.PERMTOTIN='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezongshouru').AsString);

    //4
    //CCAS_RETAILTRAN.HAFHOUID 楼盘编号
    //CCAS_RETAILTRAN.HAFHUSNA 楼宇名称
    msgs.Add('CCAS_RETAILTRAN.HAFHUSNA='+FrmEdt.ATFangWu.FieldByName('fangwulouyumingcheng').AsString);
    //CCAS_RETAILTRAN.TYPE 类型
    msgs.Add('CCAS_RETAILTRAN.TYPE='+FrmEdt.ATFangWu.FieldByName('fangwuleixing').AsString);
    //CCAS_RETAILTRAN.RELREFLG 物业状态
    msgs.Add('CCAS_RETAILTRAN.RELREFLG='+FrmEdt.ATFangWu.FieldByName('fangwuwuyezhuangtai').AsString);
    //CCAS_RETAILTRAN.TOTPRICE 购房总价
    try
      msgs.Add('CCAS_RETAILTRAN.TOTPRICE='+Vartostr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    except
    end;
    //CCAS_RETAILTRAN.PRICE 评估价
    try
      msgs.Add('CCAS_RETAILTRAN.PRICE='+Vartostr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    except
    end;
    //CCAS_RETAILTRAN.LCTBCTNO 购房合同号
    msgs.Add('CCAS_RETAILTRAN.LCTBCTNO='+FrmEdt.ATDaiKuan.FieldByName('hetonghao').AsString);
    //CCAS_RETAILTRAN.LAFLNUSE 购房用途
    msgs.Add('CCAS_RETAILTRAN.LAFLNUSE='+FrmEdt.ATFangWu.FieldByName('goufangyongtu').AsString);
    //CCAS_RETAILTRAN.LCTBLDAR 面积
    msgs.Add('CCAS_RETAILTRAN.LCTBLDAR='+FrmEdt.ATFangWu.FieldByName('fangwujianzhumianji').AsString);
    //tempgfdj 购房单价


    //5
    //CCAS_PLAATRN.LAFAPYAM 已交首期款
    try
      if pos('组',FrmEdt.ATDaiKuan.FieldByName('jiekuanzhonglei').AsString)>0 then
        msgs.Add('CCAS_PLAATRN.LAFAPYAM='+vartostr(
                (FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency+
                FrmEdt.ATDaiKuan.FieldByName('gongjijindaikuanjine').AsCurrency)*10000))
      else
        msgs.Add('CCAS_PLAATRN.LAFAPYAM='+
                vartostr(FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFDRCCY 借款货币
    msgs.Add('CCAS_PLAATRN.LAFDRCCY=人民币');
    //CCAS_PLAATRN.LAFDRAMT 申请借款金额
    try
      msgs.Add('CCAS_PLAATRN.LAFDRAMT='+Vartostr(FrmEdt.ATDaiKuan.FieldByName('daikuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFTERM 申请借款期限
    try
      msgs.Add('CCAS_PLAATRN.LAFTERM='+Vartostr(FrmEdt.ATDaiKuan.FieldByName('qixian').AsInteger*12));
    except
    end;
    //CCAS_PLAATRN.TMPINT 基准利率
    //CCAS_PLAATRN.FLRATESCA 利率浮动比例
    msgs.Add('CCAS_PLAATRN.FLRATESCA='+FrmEdt.ATDaiKuan.FieldByName('lilvfudongbeli').AsString);
    //CCAS_PLAATRN.FLRATE 利率浮动值
    //CCAS_PLAATRN.LAFRATVL 利 率
    msgs.Add('CCAS_PLAATRN.LAFRATVL='+StringReplace(frmEdt.ATDaiKuan.FieldByName('lilv').AsString,'‰','',[rfReplaceAll]));
    //CCAS_PLAATRN.LAFRATVD 利率调整周期
    msgs.Add('CCAS_PLAATRN.LAFRATVD=12');
    //CCAS_PLAATRN.RETPER 还款间隔
    //CCAS_PLAATRN.LAFRTMOD 还款方式
    msgs.Add('CCAS_PLAATRN.LAFRTMOD='+frmEdt.ATDaiKuan.FieldByName('huankuanfangshi').AsString);
    //CCAS_PLAATRN.LAFGRAPD 还款宽限期
    //CCAS_PLAATRN.LAFPACTT 还款帐号类型
    msgs.Add('CCAS_PLAATRN.LAFPACTT=个人结算帐户');
    //CCAS_PLAATRN.LAFPACT 还款帐号
    msgs.Add('CCAS_PLAATRN.LAFPACT='+frmEdt.ATDaiKuan.FieldByName('jiekuanrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.RETDTTYPE 还款日类型
    msgs.Add('CCAS_PLAATRN.RETDTTYPE=不变更还款日');
    //CCAS_PLAATRN.FIRRET 每期固定还款日
    //msgs.Add('CCAS_PLAATRN.FIRRET='+Vartostr(FrmEdt.ATJieKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //CCAS_PLAATRN.RECEIVEPER 收款人
    msgs.Add('CCAS_PLAATRN.RECEIVEPER='+FrmEdt.ATFangWu.FieldByName('shoufangrenxingming').AsString);
    //CCAS_PLAATRN.RECEIVEACCNO 收款人帐号
    msgs.Add('CCAS_PLAATRN.RECEIVEACCNO='+frmEdt.ATDaiKuan.FieldByName('shoufangrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.PAYMN 首期供款额
    //msgs.Add('CCAS_PLAATRN.PAYMN='+Vartostr(FrmEdt.ATJieKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //tempdyl 抵押率
    msgs.Add('tempdyl'+Vartostr(FrmEdt.ATDaiKuan.FieldByName('diyalv').ASString));
    //CCAS_PLAATRN.LOANRATE 贷款成数


    //6           addimp3334
    FrmEdt.ATLianMingKeHu.First;
    while not FrmEdt.ATLianMingKeHu.Eof do begin
      //CCAS_CCTCBITRN.CBICUSNM_1 联名客户姓名
      msgs.Add('CCAS_CCTCBITRN.CBICUSNM_1='+FrmEdt.ATLianMingKeHu.FieldByName('联名客户姓名').AsString);
      //CCAS_CCTPERTRN.PEREDUBK_1 最高学历
      msgs.Add('CCAS_CCTCBITRN.PEREDUBK_1='+FrmEdt.ATLianMingKeHu.FieldByName('最高学历').AsString);
      //CCAS_CCTCBITRN.CBICERTY_1 证件类别
      msgs.Add('CCAS_CCTCBITRN.CBICERTY_1='+FrmEdt.ATLianMingKeHu.FieldByName('证件类别').AsString);
      //CCAS_CCTCBITRN.CBICERNO_1 证件号码
      msgs.Add('CCAS_CCTCBITRN.CBICERNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('证件号码').AsString);
      //CCAS_CCTCBITRN.CBICTADD_1 联系地址
      msgs.Add('CCAS_CCTCBITRN.CBICTADD_1='+FrmEdt.ATLianMingKeHu.FieldByName('联系地址').AsString);
      //CCAS_CCTCBITRN.CBIPSTCD_1 邮政编码
      msgs.Add('CCAS_CCTCBITRN.CBIPSTCD_1='+FrmEdt.ATLianMingKeHu.FieldByName('邮政编码').AsString);
      //CCAS_CCTPERTRN.PEROCCPA_1 职 业
      msgs.Add('CCAS_CCTCBITRN.PEROCCPA_1='+FrmEdt.ATLianMingKeHu.FieldByName('职业').AsString);
      //CCAS_CCTPERTRN.PERCMPNM_1 工作单位   CCAS_CCTPERTRN.PERCMPNM_1
      msgs.Add('CCAS_CCTCBITRN.PERCMPNM_1='+FrmEdt.ATLianMingKeHu.FieldByName('工作单位').AsString);
      //CCAS_CCTCBITRN.CBIRID12_1 与主申请人关系
      msgs.Add('CCAS_CCTCBITRN.CBIRID12_1='+FrmEdt.ATLianMingKeHu.FieldByName('与主申请人关系').AsString);
      //CCAS_CCTPERTRN.WKIMONIN_1 月收入
      msgs.Add('CCAS_CCTCBITRN.WKIMONIN_1='+FrmEdt.ATLianMingKeHu.FieldByName('月收入').AsString);
      //CCAS_CCTPERTRN.PERPGRNO_1 联系电话
      msgs.Add('CCAS_CCTCBITRN.PERPGRNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('联系电话').AsString);
      //CCAS_CCTPERTRN.PERHMTEL_1 住宅电话
      msgs.Add('CCAS_CCTCBITRN.PERHMTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('住宅电话').AsString);
      //CCAS_CCTPERTRN.PERMBLNO_1 手机号码
      msgs.Add('CCAS_CCTCBITRN.PERMBLNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('手机号码').AsString);
      //CCAS_CCTPERTRN.PERCMTEL_1 单位电话
      msgs.Add('CCAS_CCTCBITRN.PERCMTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('单位电话').AsString);
      //CCAS_CCTPERTRN.OTHERTEL_1 其它电话
      msgs.Add('CCAS_CCTCBITRN.OTHERTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('其它电话').AsString);

      FrmEdt.ATLianMingKeHu.Next;
      if not FrmEdt.ATLianMingKeHu.eof then msgs.Add('addimp3334=click');
    end;

    //7    addimp333
    FrmEdt.ATDiYaWu.First;
    while not FrmEdt.ATDiYaWu.Eof do begin
      //CCAS_CCTCTI.IMPADDR_1 楼宇名称
      msgs.Add('CCAS_CCTCTI.IMPADDR_1='+FrmEdt.ATDiYaWu.FieldByName('楼宇名称').AsString);
      //CCAS_CCTCTI.IMPNAME_1 房号/铺号
      msgs.Add('CCAS_CCTCTI.IMPNAME_1='+FrmEdt.ATDiYaWu.FieldByName('房号').AsString);
      //CCAS_CCTCTI.IMPPER_1 权属人
      msgs.Add('CCAS_CCTCTI.IMPPER_1='+FrmEdt.ATDiYaWu.FieldByName('权属人').AsString);
      //CCAS_CCTCTI.IMPTYPE_1 性质
      msgs.Add('CCAS_CCTCTI.IMPTYPE_1='+FrmEdt.ATDiYaWu.FieldByName('性质').AsString);
      //CCAS_CCTCTI.IMPAREA_1 面积
      msgs.Add('CCAS_CCTCTI.IMPAREA_1='+FrmEdt.ATDiYaWu.FieldByName('面积').AsString);
      //CCAS_CCTCTI.LIMYEAR_1 土地使用年限
      msgs.Add('CCAS_CCTCTI.LIMYEAR_1='+FrmEdt.ATDiYaWu.FieldByName('土地使用年限').AsString);
      //CCAS_CCTCTI.PRICE_1 权利价值
      msgs.Add('CCAS_CCTCTI.PRICE_1='+FrmEdt.ATDiYaWu.FieldByName('权利价值').AsString);
      //CCAS_CCTCTI.ISAUTO_1 权属证类别
      msgs.Add('CCAS_CCTCTI.ISAUTO_1='+FrmEdt.ATDiYaWu.FieldByName('权属证1').AsString);
      //CCAS_CCTCTI.LCTHIDNO_1 权属证
      msgs.Add('CCAS_CCTCTI.LCTHIDNO_1='+FrmEdt.ATDiYaWu.FieldByName('权属证2').AsString);
      //CCAS_CCTCTI.OTHERTYPE_1 抵押证明 类别
      msgs.Add('CCAS_CCTCTI.OTHERTYPE_1='+FrmEdt.ATDiYaWu.FieldByName('抵押证明1').AsString);
      //CCAS_CCTCTI.OTRIGHTNO_1  抵押证明
      msgs.Add('CCAS_CCTCTI.OTRIGHTNO_1='+FrmEdt.ATDiYaWu.FieldByName('抵押证明2').AsString);
      //CCAS_CCTCTI.INSURENO_1 保险单号
      msgs.Add('CCAS_CCTCTI.INSURENO_1='+FrmEdt.ATDiYaWu.FieldByName('保险单号').AsString);
      FrmEdt.ATDiYaWu.Next;
      if not FrmEdt.ATDiYaWu.eof then msgs.Add('addimp333=click');
    end;

    //8
    msgs.Add('CCAS_PLAATRN.PRECONDPLAA4381099D101=Y');
    msgs.Add('CCAS_PLAATRN.PRECONDPLAA4381099D103=Y');
    msgs.Add('CCAS_PLAATRN.PRECONDPLAA4381099D105=Y');
    msgs.Add('CCAS_PLAATRN.PRECONDPLAA4381099D106=Y');
    msgs.Add('CCAS_PLAATRN.PRECONDPLAA4381099D108=Y');
    msgs.Add('CCAS_PLAATRN.PRECONDPLAA4381099D109=Y');

    msg := msgs.Text;
    frmedt.Free;
    msgs.Free;
    
  end;
  result := msg;
end;
}

function find(name, shenfenzheng:String):String;
var sqlstr, msg, mainid, qu:String;
msgs:TStrings;
begin
  sqlstr := 'select mainid from t_jiekuanren where 1=1 ';
  if name <> '' then
    sqlstr := sqlstr+' and  jiekuanrenxingming='''+DBS(name)+'''';
  if shenfenzheng<> '' then
    sqlstr := sqlstr+' and jiekuanrenshenfenzhenghaoma='''+DBS(shenfenzheng)+'''';
  opensql(sqlstr , FrmMain.AQOpen);

  if (FrmMain.AQOpen.eof and FrmMain.AQOpen.bof) then begin
    msg := 'msg系统未找到此人数据。';
  end else begin
    mainid := FrmMain.AQOpen.FieldByName('mainid').AsString;

    msgs := TStringList.Create;
    msgs.Add('import');
    FrmEdt := TFrmEdt.Create(nil);
    FrmEdt.edit(mainid, false);
    //CCAS_CCTPERTRN.PERLSTNM 客户姓  CCAS_CCTPERTRN.PERLSTNM
    msgs.Add('CCAS_CCTPERTRN.PERLSTNM='+getLastName(FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingming').AsString));
    //CCAS_CCTPERTRN.PERFSTNM 客户名
    msgs.Add('CCAS_CCTPERTRN.PERFSTNM='+getFirstName(FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingming').AsString));
    //CCAS_CCTPERTRN.CBISEXID 性 别
    msgs.Add('CCAS_CCTPERTRN.CBISEXID='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingbie').AsString);
    //CCAS_CCTPERTRN.PERCERDT 证件到期日
    try
      msgs.Add('CCAS_CCTPERTRN.PERCERDT='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenzhengjiandaoqiri').AsDateTime));
    except
    end;
    //CCAS_CCTPERTRN.PERMRTST 婚姻状况
    msgs.Add('CCAS_CCTPERTRN.PERMRTST='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhunfou').AsString);
    //KYC风险等级 CCAS_CCTPERTRN.PERKYC
    msgs.Add('CCAS_CCTPERTRN.PERKYC=低风险');
    //CCAS_CCTPERTRN.PERHMTEL 住宅电话
    msgs.Add('CCAS_CCTPERTRN.PERHMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjiatingdianhua').AsString);
    //CCAS_CCTPERTRN.PERMBLNO 移动电话
    msgs.Add('CCAS_CCTPERTRN.PERMBLNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenshouji').AsString);
    //CCAS_CCTPERTRN.PERCMTEL 单位电话
    msgs.Add('CCAS_CCTPERTRN.PERCMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidianhua').AsString);
    //CCAS_CCTPERTRN.PERHMAD1 家庭住址1
    msgs.Add('CCAS_CCTPERTRN.PERHMAD1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    qu := copy(FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString, 1,
          pos('区', FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString)+1);
    //CCAS_CCTPERTRN.PERHMAD2 家庭住址2
    msgs.Add('CCAS_CCTPERTRN.PERHMAD2='+qu);
    //CCAS_CCTPERTRN.PERHMAD3 家庭住址3
    msgs.Add('CCAS_CCTPERTRN.PERHMAD3=青岛');
    //CCAS_CCTPERTRN.PERHMAD4 家庭住址4
    msgs.Add('CCAS_CCTPERTRN.PERHMAD4=山东');
    //CCAS_CCTPERTRN.PERHOMZP 邮政编码
    msgs.Add('CCAS_CCTPERTRN.PERHOMZP='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyoubian').AsString);
    //CCAS_CCTPERTRN.CBIBTHDA 出生日期 yyyymmdd
    try
      msgs.Add('CCAS_CCTPERTRN.CBIBTHDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenchushengnianyue').AsDateTime));
    except
    end;
    //CCAS_CCTPERTRN.DOMICILE 客户户籍
    msgs.Add('CCAS_CCTPERTRN.DOMICILE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguoji').AsString);
    //CCAS_CCTPERTRN.CUSDMCLR 户籍所在地
    msgs.Add('CCAS_CCTPERTRN.CUSDMCLR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhujisuozaidi').AsString);
    //CCAS_CCTPERTRN.PEROCCPA 职 业
    msgs.Add('CCAS_CCTPERTRN.PEROCCPA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuogangwei').AsString);
    //CCAS_CCTPERTRN.PERNTLNO 民 族
    msgs.Add('CCAS_CCTPERTRN.PERNTLNO=汉族');
    //CCAS_CCTPERTRN.PERTITLE 职 称
    msgs.Add('CCAS_CCTPERTRN.PERTITLE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjishuzige').AsString);
    //CCAS_CCTPERTRN.PEREDUBK 文化程度
    msgs.Add('CCAS_CCTPERTRN.PEREDUBK='+getCCASValue('jiekuanrenxueli', FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxueli').AsString));
    //CCAS_CCTPERTRN.PEREDULV 最高学位
    msgs.Add('CCAS_CCTPERTRN.PEREDULV=其他');
    //CCAS_CCTPERTRN.PERCMPNM 现工作单位
    msgs.Add('CCAS_CCTPERTRN.PERCMPNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanwei').AsString);
    //CCAS_CCTPERTRN.WKIBUSTY 本单位行业
    msgs.Add('CCAS_CCTPERTRN.WKIBUSTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweisuoshuhangye').AsString);
    //CCAS_CCTPERTRN.PERWOKDA 参加工作日期
    try
      msgs.Add('CCAS_CCTPERTRN.PERWOKDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuonianxian').AsDateTime));
    except
    end;
    //CCAS_CCTPERTRN.WKIBEDAT 现工作日期
    try
      msgs.Add('CCAS_CCTPERTRN.WKIBEDAT='+
        formatdatetime('yyyymmdd',IncYear(now, FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenrenxianzhinianxian').AsInteger*-1)));
    except
    end;
    //CCAS_CCTPERTRN.PERNWKDA 现职工作年数
    msgs.Add('CCAS_CCTPERTRN.PERNWKDA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenrenxianzhinianxian').AsString);
    //CCAS_CCTPERTRN.PERRGCPT 单位注册资本
    msgs.Add('CCAS_CCTPERTRN.PERRGCPT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweizhuceziben').AsString);
    //CCAS_CCTPERTRN.PERHOMSO 现住房来源及居住状况
    msgs.Add('CCAS_CCTPERTRN.PERHOMSO='+FrmEdt.ATDaiKuan.FieldByName('jiekuanrenxianzhufangquanshu').AsString);
    //CCAS_CCTPERTRN.PERNLVDA 现住址时间
    try
      msgs.Add('CCAS_CCTPERTRN.PERNLVDA='+
        formatdatetime('yyyymmdd',IncYear(now, FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhushijian').AsInteger*-1)));
    except
    end;
    //CCAS_CCTPERTRN.LCLIVEYRLMT	现住址居住年限
    msgs.Add('CCAS_CCTPERTRN.LCLIVEYRLMT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhushijian').AsString);
    //CCAS_CCTPERTRN.PERCMPAD 现单位地址
    msgs.Add('CCAS_CCTPERTRN.PERCMPAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString);
    //CCAS_CCTPERTRN.PERCMPAD2 现单位地址2
    qu := copy(FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString, 1,
          pos('区', FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString)+1);
    msgs.Add('CCAS_CCTPERTRN.PERCMPAD2='+qu);
    //CCAS_CCTPERTRN.PERCMPAD4 现单位地址3
    msgs.Add('CCAS_CCTPERTRN.PERCMPAD3=青岛');
    //CCAS_CCTPERTRN.PERCMPAD4 现单位地址4
    msgs.Add('CCAS_CCTPERTRN.PERCMPAD4=山东');


    //CCAS_CCTPERTRN.PERCMPZP 工作单位邮编
    msgs.Add('CCAS_CCTPERTRN.PERCMPZP='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweiyoubian').AsString);
    //CCAS_CCTPERTRN.WKIMONIN 主借款人月收入
    msgs.Add('CCAS_CCTPERTRN.WKIMONIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyuegongzishouru').AsString);
    //CCAS_CCTPERTRN.FAMILYOTSALARY  家庭其他成员月收入
    msgs.Add('CCAS_CCTPERTRN.FAMILYOTSALARY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString);
    //CCAS_CCTPERTRN.PERMTOTIN 家庭月总收入
    msgs.Add('CCAS_CCTPERTRN.PERMTOTIN='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezongshouru').AsString);
    //CCAS_CCTPERTRN.PERHMNCS 家庭月支出合计
    msgs.Add('CCAS_CCTPERTRN.PERHMNCS='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezhichu').AsString);
    //CCAS_CCTPERTRN.PERCRDPT 客户级别
    msgs.Add('CCAS_CCTPERTRN.PERCRDPT=00');
    //CCAS_CCTPERTRN.PERCRCLS 个人客户信用等级
    msgs.Add('CCAS_CCTPERTRN.PERCRCLS=无评级');
    //CCAS_CCTPERTRN.PERHMPER 供养人口数
    if (FrmEdt.ATJieKuanRen.FieldByName('gongyangrenrenshu').AsString='') then
      msgs.Add('CCAS_CCTPERTRN.PERHMPER=0')
    else
      msgs.Add('CCAS_CCTPERTRN.PERHMPER='+FrmEdt.ATJieKuanRen.FieldByName('gongyangrenrenshu').AsString);
    //CCAS_CCTPERTRN.PERGDCAD 消贷关联客户标记
    msgs.Add('CCAS_CCTPERTRN.PERGDCAD=非关联人');
    //CCAS_CCTPERTRN.PERHMMEM 家庭成员数
    msgs.Add('CCAS_CCTPERTRN.PERHMMEM='+FrmEdt.ATJieKuanRen.FieldByName('jiatingrenkou').AsString);

    //CCAS_RETAILTRAN.TOTPRICE 购房总价
    try
      msgs.Add('CCAS_RETAILTRAN.TOTPRICE='+VartoStr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    except
    end;
    //CCAS_RETAILTRAN.PRICE 评估价
    try
      msgs.Add('CCAS_RETAILTRAN.PRICE='+VartoStr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    except
    end;
    //CCAS_RETAILTRAN.LCTBCTNO 房号
    msgs.Add('CCAS_RETAILTRAN.LCTBCTNO='+FrmEdt.ATFangWu.FieldByName('fangwufanghao').AsString);
    //CCAS_RETAILTRAN.LCTBLDAR 面积
    msgs.Add('CCAS_RETAILTRAN.LCTBLDAR='+FrmEdt.ATFangWu.FieldByName('fangwujianzhumianji').AsString);
    //tempgfdj 购房单价
    msgs.Add('tempgfdj='+FrmEdt.ATFangWu.FieldByName('pinggujiage').AsString);
    //LOCATION 项目要求
    //msgs.Add('LOCATION='+FrmEdt.ATFangWu.FieldByName('fangwudiliweizhi').AsString);

    //CCAS_PLAATRN.LAFAPYAM 已交首期款
    try
      msgs.Add('CCAS_PLAATRN.LAFAPYAM='+VartoStr(FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFDRAMT 申请借款金额
    try
      msgs.Add('CCAS_PLAATRN.LAFDRAMT='+VartoStr(FrmEdt.ATDaiKuan.FieldByName('daikuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFTERM 申请借款期限
    try
      msgs.Add('CCAS_PLAATRN.LAFTERM='+VartoStr(FrmEdt.ATDaiKuan.FieldByName('qixian').AsInteger*12));
    except
    end;
    //CCAS_PLAATRN.LAFRTMOD 还款方式
    if FrmEdt.ATDaiKuan.FieldByName('huankuanfangshi').AsString = '等额还款法' then
      msgs.Add('CCAS_PLAATRN.LAFRTMOD=等额本息')
    else
      msgs.Add('CCAS_PLAATRN.LAFRTMOD=等额本金');
    //CCAS_PLAATRN.FLRATESCA 利率浮动比例
    msgs.Add('CCAS_PLAATRN.FLRATESCA='+FrmEdt.ATDaiKuan.FieldByName('lilvfudongbeli').AsString);
    if length(FrmEdt.ATDaiKuan.FieldByName('jiekuanrencunzhezhanghao').AsString) > 12 then
      //CCAS_PLAATRN.RECEIVEDEBITNO 还款借记卡卡号
      msgs.Add('CCAS_PLAATRN.RECEIVEDEBITNO='+FrmEdt.ATDaiKuan.FieldByName('jiekuanrencunzhezhanghao').AsString)
    else
      //CCAS_PLAATRN.RECEIVEACCNO 还款帐号
      msgs.Add('CCAS_PLAATRN.LAFPACT='+FrmEdt.ATDaiKuan.FieldByName('jiekuanrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.RECEIVEPER 收款人
    msgs.Add('CCAS_PLAATRN.RECEIVEPER='+FrmEdt.ATFangWu.FieldByName('shoufangrenxingming').AsString);
    if length(FrmEdt.ATDaiKuan.FieldByName('shoufangrencunzhezhanghao').AsString) > 12 then
      //CCAS_PLAATRN.RECEIVEDEBITNO 收款人借记卡卡号
      msgs.Add('CCAS_PLAATRN.RECEIVEDEBITNO='+FrmEdt.ATDaiKuan.FieldByName('shoufangrencunzhezhanghao').AsString)
    else
      //CCAS_PLAATRN.RECEIVEACCNO 收款人帐号
      msgs.Add('CCAS_PLAATRN.RECEIVEACCNO='+FrmEdt.ATDaiKuan.FieldByName('shoufangrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.APTRETTP 放款MCA帐户产品类型
    msgs.Add('CCAS_PLAATRN.APTRETTP=5502');
    //CCAS_PLAATRN.APTRTSTP 放款MCA帐户产品子类型
    msgs.Add('CCAS_PLAATRN.APTRTSTP=1001');
    //CCAS_PLAATRN.LAFGBRTY 提前还款后的重算方式
    msgs.Add('CCAS_PLAATRN.LAFGBRTY=减少还款金额，期数不变');
    //CCAS_PLAATRN.FSTREQFG 首次还款日标识
    msgs.Add('CCAS_PLAATRN.FSTREQFG=一个整月后的还款日还款');

    msg := msgs.Text;
    frmedt.Free;
    msgs.Free;

  end;
  result := msg;
end;

function findpeiou(name, shenfenzheng:String):String;
var sqlstr, msg, mainid, qu:String;
msgs:TStrings;
begin
  sqlstr := 'select mainid from t_jiekuanren where 1=1 ';
  if name <> '' then
    sqlstr := sqlstr+' and  jiekuanrenxingming='''+DBS(name)+'''';
  if shenfenzheng<> '' then
    sqlstr := sqlstr+' and jiekuanrenshenfenzhenghaoma='''+DBS(shenfenzheng)+'''';
  opensql(sqlstr , FrmMain.AQOpen);

  if (FrmMain.AQOpen.eof and FrmMain.AQOpen.bof) then begin
    msg := 'msg系统未找到此人数据。';
  end else begin
    mainid := FrmMain.AQOpen.FieldByName('mainid').AsString;

    msgs := TStringList.Create;
    msgs.Add('import');
    FrmEdt := TFrmEdt.Create(nil);
    FrmEdt.edit(mainid, false);
    //CCAS_CCTPERTRN.PERLSTNM 客户姓
    msgs.Add('CCAS_CCTPERTRN.PERLSTNM='+getLastName(FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouxingming').AsString));
    //CCAS_CCTPERTRN.PERFSTNM 客户名
    msgs.Add('CCAS_CCTPERTRN.PERFSTNM='+getFirstName(FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouxingming').AsString));
    //CCAS_CCTPERTRN.CBISEXID 性 别
    if FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingbie').AsString = '男' then
      msgs.Add('CCAS_CCTPERTRN.CBISEXID=女')
    else
      msgs.Add('CCAS_CCTPERTRN.CBISEXID=男');
    //CCAS_CCTPERTRN.PERCERDT 证件到期日
    try
      msgs.Add('CCAS_CCTPERTRN.PERCERDT='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouzhengjiandaoqiri').AsDateTime));
    except
    end;
    //CCAS_CCTPERTRN.PERMRTST 婚姻状况
    msgs.Add('CCAS_CCTPERTRN.PERMRTST=已婚');
    //CCAS_CCTPERTRN.CBIBTHDA 出生日期 yyyymmdd
    try
      msgs.Add('CCAS_CCTPERTRN.CBIBTHDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouchushengnianyue').AsDateTime));
    except
    end;

    //KYC风险等级 CCAS_CCTPERTRN.PERKYC
    msgs.Add('CCAS_CCTPERTRN.PERKYC=低风险');
    //CCAS_CCTPERTRN.PERHMTEL 住宅电话
    msgs.Add('CCAS_CCTPERTRN.PERHMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeioujiatingdianhua').AsString);
    //CCAS_CCTPERTRN.PERMBLNO 移动电话
    msgs.Add('CCAS_CCTPERTRN.PERMBLNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeioushouji').AsString);
    //CCAS_CCTPERTRN.PERCMTEL 单位电话
    msgs.Add('CCAS_CCTPERTRN.PERCMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeioudanweidianhua').AsString);
    //CCAS_CCTPERTRN.PERHMAD1 家庭住址1
    msgs.Add('CCAS_CCTPERTRN.PERHMAD1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    qu := copy(FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString, 1,
          pos('区', FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString)+1);
    //CCAS_CCTPERTRN.PERHMAD2 家庭住址2
    msgs.Add('CCAS_CCTPERTRN.PERHMAD2='+qu);
    //CCAS_CCTPERTRN.PERHMAD3 家庭住址3
    msgs.Add('CCAS_CCTPERTRN.PERHMAD3=青岛');
    //CCAS_CCTPERTRN.PERHMAD4 家庭住址4
    msgs.Add('CCAS_CCTPERTRN.PERHMAD4=山东');
    //CCAS_CCTPERTRN.PERHOMZP 邮政编码
    msgs.Add('CCAS_CCTPERTRN.PERHOMZP='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyoubian').AsString);

    //CCAS_CCTPERTRN.DOMICILE 客户户籍
    msgs.Add('CCAS_CCTPERTRN.DOMICILE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguoji').AsString);
    //CCAS_CCTPERTRN.CUSDMCLR 户籍所在地
    msgs.Add('CCAS_CCTPERTRN.CUSDMCLR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouhujisuozaidi').AsString);
    //CCAS_CCTPERTRN.PEROCCPA 职 业
    msgs.Add('CCAS_CCTPERTRN.PEROCCPA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiougongzuogangwei').AsString);
    //CCAS_CCTPERTRN.PERNTLNO 民 族
    msgs.Add('CCAS_CCTPERTRN.PERNTLNO=汉族');
    //CCAS_CCTPERTRN.PERTITLE 职 称
    msgs.Add('CCAS_CCTPERTRN.PERTITLE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouzhicheng').AsString);
    //CCAS_CCTPERTRN.PEREDUBK 文化程度
    msgs.Add('CCAS_CCTPERTRN.PEREDUBK='+getCCASValue('jiekuanrenxueli', FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouxueli').AsString));
    //CCAS_CCTPERTRN.PEREDULV 最高学位
    msgs.Add('CCAS_CCTPERTRN.PEREDULV=其他');
    //CCAS_CCTPERTRN.PERCMPNM 现工作单位
    msgs.Add('CCAS_CCTPERTRN.PERCMPNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiougongzuodanwei').AsString);
    //CCAS_CCTPERTRN.WKIBUSTY 本单位行业
    msgs.Add('CCAS_CCTPERTRN.WKIBUSTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiougongzuodanweisuoshuhangye').AsString);
    //CCAS_CCTPERTRN.PERWOKDA 参加工作日期
    try
      msgs.Add('CCAS_CCTPERTRN.PERWOKDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiougongzuonianxian').AsDateTime));
    except
    end;
    //CCAS_CCTPERTRN.WKIBEDAT 现工作日期
    try
      msgs.Add('CCAS_CCTPERTRN.WKIBEDAT='+
        formatdatetime('yyyymmdd',IncYear(now,
        FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiourenxianzhinianxian').AsInteger*-1)));
    except
    end;
    //CCAS_CCTPERTRN.PERNWKDA 现职工作年数
    msgs.Add('CCAS_CCTPERTRN.PERNWKDA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenrenxianzhinianxian').AsString);
    //CCAS_CCTPERTRN.PERRGCPT 单位注册资本
    msgs.Add('CCAS_CCTPERTRN.PERRGCPT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweizhuceziben').AsString);
    //CCAS_CCTPERTRN.PERHOMSO 现住房来源及居住状况
    msgs.Add('CCAS_CCTPERTRN.PERHOMSO='+FrmEdt.ATDaiKuan.FieldByName('jiekuanrenxianzhufangquanshu').AsString);
    //CCAS_CCTPERTRN.PERNLVDA 现住址时间
    try
      msgs.Add('CCAS_CCTPERTRN.PERNLVDA='+
        formatdatetime('yyyymmdd',IncYear(now, FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhushijian').AsInteger*-1)));
    except
    end;
    //CCAS_CCTPERTRN.LCLIVEYRLMT	现住址居住年限
    msgs.Add('CCAS_CCTPERTRN.LCLIVEYRLMT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhushijian').AsString);
    //CCAS_CCTPERTRN.PERCMPAD 现单位地址      
    msgs.Add('CCAS_CCTPERTRN.PERCMPAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString);
    //CCAS_CCTPERTRN.PERCMPAD2 现单位地址2
    qu := copy(FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString, 1,
          pos('区', FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString)+1);
    msgs.Add('CCAS_CCTPERTRN.PERCMPAD2='+qu);
    //CCAS_CCTPERTRN.PERCMPAD4 现单位地址3
    msgs.Add('CCAS_CCTPERTRN.PERCMPAD3=青岛');
    //CCAS_CCTPERTRN.PERCMPAD4 现单位地址4
    msgs.Add('CCAS_CCTPERTRN.PERCMPAD4=山东');
    //CCAS_CCTPERTRN.PERCMPZP 工作单位邮编
    msgs.Add('CCAS_CCTPERTRN.PERCMPZP='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweiyoubian').AsString);
    //CCAS_CCTPERTRN.WKIMONIN 主借款人月收入
    msgs.Add('CCAS_CCTPERTRN.WKIMONIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString);
    //CCAS_CCTPERTRN.FAMILYOTSALARY  家庭其他成员月收入
    msgs.Add('CCAS_CCTPERTRN.FAMILYOTSALARY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyuegongzishouru').AsString);
    //CCAS_CCTPERTRN.PERMTOTIN 家庭月总收入
    msgs.Add('CCAS_CCTPERTRN.PERMTOTIN='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezongshouru').AsString);
    //CCAS_CCTPERTRN.PERHMNCS 家庭月支出合计
    msgs.Add('CCAS_CCTPERTRN.PERHMNCS='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezhichu').AsString);
    //CCAS_CCTPERTRN.PERCRDPT 客户级别
    msgs.Add('CCAS_CCTPERTRN.PERCRDPT=00');
    //CCAS_CCTPERTRN.PERCRCLS 个人客户信用等级
    msgs.Add('CCAS_CCTPERTRN.PERCRCLS=未评级');
    //CCAS_CCTPERTRN.PERHMPER 供养人口数
    if (FrmEdt.ATJieKuanRen.FieldByName('gongyangrenrenshu').AsString='') then
      msgs.Add('CCAS_CCTPERTRN.PERHMPER=0')
    else
      msgs.Add('CCAS_CCTPERTRN.PERHMPER='+FrmEdt.ATJieKuanRen.FieldByName('gongyangrenrenshu').AsString);
    //CCAS_CCTPERTRN.PERGDCAD 消贷关联客户标记
    msgs.Add('CCAS_CCTPERTRN.PERGDCAD=非关联人');
    //CCAS_CCTPERTRN.PERHMMEM 家庭成员数
    msgs.Add('CCAS_CCTPERTRN.PERHMMEM='+FrmEdt.ATJieKuanRen.FieldByName('jiatingrenkou').AsString);

    //CCAS_RETAILTRAN.TOTPRICE 购房总价
    try
      msgs.Add('CCAS_RETAILTRAN.TOTPRICE='+VartoStr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    except
    end;
    //CCAS_RETAILTRAN.PRICE 评估价
    try
      msgs.Add('CCAS_RETAILTRAN.PRICE='+VartoStr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    except
    end;
    //CCAS_RETAILTRAN.LCTBCTNO 房号
    msgs.Add('CCAS_RETAILTRAN.LCTBCTNO='+FrmEdt.ATFangWu.FieldByName('fangwufanghao').AsString);
    //CCAS_RETAILTRAN.LCTBLDAR 面积
    msgs.Add('CCAS_RETAILTRAN.LCTBLDAR='+FrmEdt.ATFangWu.FieldByName('fangwujianzhumianji').AsString);
    //tempgfdj 购房单价
    msgs.Add('tempgfdj='+FrmEdt.ATFangWu.FieldByName('pinggujiage').AsString);
    //LOCATION 项目要求
    //msgs.Add('LOCATION='+FrmEdt.ATFangWu.FieldByName('fangwudiliweizhi').AsString);

    //CCAS_PLAATRN.LAFAPYAM 已交首期款
    try
      msgs.Add('CCAS_PLAATRN.LAFAPYAM='+VartoStr(FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFDRAMT 申请借款金额
    try
      msgs.Add('CCAS_PLAATRN.LAFDRAMT='+VartoStr(FrmEdt.ATDaiKuan.FieldByName('daikuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFTERM 申请借款期限
    try
      msgs.Add('CCAS_PLAATRN.LAFTERM='+VartoStr(FrmEdt.ATDaiKuan.FieldByName('qixian').AsInteger*12));
    except
    end;
    //CCAS_PLAATRN.LAFRTMOD 还款方式
    if FrmEdt.ATDaiKuan.FieldByName('huankuanfangshi').AsString = '等额还款法' then
      msgs.Add('CCAS_PLAATRN.LAFRTMOD=等额本息')
    else
      msgs.Add('CCAS_PLAATRN.LAFRTMOD=等额本金');
    //CCAS_PLAATRN.FLRATESCA 利率浮动比例
    msgs.Add('CCAS_PLAATRN.FLRATESCA='+FrmEdt.ATDaiKuan.FieldByName('lilvfudongbeli').AsString);

    //CCAS_PLAATRN.LAFPACT 还款帐号
    msgs.Add('CCAS_PLAATRN.LAFPACT='+FrmEdt.ATDaiKuan.FieldByName('jiekuanrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.RECEIVEPER 收款人
    msgs.Add('CCAS_PLAATRN.RECEIVEPER='+FrmEdt.ATFangWu.FieldByName('shoufangrenxingming').AsString);
    //CCAS_PLAATRN.RECEIVEACCNO 收款人帐号
    msgs.Add('CCAS_PLAATRN.RECEIVEACCNO='+FrmEdt.ATDaiKuan.FieldByName('shoufangrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.APTRETTP 放款MCA帐户产品类型
    msgs.Add('CCAS_PLAATRN.APTRETTP=5502');
    //CCAS_PLAATRN.APTRTSTP 放款MCA帐户产品子类型
    msgs.Add('CCAS_PLAATRN.APTRTSTP=1001');
    //CCAS_PLAATRN.LAFGBRTY 提前还款后的重算方式
    msgs.Add('CCAS_PLAATRN.LAFGBRTY=减少还款金额，期数不变');
    //CCAS_PLAATRN.FSTREQFG 首次还款日标识
    msgs.Add('CCAS_PLAATRN.FSTREQFG=一个整月后的还款日还款');

    msg := msgs.Text;
    frmedt.Free;
    msgs.Free;

  end;
  result := msg;
end;

function importfind(name, shenfenzheng: String): String;
var sqlstr, msg:String;
//msgs:TStrings;
begin
  lastfindname := name;
  lastfindshenfenzheng := shenfenzheng;
  sqlstr := 'select mainid from t_jiekuanren where 1=1 ';
  if name <> '' then
    sqlstr := sqlstr+' and  jiekuanrenxingming='''+DBS(name)+'''';
  if shenfenzheng<> '' then
    sqlstr := sqlstr+' and jiekuanrenshenfenzhenghaoma='''+DBS(shenfenzheng)+'''';
  opensql(sqlstr ,FrmMain.AQOpen);
  if (FrmMain.AQOpen.eof and FrmMain.AQOpen.bof) then begin
    msg := 'importfind系统未找到此人数据,要新建吗？';
  end else begin
    msg := 'importfind系统已找到此人数据,要覆盖吗？';
  end;
  result := msg;
end;



end.
