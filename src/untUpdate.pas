unit untUpdate;

interface

uses untUtil, untMain;

procedure updateDB();

procedure updateDB20091130;
procedure updateDB20091209;
procedure updateDB20091221;
procedure updateDB20091230;
procedure updateDB20100509;
procedure updateDB20101001;
procedure updateDB20101118;

implementation

procedure updateDB();
var currentVer:String;
begin
  //获得当前版本号
  try
    FrmMain.aqOpen.Close;
    FrmMain.aqOpen.SQL.Text := 'select v from t_ver';
    FrmMain.aqOpen.Open;
    currentVer := FrmMain.aqOpen.FieldByName('v').AsString;
  except
    //版本库未建
    currentVer := '20090101';
  end;

  //20091130
  if currentVer < '20091130' then updateDB20091130;

  //20091209
  if currentVer < '20091209' then updateDB20091209;

  //20091221
  if currentVer < '20091221' then updateDB20091221;

  //20091229
  if currentVer < '20091230' then updateDB20091230;

  //20100509
  if currentVer < '20100509' then updateDB20100509;

  //20101001
  if currentVer < '20101001' then updateDB20101001;

  //20101118
  if currentVer < '20101119' then updateDB20101118;
end;

procedure updateDB20101118;
begin
  execsql('alter table t_jiekuanren add jiekuanrenzhengjiandaoqiri varchar(50) ', false);
  execsql('alter table t_jiekuanren add jiekuanrenpeiouzhengjiandaoqiri varchar(50) ', false);
  execsql('alter table t_jiekuanren add jiekuanrenpeiougongzuodanweisuoshuhangye varchar(50) ', false);
  execsql('alter table t_jiekuanren add jiekuanrenpeiouhujisuozaidi varchar(50) ', false);

  //更新版本号           jiekuanrenzhengjiandaoqiri   jiekuanrenpeiouzhengjiandaoqiri
  execsql('update t_ver set v = ''20101119''');
end;

procedure updateDB20101001;
begin
  execsql('create table t_ccasvalue (id COUNTER CONSTRAINT PrimaryKey PRIMARY KEY, leixing varchar(255), svalue varchar(255), ccasvalue varchar(255))', false);
  execsql('insert into t_ccasvalue (leixing, svalue, ccasvalue) values (''jiekuanrenxueli'',''大本'',''大学本科（简称“大学”）'')');
  execsql('insert into t_ccasvalue (leixing, svalue, ccasvalue) values (''jiekuanrenxueli'',''大专'',''大学专科和专科学校（简称“大专”）'')');
  execsql('insert into t_ccasvalue (leixing, svalue, ccasvalue) values (''jiekuanrenxueli'',''中专'',''中等专业学校或中等技术学校'')');
  //更新版本号
  execsql('update t_ver set v = ''20101001''');
end;

procedure updateDB20091221;
begin
  //t_daikuan jiekuanzhihangfuzeren ,jiekuanzhihangdizhi , jiekuanzhihangdianhua, dailirendianhua
  execsql('alter table t_daikuan add jiekuanzhihangfuzeren varchar(50) ', false);
  execsql('alter table t_daikuan add jiekuanzhihangdizhi varchar(200) ', false);
  execsql('alter table t_daikuan add jiekuanzhihangdianhua varchar(100) ', false);
  execsql('alter table t_daikuan add dailirendianhua varchar(50) ', false);

  //更新视图
  execsql('drop view viewall', false);
  execsql('create view viewall as '+
          'SELECT t_main.id, t_main.inputdate, t_main.lastUpdateTime, t_main.state, t_main.proxy, t_daikuan.xiangmubianhao, t_daikuan.jiekuanshijian, t_daikuan.jiekuanzhonglei, t_daikuan.jiekuanyongtu,'+
          't_daikuan.daikuanjine, t_daikuan.qixian, t_daikuan.lilv, t_daikuan.huankuanfangshi, t_daikuan.yunhuankuane, t_daikuan.toubaojine,'+
          't_daikuan.xianzhong, t_daikuan.shouyiren, t_daikuan.diyawumingcheng, t_daikuan.jiekuanrenxianzhufangquanshu, t_daikuan.jiekuanrencunzhezhanghao,'+
          't_daikuan.shoufangrencunzhezhanghao, t_daikuan.yuehuankuanezhanyueshourubili, t_daikuan.gongjijindaikuanjine, t_daikuan.yuejiaogongjijine, '+
          't_daikuan.gongjijindiyalv, t_daikuan.yinhangdiyalv, t_daikuan.gongjijinyuehuankuane, t_daikuan.qizhiriqi, t_daikuan.hetonghao, t_daikuan.yewubianhao,'+
          't_daikuan.diaocha, t_daikuan.gongjijinyuehuankuanezhanyueshourubili, t_daikuan.yinhangyuehuankuanezhanyueshourubili,'+
          'CCUR(t_daikuan.daikuanjine)+CCUR(IIf(isNumeric(t_daikuan.gongjijindaikuanjine),t_daikuan.gongjijindaikuanjine,0)) AS daikuanjineall, '+
          't_daikuan.jiekuanzhihang, t_daikuan.lilvfudongbeli, CCUR(IIf(isNumeric(t_daikuan.jiekuanrengongjijinjiaocune), '+
          't_daikuan.jiekuanrengongjijinjiaocune,0))+CCUR(IIf(isNumeric(t_daikuan.jiekuanrenpeiougongjijinjiaocune), '+
          't_daikuan.jiekuanrenpeiougongjijinjiaocune,0)) AS gongjijinjiaocune, t_daikuan.dailiren, t_daikuan.dailirenshenfenzheng,'+
          't_daikuan.jiekuanrengongjijinjiaocune, t_daikuan.jiekuanrenpeiougongjijinjiaocune, t_daikuan.diaocha1, t_daikuan.diaocha2, '+
          't_daikuan.danbaoren, t_daikuan.print1, t_daikuan.print2, t_daikuan.print3, t_daikuan.print4, t_daikuan.print5, t_daikuan.print6,  '+
          't_daikuan.print7, t_daikuan.print8, t_daikuan.fangdichantaxiangquanzhengbianhao, t_daikuan.yapinjieshuori, t_daikuan.fangkuanri, '+
          't_daikuan.yijiaori, t_fangwu.shoufangrenxingming, t_fangwu.shoufangrenxingbie, t_fangwu.shoufangrenshenfenzhenghaoma, t_fangwu.hunfou,  '+
          't_fangwu.shoufangrenpeiouxingming, t_fangwu.shoufangrenyupeiou, t_fangwu.fangchangongyourenxingming, t_fangwu.shifoutongyi,          '+
          't_fangwu.chanquanzhengbianhao, t_fangwu.fangwudiliweizhi, t_fangwu.fangwuhuanjing, t_fangwu.fangwulouyumingcheng, t_fangwu.fangwufanghao, '+
          't_fangwu.fangwujianchengniandai, t_fangwu.fangwuxingzhi, t_fangwu.fangwujianzhumianji, t_fangwu.fushufangwujianzhumianji, '+
          ' t_fangwu.loucong, t_fangwu.peitaosheshi, t_fangwu.tudiquanliqingkuang, t_fangwu.bianxiannenglipingjia,    '+
          't_fangwu.pinggujigoumingcheng, t_fangwu.pinggurenzizhi, t_fangwu.shifouzhunru, t_fangwu.gujiafangfa, t_fangwu.pinggujiage, t_fangwu.pinggujiage2, '+
          't_fangwu.jiagehelixingpingjia, t_daikuan.diyalv, t_fangwu.shoufukuanbili, t_fangwu.shoufukuanjine, t_fangwu.shoufouqiandinggoufanghetong,    '+
          't_fangwu.goufangyongtu, t_fangwu.jiaoyibeijingzhenshixingqueren, t_fangwu.xiangmumingcheng,                               '+
          't_fangwu.pinggujiage+''元/㎡ ''+t_fangwu.pinggujiage2+''万'' AS pinggujiageall, t_fangwu.fangwulouyumingcheng, t_fangwu.fangwufanghao, '+
          't_fangwu.shoufangrenzhuzhi, t_fangwu.shoufangrendianhua, t_fangwu.shoufangrenchushenriqi, t_fangwu.fangchangongyourenshenfenzhenghaoma,   '+
          't_fangwu.zhongjie, t_fangwu.fangwuleixing, t_jiekuanren.jiekuanrenxingming, t_jiekuanren.jiekuanrenxingbie, t_jiekuanren.jiekuanrennianling,  '+
          ' t_jiekuanren.jiekuanrenchushengnianyue, t_jiekuanren.jiekuanrenshenfenzhenghaoma, t_jiekuanren.jiekuanrenxueli, t_jiekuanren.jiekuanrenhunfou, '+
          't_jiekuanren.jiekuanrengongzuonianxian, t_jiekuanren.jiekuanrengongzuogangwei, t_jiekuanren.jiekuanrenrenxianzhinianxian,    '+
          't_jiekuanren.jiekuanrenjishuzige, t_jiekuanren.jiekuanrenyuegongzishouru, t_jiekuanren.jiekuanrengongzuodanwei,      '+
          't_jiekuanren.jiekuanrendanweijianyaoshuoming, t_jiekuanren.jiekuanrenguoji, t_jiekuanren.jiekuanrenyoubian,       '+
          't_jiekuanren.jiekuanrenxianjuzhudizhi, t_jiekuanren.jiekuanrenxianjuzhudizhi2, t_jiekuanren.jiekuanrendanweidianhua,    '+
          't_jiekuanren.jiekuanrendanweiyoubian, t_jiekuanren.jiekuanrendanweidizhi, t_jiekuanren.jiekuanrendanweixingzhi,      '+
          't_jiekuanren.jiekuanrenjiatingdianhua, t_jiekuanren.jiekuanrenshouji, t_jiekuanren.jiekuanrenchengxinxitongchaxunqingkuang, '+
          't_jiekuanren.jiekuanrenyuqijiluqingkuang, t_jiekuanren.jiekuanrenpeiouxingming, t_jiekuanren.jiekuanrenpeiouchushengnianyue,  '+
          't_jiekuanren.jiekuanrenpeiounianling, t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma, t_jiekuanren.jiekuanrenpeiougongzuodanwei,    '+
          't_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming, t_jiekuanren.jiekuanrenpeioudanweidianhua, t_jiekuanren.jiekuanrenpeioujiatingdianhua, '+
          't_jiekuanren.jiekuanrenpeiouxueli, t_jiekuanren.jiekuanrenpeiougongzuonianxian, t_jiekuanren.jiekuanrenpeioudanweidizhi,             '+
          't_jiekuanren.jiekuanrenpeioudanweixingzhi, t_jiekuanren.jiekuanrenpeioudanweiyoubian, t_jiekuanren.jiekuanrenpeiouzhicheng,       '+
          't_jiekuanren.jiekuanrenpeioushouji, t_jiekuanren.jiekuanrenpeiougongzuogangwei, t_jiekuanren.jiekuanrenpeiourenxianzhinianxian,    '+
          't_jiekuanren.jiekuanrenpeiouyuegongzishouru, t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang,                  '+
          't_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang, t_jiekuanren.jiatingyuezongshouru, t_jiekuanren.jiatingqitashourulaiyuan,   '+
          't_jiekuanren.jiatingqitafuzhaijizhichu, t_jiekuanren.jiatingyuezhichu, t_jiekuanren.jiatingshouruzhenshixingjihelipingjia,    '+
          't_jiekuanren.yinghangcunkuan, t_jiekuanren.jiekuanrengongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrendanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrendanweijianyaoshuoming) AS jiekuanrendanweiall,  '+
          't_jiekuanren.jiekuanrenxianjuzhudizhi+IIf(isnull(t_jiekuanren.jiekuanrenxianjuzhudizhi2),'''',''，''+t_jiekuanren.jiekuanrenxianjuzhudizhi2) AS jiekuanrenxianjuzhudizhiall,          '+
          't_jiekuanren.jiekuanrenpeiougongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming) AS jiekuanrenpeioudanweiall,  '+
          't_jiekuanren.gongyangrenqingkuang, t_jiekuanren.gongyangrenrenshu, t_jiekuanren.jiatingrenkou, t_jiekuanren.jiatingrenkehuliushuihao,'+
          't_fangwu.pinggubianhao, t_fangwu.louconggong, t_fangwu.fangwujiegou, t_fangwu.chaoxiang, t_fangwu.pingmianbuju, t_fangwu.fangwujiegou+t_fangwu.chaoxiang as fangwujiegoujichaoxiang,    '+
          't_daikuan.jiekuanzhihangfuzeren, t_daikuan.jiekuanzhihangdizhi, t_daikuan.jiekuanzhihangdianhua, t_daikuan.dailirendianhua '+
          'FROM t_jiekuanren INNER JOIN (t_fangwu INNER JOIN (t_daikuan INNER JOIN t_main ON t_daikuan.mainid=t_main.id) ON t_fangwu.mainid=t_main.id) ON t_jiekuanren.mainid=t_main.id'
          ,false);
  execsql('drop view viewallforprint', false);
  execsql('create view viewallforprint as '+
          'SELECT t_main.id, t_main.inputdate, t_main.lastUpdateTime, t_main.state, t_main.proxy, IIf(len(t_daikuan.xiangmubianhao)>0,t_daikuan.xiangmubianhao,''--'') AS xiangmubianhao,'+
          't_daikuan.jiekuanshijian, t_daikuan.jiekuanzhonglei, t_daikuan.jiekuanyongtu, t_daikuan.daikuanjine, t_daikuan.qixian, t_daikuan.lilv,  '+
          't_daikuan.huankuanfangshi, t_daikuan.yunhuankuane, IIf(len(t_daikuan.toubaojine)>0,t_daikuan.toubaojine,''--'') AS toubaojine,   '+
          'IIf(len(t_daikuan.xianzhong)>0,t_daikuan.xianzhong,''--'') AS xianzhong, IIf(len(t_daikuan.shouyiren)>0,t_daikuan.shouyiren,''--'') AS shouyiren,  '+
          'IIf(len(t_daikuan.diyawumingcheng)>0,t_daikuan.diyawumingcheng,''--'') AS diyawumingcheng, IIf(len(t_daikuan.jiekuanrenxianzhufangquanshu)>0,   '+
          't_daikuan.jiekuanrenxianzhufangquanshu,''--'') AS jiekuanrenxianzhufangquanshu, IIf(len(t_daikuan.jiekuanrencunzhezhanghao)>0,    '+
          't_daikuan.jiekuanrencunzhezhanghao,''--'') AS jiekuanrencunzhezhanghao, IIf(len(t_daikuan.shoufangrencunzhezhanghao)>0,    '+
          't_daikuan.shoufangrencunzhezhanghao,''--'') AS shoufangrencunzhezhanghao, t_daikuan.yuehuankuanezhanyueshourubili,     '+
          'IIf(len(t_daikuan.gongjijindaikuanjine)>0,t_daikuan.gongjijindaikuanjine,''--'') AS gongjijindaikuanjine, t_daikuan.lilvfudongbeli, IIf(len(t_daikuan.yuejiaogongjijine)>0,'+
          't_daikuan.yuejiaogongjijine,''--'') AS yuejiaogongjijine, IIf(len(t_daikuan.gongjijindiyalv)>0,t_daikuan.gongjijindiyalv,''--'') AS gongjijindiyalv, t_daikuan.yinhangdiyalv,'+
          'IIf(len(t_daikuan.gongjijinyuehuankuane)>0,t_daikuan.gongjijinyuehuankuane,''--'') AS gongjijinyuehuankuane, t_daikuan.qizhiriqi, t_daikuan.hetonghao, t_daikuan.jiekuanzhihang,'+
          't_fangwu.shoufangrenxingming, t_fangwu.shoufangrenxingbie, t_fangwu.shoufangrenshenfenzhenghaoma, t_fangwu.hunfou, IIf(len(t_fangwu.shoufangrenpeiouxingming)>0,'+
          't_fangwu.shoufangrenpeiouxingming,''--'') AS shoufangrenpeiouxingming, IIf(len(t_fangwu.shoufangrenyupeiou)>0,t_fangwu.shoufangrenyupeiou,''--'') AS shoufangrenyupeiou,'+
          'IIf(len(t_fangwu.fangchangongyourenxingming)>0,t_fangwu.fangchangongyourenxingming,''--'') AS fangchangongyourenxingming, IIf(len(t_fangwu.shifoutongyi)>0,t_fangwu.shifoutongyi,''--'') AS shifoutongyi,'+
          'IIf(len(t_fangwu.chanquanzhengbianhao)>0,t_fangwu.chanquanzhengbianhao,''--'') AS chanquanzhengbianhao, t_fangwu.fangwudiliweizhi, t_fangwu.fangwuleixing,'+
          'IIf(len(t_fangwu.fangwuhuanjing)>0,t_fangwu.fangwuhuanjing,''--'') AS fangwuhuanjing, IIf(len(t_fangwu.fangwulouyumingcheng)>0,t_fangwu.fangwulouyumingcheng,''--'') AS fangwulouyumingcheng,'+
          'IIf(len(t_fangwu.fangwufanghao)>0,t_fangwu.fangwufanghao,''--'') AS fangwufanghao, t_fangwu.fangwujianchengniandai, t_fangwu.fangwuxingzhi,'+
          'IIf(len(t_fangwu.fangwujiegou)>0,t_fangwu.fangwujiegou,''--'') AS fangwujiegou, IIf(len(t_fangwu.fangwujianzhumianji)>0,t_fangwu.fangwujianzhumianji,''--'') AS fangwujianzhumianji,'+
          't_fangwu.fushufangwujianzhumianji, t_fangwu.loucong,  IIf(len(t_fangwu.peitaosheshi)>0,t_fangwu.peitaosheshi,''--'') AS peitaosheshi,'+
          't_fangwu.tudiquanliqingkuang, t_fangwu.bianxiannenglipingjia, t_fangwu.pinggujigoumingcheng, t_fangwu.pinggurenzizhi, t_fangwu.shifouzhunru, t_fangwu.gujiafangfa,'+
          't_fangwu.pinggujiage, t_fangwu.pinggujiage2, t_fangwu.jiagehelixingpingjia, t_daikuan.diyalv, t_fangwu.shoufukuanbili, t_fangwu.shoufukuanjine, t_fangwu.shoufouqiandinggoufanghetong,'+
          't_fangwu.goufangyongtu, t_fangwu.jiaoyibeijingzhenshixingqueren, t_fangwu.xiangmumingcheng, t_fangwu.fangwuleixing, t_jiekuanren.jiekuanrenxingming, t_jiekuanren.jiekuanrenxingbie,'+
          't_jiekuanren.jiekuanrennianling, t_jiekuanren.jiekuanrenchushengnianyue, t_jiekuanren.jiekuanrenshenfenzhenghaoma, t_jiekuanren.jiekuanrenhujisuozaidi,'+
          'IIf(len(t_jiekuanren.jiekuanrenxueli)>0,t_jiekuanren.jiekuanrenxueli,''--'') AS jiekuanrenxueli, t_jiekuanren.jiekuanrenhunfou, t_jiekuanren.jiekuanrengongzuonianxian,'+
          'IIf(len(t_jiekuanren.jiekuanrengongzuogangwei)>0,t_jiekuanren.jiekuanrengongzuogangwei,''--'') AS jiekuanrengongzuogangwei, t_jiekuanren.jiekuanrenrenxianzhinianxian,'+
          'IIf(len(t_jiekuanren.jiekuanrenjishuzige)>0,t_jiekuanren.jiekuanrenjishuzige,''--'') AS jiekuanrenjishuzige, t_jiekuanren.jiekuanrenyuegongzishouru,'+
          'IIf(len(t_jiekuanren.jiekuanrengongzuodanwei)>0,t_jiekuanren.jiekuanrengongzuodanwei,''--'') AS jiekuanrengongzuodanwei, IIf(len(t_jiekuanren.jiekuanrendanweijianyaoshuoming)>0,'+
          't_jiekuanren.jiekuanrendanweijianyaoshuoming,''--'') AS jiekuanrendanweijianyaoshuoming, t_jiekuanren.jiekuanrenguoji,'+
          'IIf(len(t_jiekuanren.jiekuanrenyoubian)>0,t_jiekuanren.jiekuanrenyoubian,''--'') AS jiekuanrenyoubian, IIf(len(t_jiekuanren.jiekuanrenxianjuzhudizhi)>0,'+
          't_jiekuanren.jiekuanrenxianjuzhudizhi,''--'') AS jiekuanrenxianjuzhudizhi, IIf(len(t_jiekuanren.jiekuanrenxianjuzhudizhi2)>0,t_jiekuanren.jiekuanrenxianjuzhudizhi2,''--'') AS jiekuanrenxianjuzhudizhi2,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweidianhua)>0,t_jiekuanren.jiekuanrendanweidianhua,''--'') AS jiekuanrendanweidianhua,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweiyoubian)>0,t_jiekuanren.jiekuanrendanweiyoubian,''--'') AS jiekuanrendanweiyoubian,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweidizhi)>0,t_jiekuanren.jiekuanrendanweidizhi,''--'') AS jiekuanrendanweidizhi,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweixingzhi)>0,t_jiekuanren.jiekuanrendanweixingzhi,''--'') AS jiekuanrendanweixingzhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenjiatingdianhua)>0,t_jiekuanren.jiekuanrenjiatingdianhua,''--'') AS jiekuanrenjiatingdianhua,'+
          'IIf(len(t_jiekuanren.jiekuanrenshouji)>0,t_jiekuanren.jiekuanrenshouji,''--'') AS jiekuanrenshouji, t_jiekuanren.jiekuanrenchengxinxitongchaxunqingkuang,'+
          't_jiekuanren.jiekuanrenyuqijiluqingkuang, iif(len(t_jiekuanren.jiekuanrenpeiouxingming)>0,t_jiekuanren.jiekuanrenpeiouxingming,''--'') AS jiekuanrenpeiouxingming,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouchushengnianyue)>0,t_jiekuanren.jiekuanrenpeiouchushengnianyue,''--'') AS jiekuanrenpeiouchushengnianyue,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiounianling)>0,t_jiekuanren.jiekuanrenpeiounianling,''--'') AS jiekuanrenpeiounianling,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma)>0,t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma,''--'') AS jiekuanrenpeioushenfenzhenghaoma,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuodanwei)>0,t_jiekuanren.jiekuanrenpeiougongzuodanwei,''--'') AS jiekuanrenpeiougongzuodanwei,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweidizhi)>0,t_jiekuanren.jiekuanrenpeioudanweidizhi,''--'') AS jiekuanrenpeioudanweidizhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweixingzhi)>0,t_jiekuanren.jiekuanrenpeioudanweixingzhi,''--'') AS jiekuanrenpeioudanweixingzhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweiyoubian)>0,t_jiekuanren.jiekuanrenpeioudanweiyoubian,''--'') AS jiekuanrenpeioudanweiyoubian,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeiouzhicheng)>0,t_jiekuanren.jiekuanrenpeiouzhicheng,''--'') AS jiekuanrenpeiouzhicheng,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioushouji)>0,t_jiekuanren.jiekuanrenpeioushouji,''--'') AS jiekuanrenpeioushouji,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming)>0,t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming,''--'') AS jiekuanrenpeioudanweijianyaoshuoming,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioudanweidianhua)>0,t_jiekuanren.jiekuanrenpeioudanweidianhua,''--'') AS jiekuanrenpeioudanweidianhua,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioujiatingdianhua)>0,t_jiekuanren.jiekuanrenpeioujiatingdianhua,''--'') AS jiekuanrenpeioujiatingdianhua,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouxueli)>0,t_jiekuanren.jiekuanrenpeiouxueli,''--'') AS jiekuanrenpeiouxueli,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuonianxian)>0,t_jiekuanren.jiekuanrenpeiougongzuonianxian,''--'') AS jiekuanrenpeiougongzuonianxian,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuogangwei)>0,t_jiekuanren.jiekuanrenpeiougongzuogangwei,''--'') AS jiekuanrenpeiougongzuogangwei,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiourenxianzhinianxian)>0,t_jiekuanren.jiekuanrenpeiourenxianzhinianxian,''--'') AS jiekuanrenpeiourenxianzhinianxian,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouyuegongzishouru)>0,t_jiekuanren.jiekuanrenpeiouyuegongzishouru,''--'') AS jiekuanrenpeiouyuegongzishouru,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang)>0,t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang,''--'') AS jiekuanrenpeiouchengxinxitongchaxunqingkuang,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang)>0,t_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang,''--'') AS jiekuanrenpeiouyuqijiluqingkuang,'+
          't_jiekuanren.jiatingyuezongshouru, t_jiekuanren.jiatingqitashourulaiyuan, t_jiekuanren.jiatingqitafuzhaijizhichu, t_jiekuanren.jiatingyuezhichu,'+
          't_jiekuanren.jiatingshouruzhenshixingjihelipingjia, t_jiekuanren.yinghangcunkuan,'+
          't_jiekuanren.jiekuanrengongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrendanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrendanweijianyaoshuoming) AS jiekuanrendanweiall,'+
          't_jiekuanren.jiekuanrenxianjuzhudizhi+IIf(isnull(t_jiekuanren.jiekuanrenxianjuzhudizhi2),'''',''，''+t_jiekuanren.jiekuanrenxianjuzhudizhi2) AS jiekuanrenxianjuzhudizhiall,'+
          't_jiekuanren.jiekuanrenpeiougongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming) AS jiekuanrenpeioudanweiall,'+
          't_jiekuanren.gongyangrenqingkuang, t_jiekuanren.jiatingrenkehuliushuihao, t_fangwu.pinggujiage+''元/㎡ ''+t_fangwu.pinggujiage2+''万'' AS pinggujiageall,'+
          't_fangwu.fangchangongyourenshenfenzhenghaoma, t_daikuan.yewubianhao, t_daikuan.diaocha, t_daikuan.gongjijinyuehuankuanezhanyueshourubili,'+
          't_daikuan.yinhangyuehuankuanezhanyueshourubili, CCUR(t_daikuan.daikuanjine)+CCUR(IIf(isNumeric(t_daikuan.gongjijindaikuanjine),t_daikuan.gongjijindaikuanjine,0)) AS daikuanjineall,'+
          'CCUR(IIf(isNumeric(t_daikuan.jiekuanrengongjijinjiaocune),t_daikuan.jiekuanrengongjijinjiaocune,0))+CCUR(IIf(isNumeric(t_daikuan.jiekuanrenpeiougongjijinjiaocune),'+
          't_daikuan.jiekuanrenpeiougongjijinjiaocune,0)) AS gongjijinjiaocune, t_fangwu.shoufangrenzhuzhi, t_fangwu.shoufangrendianhua, t_fangwu.shoufangrenchushenriqi,'+
          't_daikuan.dailiren, t_daikuan.dailirenshenfenzheng, t_daikuan.jiekuanrengongjijinjiaocune, t_daikuan.jiekuanrenpeiougongjijinjiaocune,'+
          'iif(len(t_jiekuanren.gongyangrenrenshu)>0,t_jiekuanren.gongyangrenrenshu,''--'') AS gongyangrenrenshu, t_fangwu.zhongjie, t_jiekuanren.jiatingrenkou, t_daikuan.diaocha1,'+
          't_daikuan.diaocha2, t_daikuan.danbaoren, t_daikuan.print1, t_daikuan.print2, t_daikuan.print3, t_daikuan.print4, t_daikuan.print5, t_daikuan.print6, t_daikuan.print7,'+
          't_daikuan.print8, t_daikuan.print9, t_daikuan.baodanhao, t_daikuan.fangdichantaxiangquanzhengbianhao, t_daikuan.yapinjieshuori, t_daikuan.fangkuanri, t_daikuan.yijiaori,'+
           't_fangwu.pinggubianhao, t_fangwu.louconggong, t_fangwu.chaoxiang, t_fangwu.pingmianbuju, t_fangwu.fangwujiegou+t_fangwu.chaoxiang as fangwujiegoujichaoxiang ,'+
          't_daikuan.jiekuanzhihangfuzeren, t_daikuan.jiekuanzhihangdizhi, t_daikuan.jiekuanzhihangdianhua, t_daikuan.dailirendianhua '+
          'FROM t_jiekuanren INNER JOIN (t_fangwu INNER JOIN (t_daikuan INNER JOIN t_main ON t_daikuan.mainid=t_main.id) ON t_fangwu.mainid=t_main.id) ON t_jiekuanren.mainid=t_main.id'
        , false);
  //更新版本号
  execsql('update t_ver set v = ''20091221''');
end;

procedure updateDB20091230;
begin
    //t_fangwu yingshougongbenfei ,yingshoupinggufei , yingshoudanbaofei
  execsql('alter table t_fangwu add yingshougongbenfei varchar(50) ', false);
  execsql('alter table t_fangwu add yingshoupinggufei varchar(50) ', false);
  execsql('alter table t_fangwu add yingshoudanbaofei varchar(50) ', false);

  //更新视图
  execsql('drop view viewall', false);
  execsql('create view viewall as '+
          'SELECT t_main.id, t_main.inputdate, t_main.lastUpdateTime, t_main.state, t_main.proxy, t_daikuan.xiangmubianhao, t_daikuan.jiekuanshijian, t_daikuan.jiekuanzhonglei, t_daikuan.jiekuanyongtu,'+
          't_daikuan.daikuanjine, t_daikuan.qixian, t_daikuan.lilv, t_daikuan.huankuanfangshi, t_daikuan.yunhuankuane, t_daikuan.toubaojine,'+
          't_daikuan.xianzhong, t_daikuan.shouyiren, t_daikuan.diyawumingcheng, t_daikuan.jiekuanrenxianzhufangquanshu, t_daikuan.jiekuanrencunzhezhanghao,'+
          't_daikuan.shoufangrencunzhezhanghao, t_daikuan.yuehuankuanezhanyueshourubili, t_daikuan.gongjijindaikuanjine, t_daikuan.yuejiaogongjijine, '+
          't_daikuan.gongjijindiyalv, t_daikuan.yinhangdiyalv, t_daikuan.gongjijinyuehuankuane, t_daikuan.qizhiriqi, t_daikuan.hetonghao, t_daikuan.yewubianhao,'+
          't_daikuan.diaocha, t_daikuan.gongjijinyuehuankuanezhanyueshourubili, t_daikuan.yinhangyuehuankuanezhanyueshourubili,'+
          'CCUR(t_daikuan.daikuanjine)+CCUR(IIf(isNumeric(t_daikuan.gongjijindaikuanjine),t_daikuan.gongjijindaikuanjine,0)) AS daikuanjineall, '+
          't_daikuan.jiekuanzhihang, t_daikuan.lilvfudongbeli, CCUR(IIf(isNumeric(t_daikuan.jiekuanrengongjijinjiaocune), '+
          't_daikuan.jiekuanrengongjijinjiaocune,0))+CCUR(IIf(isNumeric(t_daikuan.jiekuanrenpeiougongjijinjiaocune), '+
          't_daikuan.jiekuanrenpeiougongjijinjiaocune,0)) AS gongjijinjiaocune, t_daikuan.dailiren, t_daikuan.dailirenshenfenzheng,'+
          't_daikuan.jiekuanrengongjijinjiaocune, t_daikuan.jiekuanrenpeiougongjijinjiaocune, t_daikuan.diaocha1, t_daikuan.diaocha2, '+
          't_daikuan.danbaoren, t_daikuan.print1, t_daikuan.print2, t_daikuan.print3, t_daikuan.print4, t_daikuan.print5, t_daikuan.print6,  '+
          't_daikuan.print7, t_daikuan.print8, t_daikuan.fangdichantaxiangquanzhengbianhao, t_daikuan.yapinjieshuori, t_daikuan.fangkuanri, '+
          't_daikuan.yijiaori, t_fangwu.shoufangrenxingming, t_fangwu.shoufangrenxingbie, t_fangwu.shoufangrenshenfenzhenghaoma, t_fangwu.hunfou,  '+
          't_fangwu.shoufangrenpeiouxingming, t_fangwu.shoufangrenyupeiou, t_fangwu.fangchangongyourenxingming, t_fangwu.shifoutongyi,          '+
          't_fangwu.chanquanzhengbianhao, t_fangwu.fangwudiliweizhi, t_fangwu.fangwuhuanjing, t_fangwu.fangwulouyumingcheng, t_fangwu.fangwufanghao, '+
          't_fangwu.fangwujianchengniandai, t_fangwu.fangwuxingzhi, t_fangwu.fangwujianzhumianji, t_fangwu.fushufangwujianzhumianji, '+
          ' t_fangwu.loucong, t_fangwu.peitaosheshi, t_fangwu.tudiquanliqingkuang, t_fangwu.bianxiannenglipingjia,    '+
          't_fangwu.pinggujigoumingcheng, t_fangwu.pinggurenzizhi, t_fangwu.shifouzhunru, t_fangwu.gujiafangfa, t_fangwu.pinggujiage, t_fangwu.pinggujiage2, '+
          't_fangwu.jiagehelixingpingjia, t_daikuan.diyalv, t_fangwu.shoufukuanbili, t_fangwu.shoufukuanjine, t_fangwu.shoufouqiandinggoufanghetong,    '+
          't_fangwu.goufangyongtu, t_fangwu.jiaoyibeijingzhenshixingqueren, t_fangwu.xiangmumingcheng,                               '+
          't_fangwu.pinggujiage+''元/㎡ ''+t_fangwu.pinggujiage2+''万'' AS pinggujiageall, t_fangwu.fangwulouyumingcheng, t_fangwu.fangwufanghao, '+
          't_fangwu.shoufangrenzhuzhi, t_fangwu.shoufangrendianhua, t_fangwu.shoufangrenchushenriqi, t_fangwu.fangchangongyourenshenfenzhenghaoma,   '+
          't_fangwu.zhongjie, t_fangwu.fangwuleixing, t_jiekuanren.jiekuanrenxingming, t_jiekuanren.jiekuanrenxingbie, t_jiekuanren.jiekuanrennianling,  '+
          ' t_jiekuanren.jiekuanrenchushengnianyue, t_jiekuanren.jiekuanrenshenfenzhenghaoma, t_jiekuanren.jiekuanrenxueli, t_jiekuanren.jiekuanrenhunfou, '+
          't_jiekuanren.jiekuanrengongzuonianxian, t_jiekuanren.jiekuanrengongzuogangwei, t_jiekuanren.jiekuanrenrenxianzhinianxian,    '+
          't_jiekuanren.jiekuanrenjishuzige, t_jiekuanren.jiekuanrenyuegongzishouru, t_jiekuanren.jiekuanrengongzuodanwei,      '+
          't_jiekuanren.jiekuanrendanweijianyaoshuoming, t_jiekuanren.jiekuanrenguoji, t_jiekuanren.jiekuanrenyoubian,       '+
          't_jiekuanren.jiekuanrenxianjuzhudizhi, t_jiekuanren.jiekuanrenxianjuzhudizhi2, t_jiekuanren.jiekuanrendanweidianhua,    '+
          't_jiekuanren.jiekuanrendanweiyoubian, t_jiekuanren.jiekuanrendanweidizhi, t_jiekuanren.jiekuanrendanweixingzhi,      '+
          't_jiekuanren.jiekuanrenjiatingdianhua, t_jiekuanren.jiekuanrenshouji, t_jiekuanren.jiekuanrenchengxinxitongchaxunqingkuang, '+
          't_jiekuanren.jiekuanrenyuqijiluqingkuang, t_jiekuanren.jiekuanrenpeiouxingming, t_jiekuanren.jiekuanrenpeiouchushengnianyue,  '+
          't_jiekuanren.jiekuanrenpeiounianling, t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma, t_jiekuanren.jiekuanrenpeiougongzuodanwei,    '+
          't_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming, t_jiekuanren.jiekuanrenpeioudanweidianhua, t_jiekuanren.jiekuanrenpeioujiatingdianhua, '+
          't_jiekuanren.jiekuanrenpeiouxueli, t_jiekuanren.jiekuanrenpeiougongzuonianxian, t_jiekuanren.jiekuanrenpeioudanweidizhi,             '+
          't_jiekuanren.jiekuanrenpeioudanweixingzhi, t_jiekuanren.jiekuanrenpeioudanweiyoubian, t_jiekuanren.jiekuanrenpeiouzhicheng,       '+
          't_jiekuanren.jiekuanrenpeioushouji, t_jiekuanren.jiekuanrenpeiougongzuogangwei, t_jiekuanren.jiekuanrenpeiourenxianzhinianxian,    '+
          't_jiekuanren.jiekuanrenpeiouyuegongzishouru, t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang,                  '+
          't_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang, t_jiekuanren.jiatingyuezongshouru, t_jiekuanren.jiatingqitashourulaiyuan,   '+
          't_jiekuanren.jiatingqitafuzhaijizhichu, t_jiekuanren.jiatingyuezhichu, t_jiekuanren.jiatingshouruzhenshixingjihelipingjia,    '+
          't_jiekuanren.yinghangcunkuan, t_jiekuanren.jiekuanrengongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrendanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrendanweijianyaoshuoming) AS jiekuanrendanweiall,  '+
          't_jiekuanren.jiekuanrenxianjuzhudizhi+IIf(isnull(t_jiekuanren.jiekuanrenxianjuzhudizhi2),'''',''，''+t_jiekuanren.jiekuanrenxianjuzhudizhi2) AS jiekuanrenxianjuzhudizhiall,          '+
          't_jiekuanren.jiekuanrenpeiougongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming) AS jiekuanrenpeioudanweiall,  '+
          't_jiekuanren.gongyangrenqingkuang, t_jiekuanren.gongyangrenrenshu, t_jiekuanren.jiatingrenkou, t_jiekuanren.jiatingrenkehuliushuihao,'+
          't_fangwu.pinggubianhao, t_fangwu.louconggong, t_fangwu.fangwujiegou, t_fangwu.chaoxiang, t_fangwu.pingmianbuju, t_fangwu.fangwujiegou+t_fangwu.chaoxiang as fangwujiegoujichaoxiang,    '+
          't_daikuan.jiekuanzhihangfuzeren, t_daikuan.jiekuanzhihangdizhi, t_daikuan.jiekuanzhihangdianhua, t_daikuan.dailirendianhua, '+
          't_fangwu.yingshougongbenfei, t_fangwu.yingshoupinggufei, t_fangwu.yingshoudanbaofei '+
          'FROM t_jiekuanren INNER JOIN (t_fangwu INNER JOIN (t_daikuan INNER JOIN t_main ON t_daikuan.mainid=t_main.id) ON t_fangwu.mainid=t_main.id) ON t_jiekuanren.mainid=t_main.id'
          );
  execsql('drop view viewallforprint', false);
  execsql('create view viewallforprint as '+
          'SELECT t_main.id, t_main.inputdate, t_main.lastUpdateTime, t_main.state, t_main.proxy, IIf(len(t_daikuan.xiangmubianhao)>0,t_daikuan.xiangmubianhao,''--'') AS xiangmubianhao,'+
          't_daikuan.jiekuanshijian, t_daikuan.jiekuanzhonglei, t_daikuan.jiekuanyongtu, t_daikuan.daikuanjine, t_daikuan.qixian, t_daikuan.lilv,  '+
          't_daikuan.huankuanfangshi, t_daikuan.yunhuankuane, IIf(len(t_daikuan.toubaojine)>0,t_daikuan.toubaojine,''--'') AS toubaojine,   '+
          'IIf(len(t_daikuan.xianzhong)>0,t_daikuan.xianzhong,''--'') AS xianzhong, IIf(len(t_daikuan.shouyiren)>0,t_daikuan.shouyiren,''--'') AS shouyiren,  '+
          'IIf(len(t_daikuan.diyawumingcheng)>0,t_daikuan.diyawumingcheng,''--'') AS diyawumingcheng, IIf(len(t_daikuan.jiekuanrenxianzhufangquanshu)>0,   '+
          't_daikuan.jiekuanrenxianzhufangquanshu,''--'') AS jiekuanrenxianzhufangquanshu, IIf(len(t_daikuan.jiekuanrencunzhezhanghao)>0,    '+
          't_daikuan.jiekuanrencunzhezhanghao,''--'') AS jiekuanrencunzhezhanghao, IIf(len(t_daikuan.shoufangrencunzhezhanghao)>0,    '+
          't_daikuan.shoufangrencunzhezhanghao,''--'') AS shoufangrencunzhezhanghao, t_daikuan.yuehuankuanezhanyueshourubili,     '+
          'IIf(len(t_daikuan.gongjijindaikuanjine)>0,t_daikuan.gongjijindaikuanjine,''--'') AS gongjijindaikuanjine, t_daikuan.lilvfudongbeli, IIf(len(t_daikuan.yuejiaogongjijine)>0,'+
          't_daikuan.yuejiaogongjijine,''--'') AS yuejiaogongjijine, IIf(len(t_daikuan.gongjijindiyalv)>0,t_daikuan.gongjijindiyalv,''--'') AS gongjijindiyalv, t_daikuan.yinhangdiyalv,'+
          'IIf(len(t_daikuan.gongjijinyuehuankuane)>0,t_daikuan.gongjijinyuehuankuane,''--'') AS gongjijinyuehuankuane, t_daikuan.qizhiriqi, t_daikuan.hetonghao, t_daikuan.jiekuanzhihang,'+
          't_fangwu.shoufangrenxingming, t_fangwu.shoufangrenxingbie, t_fangwu.shoufangrenshenfenzhenghaoma, t_fangwu.hunfou, IIf(len(t_fangwu.shoufangrenpeiouxingming)>0,'+
          't_fangwu.shoufangrenpeiouxingming,''--'') AS shoufangrenpeiouxingming, IIf(len(t_fangwu.shoufangrenyupeiou)>0,t_fangwu.shoufangrenyupeiou,''--'') AS shoufangrenyupeiou,'+
          'IIf(len(t_fangwu.fangchangongyourenxingming)>0,t_fangwu.fangchangongyourenxingming,''--'') AS fangchangongyourenxingming, IIf(len(t_fangwu.shifoutongyi)>0,t_fangwu.shifoutongyi,''--'') AS shifoutongyi,'+
          'IIf(len(t_fangwu.chanquanzhengbianhao)>0,t_fangwu.chanquanzhengbianhao,''--'') AS chanquanzhengbianhao, t_fangwu.fangwudiliweizhi, t_fangwu.fangwuleixing,'+
          'IIf(len(t_fangwu.fangwuhuanjing)>0,t_fangwu.fangwuhuanjing,''--'') AS fangwuhuanjing, IIf(len(t_fangwu.fangwulouyumingcheng)>0,t_fangwu.fangwulouyumingcheng,''--'') AS fangwulouyumingcheng,'+
          'IIf(len(t_fangwu.fangwufanghao)>0,t_fangwu.fangwufanghao,''--'') AS fangwufanghao, t_fangwu.fangwujianchengniandai, t_fangwu.fangwuxingzhi,'+
          'IIf(len(t_fangwu.fangwujiegou)>0,t_fangwu.fangwujiegou,''--'') AS fangwujiegou, IIf(len(t_fangwu.fangwujianzhumianji)>0,t_fangwu.fangwujianzhumianji,''--'') AS fangwujianzhumianji,'+
          't_fangwu.fushufangwujianzhumianji, t_fangwu.loucong,  IIf(len(t_fangwu.peitaosheshi)>0,t_fangwu.peitaosheshi,''--'') AS peitaosheshi,'+
          't_fangwu.tudiquanliqingkuang, t_fangwu.bianxiannenglipingjia, t_fangwu.pinggujigoumingcheng, t_fangwu.pinggurenzizhi, t_fangwu.shifouzhunru, t_fangwu.gujiafangfa,'+
          't_fangwu.pinggujiage, t_fangwu.pinggujiage2, t_fangwu.jiagehelixingpingjia, t_daikuan.diyalv, t_fangwu.shoufukuanbili, t_fangwu.shoufukuanjine, t_fangwu.shoufouqiandinggoufanghetong,'+
          't_fangwu.goufangyongtu, t_fangwu.jiaoyibeijingzhenshixingqueren, t_fangwu.xiangmumingcheng, t_fangwu.fangwuleixing, t_jiekuanren.jiekuanrenxingming, t_jiekuanren.jiekuanrenxingbie,'+
          't_jiekuanren.jiekuanrennianling, t_jiekuanren.jiekuanrenchushengnianyue, t_jiekuanren.jiekuanrenshenfenzhenghaoma, t_jiekuanren.jiekuanrenhujisuozaidi,'+
          'IIf(len(t_jiekuanren.jiekuanrenxueli)>0,t_jiekuanren.jiekuanrenxueli,''--'') AS jiekuanrenxueli, t_jiekuanren.jiekuanrenhunfou, t_jiekuanren.jiekuanrengongzuonianxian,'+
          'IIf(len(t_jiekuanren.jiekuanrengongzuogangwei)>0,t_jiekuanren.jiekuanrengongzuogangwei,''--'') AS jiekuanrengongzuogangwei, t_jiekuanren.jiekuanrenrenxianzhinianxian,'+
          'IIf(len(t_jiekuanren.jiekuanrenjishuzige)>0,t_jiekuanren.jiekuanrenjishuzige,''--'') AS jiekuanrenjishuzige, t_jiekuanren.jiekuanrenyuegongzishouru,'+
          'IIf(len(t_jiekuanren.jiekuanrengongzuodanwei)>0,t_jiekuanren.jiekuanrengongzuodanwei,''--'') AS jiekuanrengongzuodanwei, IIf(len(t_jiekuanren.jiekuanrendanweijianyaoshuoming)>0,'+
          't_jiekuanren.jiekuanrendanweijianyaoshuoming,''--'') AS jiekuanrendanweijianyaoshuoming, t_jiekuanren.jiekuanrenguoji,'+
          'IIf(len(t_jiekuanren.jiekuanrenyoubian)>0,t_jiekuanren.jiekuanrenyoubian,''--'') AS jiekuanrenyoubian, IIf(len(t_jiekuanren.jiekuanrenxianjuzhudizhi)>0,'+
          't_jiekuanren.jiekuanrenxianjuzhudizhi,''--'') AS jiekuanrenxianjuzhudizhi, IIf(len(t_jiekuanren.jiekuanrenxianjuzhudizhi2)>0,t_jiekuanren.jiekuanrenxianjuzhudizhi2,''--'') AS jiekuanrenxianjuzhudizhi2,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweidianhua)>0,t_jiekuanren.jiekuanrendanweidianhua,''--'') AS jiekuanrendanweidianhua,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweiyoubian)>0,t_jiekuanren.jiekuanrendanweiyoubian,''--'') AS jiekuanrendanweiyoubian,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweidizhi)>0,t_jiekuanren.jiekuanrendanweidizhi,''--'') AS jiekuanrendanweidizhi,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweixingzhi)>0,t_jiekuanren.jiekuanrendanweixingzhi,''--'') AS jiekuanrendanweixingzhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenjiatingdianhua)>0,t_jiekuanren.jiekuanrenjiatingdianhua,''--'') AS jiekuanrenjiatingdianhua,'+
          'IIf(len(t_jiekuanren.jiekuanrenshouji)>0,t_jiekuanren.jiekuanrenshouji,''--'') AS jiekuanrenshouji, t_jiekuanren.jiekuanrenchengxinxitongchaxunqingkuang,'+
          't_jiekuanren.jiekuanrenyuqijiluqingkuang, iif(len(t_jiekuanren.jiekuanrenpeiouxingming)>0,t_jiekuanren.jiekuanrenpeiouxingming,''--'') AS jiekuanrenpeiouxingming,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouchushengnianyue)>0,t_jiekuanren.jiekuanrenpeiouchushengnianyue,''--'') AS jiekuanrenpeiouchushengnianyue,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiounianling)>0,t_jiekuanren.jiekuanrenpeiounianling,''--'') AS jiekuanrenpeiounianling,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma)>0,t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma,''--'') AS jiekuanrenpeioushenfenzhenghaoma,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuodanwei)>0,t_jiekuanren.jiekuanrenpeiougongzuodanwei,''--'') AS jiekuanrenpeiougongzuodanwei,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweidizhi)>0,t_jiekuanren.jiekuanrenpeioudanweidizhi,''--'') AS jiekuanrenpeioudanweidizhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweixingzhi)>0,t_jiekuanren.jiekuanrenpeioudanweixingzhi,''--'') AS jiekuanrenpeioudanweixingzhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweiyoubian)>0,t_jiekuanren.jiekuanrenpeioudanweiyoubian,''--'') AS jiekuanrenpeioudanweiyoubian,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeiouzhicheng)>0,t_jiekuanren.jiekuanrenpeiouzhicheng,''--'') AS jiekuanrenpeiouzhicheng,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioushouji)>0,t_jiekuanren.jiekuanrenpeioushouji,''--'') AS jiekuanrenpeioushouji,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming)>0,t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming,''--'') AS jiekuanrenpeioudanweijianyaoshuoming,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioudanweidianhua)>0,t_jiekuanren.jiekuanrenpeioudanweidianhua,''--'') AS jiekuanrenpeioudanweidianhua,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioujiatingdianhua)>0,t_jiekuanren.jiekuanrenpeioujiatingdianhua,''--'') AS jiekuanrenpeioujiatingdianhua,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouxueli)>0,t_jiekuanren.jiekuanrenpeiouxueli,''--'') AS jiekuanrenpeiouxueli,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuonianxian)>0,t_jiekuanren.jiekuanrenpeiougongzuonianxian,''--'') AS jiekuanrenpeiougongzuonianxian,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuogangwei)>0,t_jiekuanren.jiekuanrenpeiougongzuogangwei,''--'') AS jiekuanrenpeiougongzuogangwei,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiourenxianzhinianxian)>0,t_jiekuanren.jiekuanrenpeiourenxianzhinianxian,''--'') AS jiekuanrenpeiourenxianzhinianxian,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouyuegongzishouru)>0,t_jiekuanren.jiekuanrenpeiouyuegongzishouru,''--'') AS jiekuanrenpeiouyuegongzishouru,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang)>0,t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang,''--'') AS jiekuanrenpeiouchengxinxitongchaxunqingkuang,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang)>0,t_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang,''--'') AS jiekuanrenpeiouyuqijiluqingkuang,'+
          't_jiekuanren.jiatingyuezongshouru, t_jiekuanren.jiatingqitashourulaiyuan, t_jiekuanren.jiatingqitafuzhaijizhichu, t_jiekuanren.jiatingyuezhichu,'+
          't_jiekuanren.jiatingshouruzhenshixingjihelipingjia, t_jiekuanren.yinghangcunkuan,'+
          't_jiekuanren.jiekuanrengongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrendanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrendanweijianyaoshuoming) AS jiekuanrendanweiall,'+
          't_jiekuanren.jiekuanrenxianjuzhudizhi+IIf(isnull(t_jiekuanren.jiekuanrenxianjuzhudizhi2),'''',''，''+t_jiekuanren.jiekuanrenxianjuzhudizhi2) AS jiekuanrenxianjuzhudizhiall,'+
          't_jiekuanren.jiekuanrenpeiougongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming) AS jiekuanrenpeioudanweiall,'+
          't_jiekuanren.gongyangrenqingkuang, t_jiekuanren.jiatingrenkehuliushuihao, t_fangwu.pinggujiage+''元/㎡ ''+t_fangwu.pinggujiage2+''万'' AS pinggujiageall,'+
          't_fangwu.fangchangongyourenshenfenzhenghaoma, t_daikuan.yewubianhao, t_daikuan.diaocha, t_daikuan.gongjijinyuehuankuanezhanyueshourubili,'+
          't_daikuan.yinhangyuehuankuanezhanyueshourubili, CCUR(t_daikuan.daikuanjine)+CCUR(IIf(isNumeric(t_daikuan.gongjijindaikuanjine),t_daikuan.gongjijindaikuanjine,0)) AS daikuanjineall,'+
          'CCUR(IIf(isNumeric(t_daikuan.jiekuanrengongjijinjiaocune),t_daikuan.jiekuanrengongjijinjiaocune,0))+CCUR(IIf(isNumeric(t_daikuan.jiekuanrenpeiougongjijinjiaocune),'+
          't_daikuan.jiekuanrenpeiougongjijinjiaocune,0)) AS gongjijinjiaocune, t_fangwu.shoufangrenzhuzhi, t_fangwu.shoufangrendianhua, t_fangwu.shoufangrenchushenriqi,'+
          't_daikuan.dailiren, t_daikuan.dailirenshenfenzheng, t_daikuan.jiekuanrengongjijinjiaocune, t_daikuan.jiekuanrenpeiougongjijinjiaocune,'+
          'iif(len(t_jiekuanren.gongyangrenrenshu)>0,t_jiekuanren.gongyangrenrenshu,''--'') AS gongyangrenrenshu, t_fangwu.zhongjie, t_jiekuanren.jiatingrenkou, t_daikuan.diaocha1,'+
          't_daikuan.diaocha2, t_daikuan.danbaoren, t_daikuan.print1, t_daikuan.print2, t_daikuan.print3, t_daikuan.print4, t_daikuan.print5, t_daikuan.print6, t_daikuan.print7,'+
          't_daikuan.print8, t_daikuan.print9, t_daikuan.baodanhao, t_daikuan.fangdichantaxiangquanzhengbianhao, t_daikuan.yapinjieshuori, t_daikuan.fangkuanri, t_daikuan.yijiaori,'+
           't_fangwu.pinggubianhao, t_fangwu.louconggong, t_fangwu.chaoxiang, t_fangwu.pingmianbuju, t_fangwu.fangwujiegou+t_fangwu.chaoxiang as fangwujiegoujichaoxiang ,'+
          't_daikuan.jiekuanzhihangfuzeren, t_daikuan.jiekuanzhihangdizhi, t_daikuan.jiekuanzhihangdianhua, t_daikuan.dailirendianhua, '+
          't_fangwu.yingshougongbenfei, t_fangwu.yingshoupinggufei, t_fangwu.yingshoudanbaofei '+
          'FROM t_jiekuanren INNER JOIN (t_fangwu INNER JOIN (t_daikuan INNER JOIN t_main ON t_daikuan.mainid=t_main.id) ON t_fangwu.mainid=t_main.id) ON t_jiekuanren.mainid=t_main.id'
        , false);
  //更新版本号
  execsql('update t_ver set v = ''20091230''');
end;

procedure updateDB20100509;
begin
  execsql('alter table t_main add createUser varchar(50)', false);

  execsql('create table t_user (id COUNTER CONSTRAINT PrimaryKey PRIMARY KEY, [user] varchar(50), [pass] varchar(50), [admin] int default 0 )', false);

  //更新视图
  execsql('drop view viewall', false);
  execsql('create view viewall as '+
          'SELECT t_main.id, t_main.inputdate, t_main.lastUpdateTime, t_main.state, t_main.proxy, t_main.createUser, t_daikuan.xiangmubianhao, t_daikuan.jiekuanshijian, t_daikuan.jiekuanzhonglei, t_daikuan.jiekuanyongtu,'+
          't_daikuan.daikuanjine, t_daikuan.qixian, t_daikuan.lilv, t_daikuan.huankuanfangshi, t_daikuan.yunhuankuane, t_daikuan.toubaojine,'+
          't_daikuan.xianzhong, t_daikuan.shouyiren, t_daikuan.diyawumingcheng, t_daikuan.jiekuanrenxianzhufangquanshu, t_daikuan.jiekuanrencunzhezhanghao,'+
          't_daikuan.shoufangrencunzhezhanghao, t_daikuan.yuehuankuanezhanyueshourubili, t_daikuan.gongjijindaikuanjine, t_daikuan.yuejiaogongjijine, '+
          't_daikuan.gongjijindiyalv, t_daikuan.yinhangdiyalv, t_daikuan.gongjijinyuehuankuane, t_daikuan.qizhiriqi, t_daikuan.hetonghao, t_daikuan.yewubianhao,'+
          't_daikuan.diaocha, t_daikuan.gongjijinyuehuankuanezhanyueshourubili, t_daikuan.yinhangyuehuankuanezhanyueshourubili,'+
          'CCUR(t_daikuan.daikuanjine)+CCUR(IIf(isNumeric(t_daikuan.gongjijindaikuanjine),t_daikuan.gongjijindaikuanjine,0)) AS daikuanjineall, '+
          't_daikuan.jiekuanzhihang, t_daikuan.lilvfudongbeli, CCUR(IIf(isNumeric(t_daikuan.jiekuanrengongjijinjiaocune), '+
          't_daikuan.jiekuanrengongjijinjiaocune,0))+CCUR(IIf(isNumeric(t_daikuan.jiekuanrenpeiougongjijinjiaocune), '+
          't_daikuan.jiekuanrenpeiougongjijinjiaocune,0)) AS gongjijinjiaocune, t_daikuan.dailiren, t_daikuan.dailirenshenfenzheng,'+
          't_daikuan.jiekuanrengongjijinjiaocune, t_daikuan.jiekuanrenpeiougongjijinjiaocune, t_daikuan.diaocha1, t_daikuan.diaocha2, '+
          't_daikuan.danbaoren, t_daikuan.print1, t_daikuan.print2, t_daikuan.print3, t_daikuan.print4, t_daikuan.print5, t_daikuan.print6,  '+
          't_daikuan.print7, t_daikuan.print8, t_daikuan.fangdichantaxiangquanzhengbianhao, t_daikuan.yapinjieshuori, t_daikuan.fangkuanri, '+
          't_daikuan.yijiaori, t_fangwu.shoufangrenxingming, t_fangwu.shoufangrenxingbie, t_fangwu.shoufangrenshenfenzhenghaoma, t_fangwu.hunfou,  '+
          't_fangwu.shoufangrenpeiouxingming, t_fangwu.shoufangrenyupeiou, t_fangwu.fangchangongyourenxingming, t_fangwu.shifoutongyi,          '+
          't_fangwu.chanquanzhengbianhao, t_fangwu.fangwudiliweizhi, t_fangwu.fangwuhuanjing, t_fangwu.fangwulouyumingcheng, t_fangwu.fangwufanghao, '+
          't_fangwu.fangwujianchengniandai, t_fangwu.fangwuxingzhi, t_fangwu.fangwujianzhumianji, t_fangwu.fushufangwujianzhumianji, '+
          ' t_fangwu.loucong, t_fangwu.peitaosheshi, t_fangwu.tudiquanliqingkuang, t_fangwu.bianxiannenglipingjia,    '+
          't_fangwu.pinggujigoumingcheng, t_fangwu.pinggurenzizhi, t_fangwu.shifouzhunru, t_fangwu.gujiafangfa, t_fangwu.pinggujiage, t_fangwu.pinggujiage2, '+
          't_fangwu.jiagehelixingpingjia, t_daikuan.diyalv, t_fangwu.shoufukuanbili, t_fangwu.shoufukuanjine, t_fangwu.shoufouqiandinggoufanghetong,    '+
          't_fangwu.goufangyongtu, t_fangwu.jiaoyibeijingzhenshixingqueren, t_fangwu.xiangmumingcheng,                               '+
          't_fangwu.pinggujiage+''元/㎡ ''+t_fangwu.pinggujiage2+''万'' AS pinggujiageall, t_fangwu.fangwulouyumingcheng, t_fangwu.fangwufanghao, '+
          't_fangwu.shoufangrenzhuzhi, t_fangwu.shoufangrendianhua, t_fangwu.shoufangrenchushenriqi, t_fangwu.fangchangongyourenshenfenzhenghaoma,   '+
          't_fangwu.zhongjie, t_fangwu.fangwuleixing, t_jiekuanren.jiekuanrenxingming, t_jiekuanren.jiekuanrenxingbie, t_jiekuanren.jiekuanrennianling,  '+
          ' t_jiekuanren.jiekuanrenchushengnianyue, t_jiekuanren.jiekuanrenshenfenzhenghaoma, t_jiekuanren.jiekuanrenxueli, t_jiekuanren.jiekuanrenhunfou, '+
          't_jiekuanren.jiekuanrengongzuonianxian, t_jiekuanren.jiekuanrengongzuogangwei, t_jiekuanren.jiekuanrenrenxianzhinianxian,    '+
          't_jiekuanren.jiekuanrenjishuzige, t_jiekuanren.jiekuanrenyuegongzishouru, t_jiekuanren.jiekuanrengongzuodanwei,      '+
          't_jiekuanren.jiekuanrendanweijianyaoshuoming, t_jiekuanren.jiekuanrenguoji, t_jiekuanren.jiekuanrenyoubian,       '+
          't_jiekuanren.jiekuanrenxianjuzhudizhi, t_jiekuanren.jiekuanrenxianjuzhudizhi2, t_jiekuanren.jiekuanrendanweidianhua,    '+
          't_jiekuanren.jiekuanrendanweiyoubian, t_jiekuanren.jiekuanrendanweidizhi, t_jiekuanren.jiekuanrendanweixingzhi,      '+
          't_jiekuanren.jiekuanrenjiatingdianhua, t_jiekuanren.jiekuanrenshouji, t_jiekuanren.jiekuanrenchengxinxitongchaxunqingkuang, '+
          't_jiekuanren.jiekuanrenyuqijiluqingkuang, t_jiekuanren.jiekuanrenpeiouxingming, t_jiekuanren.jiekuanrenpeiouchushengnianyue,  '+
          't_jiekuanren.jiekuanrenpeiounianling, t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma, t_jiekuanren.jiekuanrenpeiougongzuodanwei,    '+
          't_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming, t_jiekuanren.jiekuanrenpeioudanweidianhua, t_jiekuanren.jiekuanrenpeioujiatingdianhua, '+
          't_jiekuanren.jiekuanrenpeiouxueli, t_jiekuanren.jiekuanrenpeiougongzuonianxian, t_jiekuanren.jiekuanrenpeioudanweidizhi,             '+
          't_jiekuanren.jiekuanrenpeioudanweixingzhi, t_jiekuanren.jiekuanrenpeioudanweiyoubian, t_jiekuanren.jiekuanrenpeiouzhicheng,       '+
          't_jiekuanren.jiekuanrenpeioushouji, t_jiekuanren.jiekuanrenpeiougongzuogangwei, t_jiekuanren.jiekuanrenpeiourenxianzhinianxian,    '+
          't_jiekuanren.jiekuanrenpeiouyuegongzishouru, t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang,                  '+
          't_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang, t_jiekuanren.jiatingyuezongshouru, t_jiekuanren.jiatingqitashourulaiyuan,   '+
          't_jiekuanren.jiatingqitafuzhaijizhichu, t_jiekuanren.jiatingyuezhichu, t_jiekuanren.jiatingshouruzhenshixingjihelipingjia,    '+
          't_jiekuanren.yinghangcunkuan, t_jiekuanren.jiekuanrengongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrendanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrendanweijianyaoshuoming) AS jiekuanrendanweiall,  '+
          't_jiekuanren.jiekuanrenxianjuzhudizhi+IIf(isnull(t_jiekuanren.jiekuanrenxianjuzhudizhi2),'''',''，''+t_jiekuanren.jiekuanrenxianjuzhudizhi2) AS jiekuanrenxianjuzhudizhiall,          '+
          't_jiekuanren.jiekuanrenpeiougongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming) AS jiekuanrenpeioudanweiall,  '+
          't_jiekuanren.gongyangrenqingkuang, t_jiekuanren.gongyangrenrenshu, t_jiekuanren.jiatingrenkou, t_jiekuanren.jiatingrenkehuliushuihao,'+
          't_fangwu.pinggubianhao, t_fangwu.louconggong, t_fangwu.fangwujiegou, t_fangwu.chaoxiang, t_fangwu.pingmianbuju, t_fangwu.fangwujiegou+t_fangwu.chaoxiang as fangwujiegoujichaoxiang,    '+
          't_daikuan.jiekuanzhihangfuzeren, t_daikuan.jiekuanzhihangdizhi, t_daikuan.jiekuanzhihangdianhua, t_daikuan.dailirendianhua, '+
          't_fangwu.yingshougongbenfei, t_fangwu.yingshoupinggufei, t_fangwu.yingshoudanbaofei '+
          'FROM t_jiekuanren INNER JOIN (t_fangwu INNER JOIN (t_daikuan INNER JOIN t_main ON t_daikuan.mainid=t_main.id) ON t_fangwu.mainid=t_main.id) ON t_jiekuanren.mainid=t_main.id'
          );
  execsql('drop view viewallforprint', false);
  execsql('create view viewallforprint as '+
          'SELECT t_main.id, t_main.inputdate, t_main.lastUpdateTime, t_main.state, t_main.proxy, t_main.createUser, IIf(len(t_daikuan.xiangmubianhao)>0,t_daikuan.xiangmubianhao,''--'') AS xiangmubianhao,'+
          't_daikuan.jiekuanshijian, t_daikuan.jiekuanzhonglei, t_daikuan.jiekuanyongtu, t_daikuan.daikuanjine, t_daikuan.qixian, t_daikuan.lilv,  '+
          't_daikuan.huankuanfangshi, t_daikuan.yunhuankuane, IIf(len(t_daikuan.toubaojine)>0,t_daikuan.toubaojine,''--'') AS toubaojine,   '+
          'IIf(len(t_daikuan.xianzhong)>0,t_daikuan.xianzhong,''--'') AS xianzhong, IIf(len(t_daikuan.shouyiren)>0,t_daikuan.shouyiren,''--'') AS shouyiren,  '+
          'IIf(len(t_daikuan.diyawumingcheng)>0,t_daikuan.diyawumingcheng,''--'') AS diyawumingcheng, IIf(len(t_daikuan.jiekuanrenxianzhufangquanshu)>0,   '+
          't_daikuan.jiekuanrenxianzhufangquanshu,''--'') AS jiekuanrenxianzhufangquanshu, IIf(len(t_daikuan.jiekuanrencunzhezhanghao)>0,    '+
          't_daikuan.jiekuanrencunzhezhanghao,''--'') AS jiekuanrencunzhezhanghao, IIf(len(t_daikuan.shoufangrencunzhezhanghao)>0,    '+
          't_daikuan.shoufangrencunzhezhanghao,''--'') AS shoufangrencunzhezhanghao, t_daikuan.yuehuankuanezhanyueshourubili,     '+
          'IIf(len(t_daikuan.gongjijindaikuanjine)>0,t_daikuan.gongjijindaikuanjine,''--'') AS gongjijindaikuanjine, t_daikuan.lilvfudongbeli, IIf(len(t_daikuan.yuejiaogongjijine)>0,'+
          't_daikuan.yuejiaogongjijine,''--'') AS yuejiaogongjijine, IIf(len(t_daikuan.gongjijindiyalv)>0,t_daikuan.gongjijindiyalv,''--'') AS gongjijindiyalv, t_daikuan.yinhangdiyalv,'+
          'IIf(len(t_daikuan.gongjijinyuehuankuane)>0,t_daikuan.gongjijinyuehuankuane,''--'') AS gongjijinyuehuankuane, t_daikuan.qizhiriqi, t_daikuan.hetonghao, t_daikuan.jiekuanzhihang,'+
          't_fangwu.shoufangrenxingming, t_fangwu.shoufangrenxingbie, t_fangwu.shoufangrenshenfenzhenghaoma, t_fangwu.hunfou, IIf(len(t_fangwu.shoufangrenpeiouxingming)>0,'+
          't_fangwu.shoufangrenpeiouxingming,''--'') AS shoufangrenpeiouxingming, IIf(len(t_fangwu.shoufangrenyupeiou)>0,t_fangwu.shoufangrenyupeiou,''--'') AS shoufangrenyupeiou,'+
          'IIf(len(t_fangwu.fangchangongyourenxingming)>0,t_fangwu.fangchangongyourenxingming,''--'') AS fangchangongyourenxingming, IIf(len(t_fangwu.shifoutongyi)>0,t_fangwu.shifoutongyi,''--'') AS shifoutongyi,'+
          'IIf(len(t_fangwu.chanquanzhengbianhao)>0,t_fangwu.chanquanzhengbianhao,''--'') AS chanquanzhengbianhao, t_fangwu.fangwudiliweizhi, t_fangwu.fangwuleixing,'+
          'IIf(len(t_fangwu.fangwuhuanjing)>0,t_fangwu.fangwuhuanjing,''--'') AS fangwuhuanjing, IIf(len(t_fangwu.fangwulouyumingcheng)>0,t_fangwu.fangwulouyumingcheng,''--'') AS fangwulouyumingcheng,'+
          'IIf(len(t_fangwu.fangwufanghao)>0,t_fangwu.fangwufanghao,''--'') AS fangwufanghao, t_fangwu.fangwujianchengniandai, t_fangwu.fangwuxingzhi,'+
          'IIf(len(t_fangwu.fangwujiegou)>0,t_fangwu.fangwujiegou,''--'') AS fangwujiegou, IIf(len(t_fangwu.fangwujianzhumianji)>0,t_fangwu.fangwujianzhumianji,''--'') AS fangwujianzhumianji,'+
          't_fangwu.fushufangwujianzhumianji, t_fangwu.loucong,  IIf(len(t_fangwu.peitaosheshi)>0,t_fangwu.peitaosheshi,''--'') AS peitaosheshi,'+
          't_fangwu.tudiquanliqingkuang, t_fangwu.bianxiannenglipingjia, t_fangwu.pinggujigoumingcheng, t_fangwu.pinggurenzizhi, t_fangwu.shifouzhunru, t_fangwu.gujiafangfa,'+
          't_fangwu.pinggujiage, t_fangwu.pinggujiage2, t_fangwu.jiagehelixingpingjia, t_daikuan.diyalv, t_fangwu.shoufukuanbili, t_fangwu.shoufukuanjine, t_fangwu.shoufouqiandinggoufanghetong,'+
          't_fangwu.goufangyongtu, t_fangwu.jiaoyibeijingzhenshixingqueren, t_fangwu.xiangmumingcheng, t_fangwu.fangwuleixing, t_jiekuanren.jiekuanrenxingming, t_jiekuanren.jiekuanrenxingbie,'+
          't_jiekuanren.jiekuanrennianling, t_jiekuanren.jiekuanrenchushengnianyue, t_jiekuanren.jiekuanrenshenfenzhenghaoma, t_jiekuanren.jiekuanrenhujisuozaidi,'+
          'IIf(len(t_jiekuanren.jiekuanrenxueli)>0,t_jiekuanren.jiekuanrenxueli,''--'') AS jiekuanrenxueli, t_jiekuanren.jiekuanrenhunfou, t_jiekuanren.jiekuanrengongzuonianxian,'+
          'IIf(len(t_jiekuanren.jiekuanrengongzuogangwei)>0,t_jiekuanren.jiekuanrengongzuogangwei,''--'') AS jiekuanrengongzuogangwei, t_jiekuanren.jiekuanrenrenxianzhinianxian,'+
          'IIf(len(t_jiekuanren.jiekuanrenjishuzige)>0,t_jiekuanren.jiekuanrenjishuzige,''--'') AS jiekuanrenjishuzige, t_jiekuanren.jiekuanrenyuegongzishouru,'+
          'IIf(len(t_jiekuanren.jiekuanrengongzuodanwei)>0,t_jiekuanren.jiekuanrengongzuodanwei,''--'') AS jiekuanrengongzuodanwei, IIf(len(t_jiekuanren.jiekuanrendanweijianyaoshuoming)>0,'+
          't_jiekuanren.jiekuanrendanweijianyaoshuoming,''--'') AS jiekuanrendanweijianyaoshuoming, t_jiekuanren.jiekuanrenguoji,'+
          'IIf(len(t_jiekuanren.jiekuanrenyoubian)>0,t_jiekuanren.jiekuanrenyoubian,''--'') AS jiekuanrenyoubian, IIf(len(t_jiekuanren.jiekuanrenxianjuzhudizhi)>0,'+
          't_jiekuanren.jiekuanrenxianjuzhudizhi,''--'') AS jiekuanrenxianjuzhudizhi, IIf(len(t_jiekuanren.jiekuanrenxianjuzhudizhi2)>0,t_jiekuanren.jiekuanrenxianjuzhudizhi2,''--'') AS jiekuanrenxianjuzhudizhi2,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweidianhua)>0,t_jiekuanren.jiekuanrendanweidianhua,''--'') AS jiekuanrendanweidianhua,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweiyoubian)>0,t_jiekuanren.jiekuanrendanweiyoubian,''--'') AS jiekuanrendanweiyoubian,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweidizhi)>0,t_jiekuanren.jiekuanrendanweidizhi,''--'') AS jiekuanrendanweidizhi,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweixingzhi)>0,t_jiekuanren.jiekuanrendanweixingzhi,''--'') AS jiekuanrendanweixingzhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenjiatingdianhua)>0,t_jiekuanren.jiekuanrenjiatingdianhua,''--'') AS jiekuanrenjiatingdianhua,'+
          'IIf(len(t_jiekuanren.jiekuanrenshouji)>0,t_jiekuanren.jiekuanrenshouji,''--'') AS jiekuanrenshouji, t_jiekuanren.jiekuanrenchengxinxitongchaxunqingkuang,'+
          't_jiekuanren.jiekuanrenyuqijiluqingkuang, iif(len(t_jiekuanren.jiekuanrenpeiouxingming)>0,t_jiekuanren.jiekuanrenpeiouxingming,''--'') AS jiekuanrenpeiouxingming,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouchushengnianyue)>0,t_jiekuanren.jiekuanrenpeiouchushengnianyue,''--'') AS jiekuanrenpeiouchushengnianyue,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiounianling)>0,t_jiekuanren.jiekuanrenpeiounianling,''--'') AS jiekuanrenpeiounianling,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma)>0,t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma,''--'') AS jiekuanrenpeioushenfenzhenghaoma,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuodanwei)>0,t_jiekuanren.jiekuanrenpeiougongzuodanwei,''--'') AS jiekuanrenpeiougongzuodanwei,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweidizhi)>0,t_jiekuanren.jiekuanrenpeioudanweidizhi,''--'') AS jiekuanrenpeioudanweidizhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweixingzhi)>0,t_jiekuanren.jiekuanrenpeioudanweixingzhi,''--'') AS jiekuanrenpeioudanweixingzhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweiyoubian)>0,t_jiekuanren.jiekuanrenpeioudanweiyoubian,''--'') AS jiekuanrenpeioudanweiyoubian,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeiouzhicheng)>0,t_jiekuanren.jiekuanrenpeiouzhicheng,''--'') AS jiekuanrenpeiouzhicheng,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioushouji)>0,t_jiekuanren.jiekuanrenpeioushouji,''--'') AS jiekuanrenpeioushouji,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming)>0,t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming,''--'') AS jiekuanrenpeioudanweijianyaoshuoming,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioudanweidianhua)>0,t_jiekuanren.jiekuanrenpeioudanweidianhua,''--'') AS jiekuanrenpeioudanweidianhua,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioujiatingdianhua)>0,t_jiekuanren.jiekuanrenpeioujiatingdianhua,''--'') AS jiekuanrenpeioujiatingdianhua,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouxueli)>0,t_jiekuanren.jiekuanrenpeiouxueli,''--'') AS jiekuanrenpeiouxueli,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuonianxian)>0,t_jiekuanren.jiekuanrenpeiougongzuonianxian,''--'') AS jiekuanrenpeiougongzuonianxian,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuogangwei)>0,t_jiekuanren.jiekuanrenpeiougongzuogangwei,''--'') AS jiekuanrenpeiougongzuogangwei,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiourenxianzhinianxian)>0,t_jiekuanren.jiekuanrenpeiourenxianzhinianxian,''--'') AS jiekuanrenpeiourenxianzhinianxian,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouyuegongzishouru)>0,t_jiekuanren.jiekuanrenpeiouyuegongzishouru,''--'') AS jiekuanrenpeiouyuegongzishouru,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang)>0,t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang,''--'') AS jiekuanrenpeiouchengxinxitongchaxunqingkuang,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang)>0,t_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang,''--'') AS jiekuanrenpeiouyuqijiluqingkuang,'+
          't_jiekuanren.jiatingyuezongshouru, t_jiekuanren.jiatingqitashourulaiyuan, t_jiekuanren.jiatingqitafuzhaijizhichu, t_jiekuanren.jiatingyuezhichu,'+
          't_jiekuanren.jiatingshouruzhenshixingjihelipingjia, t_jiekuanren.yinghangcunkuan,'+
          't_jiekuanren.jiekuanrengongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrendanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrendanweijianyaoshuoming) AS jiekuanrendanweiall,'+
          't_jiekuanren.jiekuanrenxianjuzhudizhi+IIf(isnull(t_jiekuanren.jiekuanrenxianjuzhudizhi2),'''',''，''+t_jiekuanren.jiekuanrenxianjuzhudizhi2) AS jiekuanrenxianjuzhudizhiall,'+
          't_jiekuanren.jiekuanrenpeiougongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming) AS jiekuanrenpeioudanweiall,'+
          't_jiekuanren.gongyangrenqingkuang, t_jiekuanren.jiatingrenkehuliushuihao, t_fangwu.pinggujiage+''元/㎡ ''+t_fangwu.pinggujiage2+''万'' AS pinggujiageall,'+
          't_fangwu.fangchangongyourenshenfenzhenghaoma, t_daikuan.yewubianhao, t_daikuan.diaocha, t_daikuan.gongjijinyuehuankuanezhanyueshourubili,'+
          't_daikuan.yinhangyuehuankuanezhanyueshourubili, CCUR(t_daikuan.daikuanjine)+CCUR(IIf(isNumeric(t_daikuan.gongjijindaikuanjine),t_daikuan.gongjijindaikuanjine,0)) AS daikuanjineall,'+
          'CCUR(IIf(isNumeric(t_daikuan.jiekuanrengongjijinjiaocune),t_daikuan.jiekuanrengongjijinjiaocune,0))+CCUR(IIf(isNumeric(t_daikuan.jiekuanrenpeiougongjijinjiaocune),'+
          't_daikuan.jiekuanrenpeiougongjijinjiaocune,0)) AS gongjijinjiaocune, t_fangwu.shoufangrenzhuzhi, t_fangwu.shoufangrendianhua, t_fangwu.shoufangrenchushenriqi,'+
          't_daikuan.dailiren, t_daikuan.dailirenshenfenzheng, t_daikuan.jiekuanrengongjijinjiaocune, t_daikuan.jiekuanrenpeiougongjijinjiaocune,'+
          'iif(len(t_jiekuanren.gongyangrenrenshu)>0,t_jiekuanren.gongyangrenrenshu,''--'') AS gongyangrenrenshu, t_fangwu.zhongjie, t_jiekuanren.jiatingrenkou, t_daikuan.diaocha1,'+
          't_daikuan.diaocha2, t_daikuan.danbaoren, t_daikuan.print1, t_daikuan.print2, t_daikuan.print3, t_daikuan.print4, t_daikuan.print5, t_daikuan.print6, t_daikuan.print7,'+
          't_daikuan.print8, t_daikuan.print9, t_daikuan.baodanhao, t_daikuan.fangdichantaxiangquanzhengbianhao, t_daikuan.yapinjieshuori, t_daikuan.fangkuanri, t_daikuan.yijiaori,'+
           't_fangwu.pinggubianhao, t_fangwu.louconggong, t_fangwu.chaoxiang, t_fangwu.pingmianbuju, t_fangwu.fangwujiegou+t_fangwu.chaoxiang as fangwujiegoujichaoxiang ,'+
          't_daikuan.jiekuanzhihangfuzeren, t_daikuan.jiekuanzhihangdizhi, t_daikuan.jiekuanzhihangdianhua, t_daikuan.dailirendianhua, '+
          't_fangwu.yingshougongbenfei, t_fangwu.yingshoupinggufei, t_fangwu.yingshoudanbaofei '+
          'FROM t_jiekuanren INNER JOIN (t_fangwu INNER JOIN (t_daikuan INNER JOIN t_main ON t_daikuan.mainid=t_main.id) ON t_fangwu.mainid=t_main.id) ON t_jiekuanren.mainid=t_main.id'
        , false);
  //更新版本号
  execsql('update t_ver set v = ''20100509''');
end;

procedure updateDB20091209;
begin
  //t_main lastUpdateTime ,state , proxy
  execsql('alter table t_main add lastUpdateTime varchar(50) ', false);
  execsql('alter table t_main add state varchar(100) ', false);
  execsql('alter table t_main add proxy varchar(100) ', false);
  //t_ver lastExportTime
  execsql('alter table t_ver add lastExportTime varchar(50) ', false);
  //更新版本号
  execsql('update t_ver set v = ''20091209''');
end;

procedure updateDB20091130;
begin
  //1.创建版本库，初始化版本号
  execsql('create table t_ver(v varchar(8))', false);
  execsql('insert into t_ver (v) values(''20091130'')', false);
  //2.t_dict添加 remark varchar(200) 插件新记录评估流水号
  execsql('alter table t_dict add remark varchar(200)', false);
  execsql('insert into t_dict (leixing, [value], [remark]) values (''评估流水号'',''1600'',''每保存一条自动加1'')', false);
  //3.t_fangwu 添加 pinggubianhao varchar(50)   louconggong varchar(50)  fangwujiegoujichaoxiang rename fangwujiegou
  //chaoxiang varchar(50)
  execsql('alter table t_fangwu add pinggubianhao varchar(50) ', false);
  execsql('alter table t_fangwu add louconggong varchar(50) ', false);
  execsql('update t_fangwu set fangwujiegou = fangwujiegoujichaoxiang ', false);
  execsql('alter table t_fangwu drop fangwujiegoujichaoxiang ', false);
  execsql('alter table t_fangwu add chaoxiang varchar(50) ', false);
  execsql('alter table t_fangwu add pingmianbuju varchar(50) ', false);

  //更新视图
  execsql('drop view viewall', false);
  execsql('create view viewall as '+
          'SELECT t_main.id, t_main.inputdate, t_daikuan.xiangmubianhao, t_daikuan.jiekuanshijian, t_daikuan.jiekuanzhonglei, t_daikuan.jiekuanyongtu,'+
          't_daikuan.daikuanjine, t_daikuan.qixian, t_daikuan.lilv, t_daikuan.huankuanfangshi, t_daikuan.yunhuankuane, t_daikuan.toubaojine,'+
          't_daikuan.xianzhong, t_daikuan.shouyiren, t_daikuan.diyawumingcheng, t_daikuan.jiekuanrenxianzhufangquanshu, t_daikuan.jiekuanrencunzhezhanghao,'+
          't_daikuan.shoufangrencunzhezhanghao, t_daikuan.yuehuankuanezhanyueshourubili, t_daikuan.gongjijindaikuanjine, t_daikuan.yuejiaogongjijine, '+
          't_daikuan.gongjijindiyalv, t_daikuan.yinhangdiyalv, t_daikuan.gongjijinyuehuankuane, t_daikuan.qizhiriqi, t_daikuan.hetonghao, t_daikuan.yewubianhao,'+
          't_daikuan.diaocha, t_daikuan.gongjijinyuehuankuanezhanyueshourubili, t_daikuan.yinhangyuehuankuanezhanyueshourubili,'+
          'CCUR(t_daikuan.daikuanjine)+CCUR(IIf(isNumeric(t_daikuan.gongjijindaikuanjine),t_daikuan.gongjijindaikuanjine,0)) AS daikuanjineall, '+
          't_daikuan.jiekuanzhihang, t_daikuan.lilvfudongbeli, CCUR(IIf(isNumeric(t_daikuan.jiekuanrengongjijinjiaocune), '+
          't_daikuan.jiekuanrengongjijinjiaocune,0))+CCUR(IIf(isNumeric(t_daikuan.jiekuanrenpeiougongjijinjiaocune), '+
          't_daikuan.jiekuanrenpeiougongjijinjiaocune,0)) AS gongjijinjiaocune, t_daikuan.dailiren, t_daikuan.dailirenshenfenzheng,'+
          't_daikuan.jiekuanrengongjijinjiaocune, t_daikuan.jiekuanrenpeiougongjijinjiaocune, t_daikuan.diaocha1, t_daikuan.diaocha2, '+
          't_daikuan.danbaoren, t_daikuan.print1, t_daikuan.print2, t_daikuan.print3, t_daikuan.print4, t_daikuan.print5, t_daikuan.print6,  '+
          't_daikuan.print7, t_daikuan.print8, t_daikuan.fangdichantaxiangquanzhengbianhao, t_daikuan.yapinjieshuori, t_daikuan.fangkuanri, '+
          't_daikuan.yijiaori, t_fangwu.shoufangrenxingming, t_fangwu.shoufangrenxingbie, t_fangwu.shoufangrenshenfenzhenghaoma, t_fangwu.hunfou,  '+
          't_fangwu.shoufangrenpeiouxingming, t_fangwu.shoufangrenyupeiou, t_fangwu.fangchangongyourenxingming, t_fangwu.shifoutongyi,          '+
          't_fangwu.chanquanzhengbianhao, t_fangwu.fangwudiliweizhi, t_fangwu.fangwuhuanjing, t_fangwu.fangwulouyumingcheng, t_fangwu.fangwufanghao, '+
          't_fangwu.fangwujianchengniandai, t_fangwu.fangwuxingzhi, t_fangwu.fangwujianzhumianji, t_fangwu.fushufangwujianzhumianji, '+
          ' t_fangwu.loucong, t_fangwu.peitaosheshi, t_fangwu.tudiquanliqingkuang, t_fangwu.bianxiannenglipingjia,    '+
          't_fangwu.pinggujigoumingcheng, t_fangwu.pinggurenzizhi, t_fangwu.shifouzhunru, t_fangwu.gujiafangfa, t_fangwu.pinggujiage, t_fangwu.pinggujiage2, '+
          't_fangwu.jiagehelixingpingjia, t_daikuan.diyalv, t_fangwu.shoufukuanbili, t_fangwu.shoufukuanjine, t_fangwu.shoufouqiandinggoufanghetong,    '+
          't_fangwu.goufangyongtu, t_fangwu.jiaoyibeijingzhenshixingqueren, t_fangwu.xiangmumingcheng,                               '+
          't_fangwu.pinggujiage+''元/㎡ ''+t_fangwu.pinggujiage2+''万'' AS pinggujiageall, t_fangwu.fangwulouyumingcheng, t_fangwu.fangwufanghao, '+
          't_fangwu.shoufangrenzhuzhi, t_fangwu.shoufangrendianhua, t_fangwu.shoufangrenchushenriqi, t_fangwu.fangchangongyourenshenfenzhenghaoma,   '+
          't_fangwu.zhongjie, t_fangwu.fangwuleixing, t_jiekuanren.jiekuanrenxingming, t_jiekuanren.jiekuanrenxingbie, t_jiekuanren.jiekuanrennianling,  '+
          ' t_jiekuanren.jiekuanrenchushengnianyue, t_jiekuanren.jiekuanrenshenfenzhenghaoma, t_jiekuanren.jiekuanrenxueli, t_jiekuanren.jiekuanrenhunfou, '+
          't_jiekuanren.jiekuanrengongzuonianxian, t_jiekuanren.jiekuanrengongzuogangwei, t_jiekuanren.jiekuanrenrenxianzhinianxian,    '+
          't_jiekuanren.jiekuanrenjishuzige, t_jiekuanren.jiekuanrenyuegongzishouru, t_jiekuanren.jiekuanrengongzuodanwei,      '+
          't_jiekuanren.jiekuanrendanweijianyaoshuoming, t_jiekuanren.jiekuanrenguoji, t_jiekuanren.jiekuanrenyoubian,       '+
          't_jiekuanren.jiekuanrenxianjuzhudizhi, t_jiekuanren.jiekuanrenxianjuzhudizhi2, t_jiekuanren.jiekuanrendanweidianhua,    '+
          't_jiekuanren.jiekuanrendanweiyoubian, t_jiekuanren.jiekuanrendanweidizhi, t_jiekuanren.jiekuanrendanweixingzhi,      '+
          't_jiekuanren.jiekuanrenjiatingdianhua, t_jiekuanren.jiekuanrenshouji, t_jiekuanren.jiekuanrenchengxinxitongchaxunqingkuang, '+
          't_jiekuanren.jiekuanrenyuqijiluqingkuang, t_jiekuanren.jiekuanrenpeiouxingming, t_jiekuanren.jiekuanrenpeiouchushengnianyue,  '+
          't_jiekuanren.jiekuanrenpeiounianling, t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma, t_jiekuanren.jiekuanrenpeiougongzuodanwei,    '+
          't_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming, t_jiekuanren.jiekuanrenpeioudanweidianhua, t_jiekuanren.jiekuanrenpeioujiatingdianhua, '+
          't_jiekuanren.jiekuanrenpeiouxueli, t_jiekuanren.jiekuanrenpeiougongzuonianxian, t_jiekuanren.jiekuanrenpeioudanweidizhi,             '+
          't_jiekuanren.jiekuanrenpeioudanweixingzhi, t_jiekuanren.jiekuanrenpeioudanweiyoubian, t_jiekuanren.jiekuanrenpeiouzhicheng,       '+
          't_jiekuanren.jiekuanrenpeioushouji, t_jiekuanren.jiekuanrenpeiougongzuogangwei, t_jiekuanren.jiekuanrenpeiourenxianzhinianxian,    '+
          't_jiekuanren.jiekuanrenpeiouyuegongzishouru, t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang,                  '+
          't_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang, t_jiekuanren.jiatingyuezongshouru, t_jiekuanren.jiatingqitashourulaiyuan,   '+
          't_jiekuanren.jiatingqitafuzhaijizhichu, t_jiekuanren.jiatingyuezhichu, t_jiekuanren.jiatingshouruzhenshixingjihelipingjia,    '+
          't_jiekuanren.yinghangcunkuan, t_jiekuanren.jiekuanrengongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrendanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrendanweijianyaoshuoming) AS jiekuanrendanweiall,  '+
          't_jiekuanren.jiekuanrenxianjuzhudizhi+IIf(isnull(t_jiekuanren.jiekuanrenxianjuzhudizhi2),'''',''，''+t_jiekuanren.jiekuanrenxianjuzhudizhi2) AS jiekuanrenxianjuzhudizhiall,          '+
          't_jiekuanren.jiekuanrenpeiougongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming) AS jiekuanrenpeioudanweiall,  '+
          't_jiekuanren.gongyangrenqingkuang, t_jiekuanren.gongyangrenrenshu, t_jiekuanren.jiatingrenkou, t_jiekuanren.jiatingrenkehuliushuihao,'+
          't_fangwu.pinggubianhao, t_fangwu.louconggong, t_fangwu.fangwujiegou, t_fangwu.chaoxiang, t_fangwu.pingmianbuju, t_fangwu.fangwujiegou+t_fangwu.chaoxiang as fangwujiegoujichaoxiang    '+
          'FROM t_jiekuanren INNER JOIN (t_fangwu INNER JOIN (t_daikuan INNER JOIN t_main ON t_daikuan.mainid=t_main.id) ON t_fangwu.mainid=t_main.id) ON t_jiekuanren.mainid=t_main.id'
          ,false);
  execsql('drop view viewallforprint', false);
  execsql('create view viewallforprint as '+
          'SELECT t_main.id, t_main.inputdate, IIf(len(t_daikuan.xiangmubianhao)>0,t_daikuan.xiangmubianhao,''--'') AS xiangmubianhao,'+
          't_daikuan.jiekuanshijian, t_daikuan.jiekuanzhonglei, t_daikuan.jiekuanyongtu, t_daikuan.daikuanjine, t_daikuan.qixian, t_daikuan.lilv,  '+
          't_daikuan.huankuanfangshi, t_daikuan.yunhuankuane, IIf(len(t_daikuan.toubaojine)>0,t_daikuan.toubaojine,''--'') AS toubaojine,   '+
          'IIf(len(t_daikuan.xianzhong)>0,t_daikuan.xianzhong,''--'') AS xianzhong, IIf(len(t_daikuan.shouyiren)>0,t_daikuan.shouyiren,''--'') AS shouyiren,  '+
          'IIf(len(t_daikuan.diyawumingcheng)>0,t_daikuan.diyawumingcheng,''--'') AS diyawumingcheng, IIf(len(t_daikuan.jiekuanrenxianzhufangquanshu)>0,   '+
          't_daikuan.jiekuanrenxianzhufangquanshu,''--'') AS jiekuanrenxianzhufangquanshu, IIf(len(t_daikuan.jiekuanrencunzhezhanghao)>0,    '+
          't_daikuan.jiekuanrencunzhezhanghao,''--'') AS jiekuanrencunzhezhanghao, IIf(len(t_daikuan.shoufangrencunzhezhanghao)>0,    '+
          't_daikuan.shoufangrencunzhezhanghao,''--'') AS shoufangrencunzhezhanghao, t_daikuan.yuehuankuanezhanyueshourubili,     '+
          'IIf(len(t_daikuan.gongjijindaikuanjine)>0,t_daikuan.gongjijindaikuanjine,''--'') AS gongjijindaikuanjine, t_daikuan.lilvfudongbeli, IIf(len(t_daikuan.yuejiaogongjijine)>0,'+
          't_daikuan.yuejiaogongjijine,''--'') AS yuejiaogongjijine, IIf(len(t_daikuan.gongjijindiyalv)>0,t_daikuan.gongjijindiyalv,''--'') AS gongjijindiyalv, t_daikuan.yinhangdiyalv,'+
          'IIf(len(t_daikuan.gongjijinyuehuankuane)>0,t_daikuan.gongjijinyuehuankuane,''--'') AS gongjijinyuehuankuane, t_daikuan.qizhiriqi, t_daikuan.hetonghao, t_daikuan.jiekuanzhihang,'+
          't_fangwu.shoufangrenxingming, t_fangwu.shoufangrenxingbie, t_fangwu.shoufangrenshenfenzhenghaoma, t_fangwu.hunfou, IIf(len(t_fangwu.shoufangrenpeiouxingming)>0,'+
          't_fangwu.shoufangrenpeiouxingming,''--'') AS shoufangrenpeiouxingming, IIf(len(t_fangwu.shoufangrenyupeiou)>0,t_fangwu.shoufangrenyupeiou,''--'') AS shoufangrenyupeiou,'+
          'IIf(len(t_fangwu.fangchangongyourenxingming)>0,t_fangwu.fangchangongyourenxingming,''--'') AS fangchangongyourenxingming, IIf(len(t_fangwu.shifoutongyi)>0,t_fangwu.shifoutongyi,''--'') AS shifoutongyi,'+
          'IIf(len(t_fangwu.chanquanzhengbianhao)>0,t_fangwu.chanquanzhengbianhao,''--'') AS chanquanzhengbianhao, t_fangwu.fangwudiliweizhi, t_fangwu.fangwuleixing,'+
          'IIf(len(t_fangwu.fangwuhuanjing)>0,t_fangwu.fangwuhuanjing,''--'') AS fangwuhuanjing, IIf(len(t_fangwu.fangwulouyumingcheng)>0,t_fangwu.fangwulouyumingcheng,''--'') AS fangwulouyumingcheng,'+
          'IIf(len(t_fangwu.fangwufanghao)>0,t_fangwu.fangwufanghao,''--'') AS fangwufanghao, t_fangwu.fangwujianchengniandai, t_fangwu.fangwuxingzhi,'+
          'IIf(len(t_fangwu.fangwujiegou)>0,t_fangwu.fangwujiegou,''--'') AS fangwujiegou, IIf(len(t_fangwu.fangwujianzhumianji)>0,t_fangwu.fangwujianzhumianji,''--'') AS fangwujianzhumianji,'+
          't_fangwu.fushufangwujianzhumianji, t_fangwu.loucong,  IIf(len(t_fangwu.peitaosheshi)>0,t_fangwu.peitaosheshi,''--'') AS peitaosheshi,'+
          't_fangwu.tudiquanliqingkuang, t_fangwu.bianxiannenglipingjia, t_fangwu.pinggujigoumingcheng, t_fangwu.pinggurenzizhi, t_fangwu.shifouzhunru, t_fangwu.gujiafangfa,'+
          't_fangwu.pinggujiage, t_fangwu.pinggujiage2, t_fangwu.jiagehelixingpingjia, t_daikuan.diyalv, t_fangwu.shoufukuanbili, t_fangwu.shoufukuanjine, t_fangwu.shoufouqiandinggoufanghetong,'+
          't_fangwu.goufangyongtu, t_fangwu.jiaoyibeijingzhenshixingqueren, t_fangwu.xiangmumingcheng, t_fangwu.fangwuleixing, t_jiekuanren.jiekuanrenxingming, t_jiekuanren.jiekuanrenxingbie,'+
          't_jiekuanren.jiekuanrennianling, t_jiekuanren.jiekuanrenchushengnianyue, t_jiekuanren.jiekuanrenshenfenzhenghaoma, t_jiekuanren.jiekuanrenhujisuozaidi,'+
          'IIf(len(t_jiekuanren.jiekuanrenxueli)>0,t_jiekuanren.jiekuanrenxueli,''--'') AS jiekuanrenxueli, t_jiekuanren.jiekuanrenhunfou, t_jiekuanren.jiekuanrengongzuonianxian,'+
          'IIf(len(t_jiekuanren.jiekuanrengongzuogangwei)>0,t_jiekuanren.jiekuanrengongzuogangwei,''--'') AS jiekuanrengongzuogangwei, t_jiekuanren.jiekuanrenrenxianzhinianxian,'+
          'IIf(len(t_jiekuanren.jiekuanrenjishuzige)>0,t_jiekuanren.jiekuanrenjishuzige,''--'') AS jiekuanrenjishuzige, t_jiekuanren.jiekuanrenyuegongzishouru,'+
          'IIf(len(t_jiekuanren.jiekuanrengongzuodanwei)>0,t_jiekuanren.jiekuanrengongzuodanwei,''--'') AS jiekuanrengongzuodanwei, IIf(len(t_jiekuanren.jiekuanrendanweijianyaoshuoming)>0,'+
          't_jiekuanren.jiekuanrendanweijianyaoshuoming,''--'') AS jiekuanrendanweijianyaoshuoming, t_jiekuanren.jiekuanrenguoji,'+
          'IIf(len(t_jiekuanren.jiekuanrenyoubian)>0,t_jiekuanren.jiekuanrenyoubian,''--'') AS jiekuanrenyoubian, IIf(len(t_jiekuanren.jiekuanrenxianjuzhudizhi)>0,'+
          't_jiekuanren.jiekuanrenxianjuzhudizhi,''--'') AS jiekuanrenxianjuzhudizhi, IIf(len(t_jiekuanren.jiekuanrenxianjuzhudizhi2)>0,t_jiekuanren.jiekuanrenxianjuzhudizhi2,''--'') AS jiekuanrenxianjuzhudizhi2,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweidianhua)>0,t_jiekuanren.jiekuanrendanweidianhua,''--'') AS jiekuanrendanweidianhua,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweiyoubian)>0,t_jiekuanren.jiekuanrendanweiyoubian,''--'') AS jiekuanrendanweiyoubian,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweidizhi)>0,t_jiekuanren.jiekuanrendanweidizhi,''--'') AS jiekuanrendanweidizhi,'+
          'IIf(len(t_jiekuanren.jiekuanrendanweixingzhi)>0,t_jiekuanren.jiekuanrendanweixingzhi,''--'') AS jiekuanrendanweixingzhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenjiatingdianhua)>0,t_jiekuanren.jiekuanrenjiatingdianhua,''--'') AS jiekuanrenjiatingdianhua,'+
          'IIf(len(t_jiekuanren.jiekuanrenshouji)>0,t_jiekuanren.jiekuanrenshouji,''--'') AS jiekuanrenshouji, t_jiekuanren.jiekuanrenchengxinxitongchaxunqingkuang,'+
          't_jiekuanren.jiekuanrenyuqijiluqingkuang, iif(len(t_jiekuanren.jiekuanrenpeiouxingming)>0,t_jiekuanren.jiekuanrenpeiouxingming,''--'') AS jiekuanrenpeiouxingming,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouchushengnianyue)>0,t_jiekuanren.jiekuanrenpeiouchushengnianyue,''--'') AS jiekuanrenpeiouchushengnianyue,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiounianling)>0,t_jiekuanren.jiekuanrenpeiounianling,''--'') AS jiekuanrenpeiounianling,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma)>0,t_jiekuanren.jiekuanrenpeioushenfenzhenghaoma,''--'') AS jiekuanrenpeioushenfenzhenghaoma,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuodanwei)>0,t_jiekuanren.jiekuanrenpeiougongzuodanwei,''--'') AS jiekuanrenpeiougongzuodanwei,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweidizhi)>0,t_jiekuanren.jiekuanrenpeioudanweidizhi,''--'') AS jiekuanrenpeioudanweidizhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweixingzhi)>0,t_jiekuanren.jiekuanrenpeioudanweixingzhi,''--'') AS jiekuanrenpeioudanweixingzhi,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioudanweiyoubian)>0,t_jiekuanren.jiekuanrenpeioudanweiyoubian,''--'') AS jiekuanrenpeioudanweiyoubian,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeiouzhicheng)>0,t_jiekuanren.jiekuanrenpeiouzhicheng,''--'') AS jiekuanrenpeiouzhicheng,'+
          'IIf(len(t_jiekuanren.jiekuanrenpeioushouji)>0,t_jiekuanren.jiekuanrenpeioushouji,''--'') AS jiekuanrenpeioushouji,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming)>0,t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming,''--'') AS jiekuanrenpeioudanweijianyaoshuoming,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioudanweidianhua)>0,t_jiekuanren.jiekuanrenpeioudanweidianhua,''--'') AS jiekuanrenpeioudanweidianhua,'+
          'iif(len(t_jiekuanren.jiekuanrenpeioujiatingdianhua)>0,t_jiekuanren.jiekuanrenpeioujiatingdianhua,''--'') AS jiekuanrenpeioujiatingdianhua,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouxueli)>0,t_jiekuanren.jiekuanrenpeiouxueli,''--'') AS jiekuanrenpeiouxueli,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuonianxian)>0,t_jiekuanren.jiekuanrenpeiougongzuonianxian,''--'') AS jiekuanrenpeiougongzuonianxian,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiougongzuogangwei)>0,t_jiekuanren.jiekuanrenpeiougongzuogangwei,''--'') AS jiekuanrenpeiougongzuogangwei,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiourenxianzhinianxian)>0,t_jiekuanren.jiekuanrenpeiourenxianzhinianxian,''--'') AS jiekuanrenpeiourenxianzhinianxian,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouyuegongzishouru)>0,t_jiekuanren.jiekuanrenpeiouyuegongzishouru,''--'') AS jiekuanrenpeiouyuegongzishouru,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang)>0,t_jiekuanren.jiekuanrenpeiouchengxinxitongchaxunqingkuang,''--'') AS jiekuanrenpeiouchengxinxitongchaxunqingkuang,'+
          'iif(len(t_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang)>0,t_jiekuanren.jiekuanrenpeiouyuqijiluqingkuang,''--'') AS jiekuanrenpeiouyuqijiluqingkuang,'+
          't_jiekuanren.jiatingyuezongshouru, t_jiekuanren.jiatingqitashourulaiyuan, t_jiekuanren.jiatingqitafuzhaijizhichu, t_jiekuanren.jiatingyuezhichu,'+
          't_jiekuanren.jiatingshouruzhenshixingjihelipingjia, t_jiekuanren.yinghangcunkuan,'+
          't_jiekuanren.jiekuanrengongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrendanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrendanweijianyaoshuoming) AS jiekuanrendanweiall,'+
          't_jiekuanren.jiekuanrenxianjuzhudizhi+IIf(isnull(t_jiekuanren.jiekuanrenxianjuzhudizhi2),'''',''，''+t_jiekuanren.jiekuanrenxianjuzhudizhi2) AS jiekuanrenxianjuzhudizhiall,'+
          't_jiekuanren.jiekuanrenpeiougongzuodanwei+IIf(isnull(t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming),'''',''，''+t_jiekuanren.jiekuanrenpeioudanweijianyaoshuoming) AS jiekuanrenpeioudanweiall,'+
          't_jiekuanren.gongyangrenqingkuang, t_jiekuanren.jiatingrenkehuliushuihao, t_fangwu.pinggujiage+''元/㎡ ''+t_fangwu.pinggujiage2+''万'' AS pinggujiageall,'+
          't_fangwu.fangchangongyourenshenfenzhenghaoma, t_daikuan.yewubianhao, t_daikuan.diaocha, t_daikuan.gongjijinyuehuankuanezhanyueshourubili,'+
          't_daikuan.yinhangyuehuankuanezhanyueshourubili, CCUR(t_daikuan.daikuanjine)+CCUR(IIf(isNumeric(t_daikuan.gongjijindaikuanjine),t_daikuan.gongjijindaikuanjine,0)) AS daikuanjineall,'+
          'CCUR(IIf(isNumeric(t_daikuan.jiekuanrengongjijinjiaocune),t_daikuan.jiekuanrengongjijinjiaocune,0))+CCUR(IIf(isNumeric(t_daikuan.jiekuanrenpeiougongjijinjiaocune),'+
          't_daikuan.jiekuanrenpeiougongjijinjiaocune,0)) AS gongjijinjiaocune, t_fangwu.shoufangrenzhuzhi, t_fangwu.shoufangrendianhua, t_fangwu.shoufangrenchushenriqi,'+
          't_daikuan.dailiren, t_daikuan.dailirenshenfenzheng, t_daikuan.jiekuanrengongjijinjiaocune, t_daikuan.jiekuanrenpeiougongjijinjiaocune,'+
          'iif(len(t_jiekuanren.gongyangrenrenshu)>0,t_jiekuanren.gongyangrenrenshu,''--'') AS gongyangrenrenshu, t_fangwu.zhongjie, t_jiekuanren.jiatingrenkou, t_daikuan.diaocha1,'+
          't_daikuan.diaocha2, t_daikuan.danbaoren, t_daikuan.print1, t_daikuan.print2, t_daikuan.print3, t_daikuan.print4, t_daikuan.print5, t_daikuan.print6, t_daikuan.print7,'+
          't_daikuan.print8, t_daikuan.print9, t_daikuan.baodanhao, t_daikuan.fangdichantaxiangquanzhengbianhao, t_daikuan.yapinjieshuori, t_daikuan.fangkuanri, t_daikuan.yijiaori,'+
           't_fangwu.pinggubianhao, t_fangwu.louconggong, t_fangwu.chaoxiang, t_fangwu.pingmianbuju, t_fangwu.fangwujiegou+t_fangwu.chaoxiang as fangwujiegoujichaoxiang                                                  '+
          'FROM t_jiekuanren INNER JOIN (t_fangwu INNER JOIN (t_daikuan INNER JOIN t_main ON t_daikuan.mainid=t_main.id) ON t_fangwu.mainid=t_main.id) ON t_jiekuanren.mainid=t_main.id'
        ,false);
end;

end.
