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


{�ɰ�CCAS
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

    //CCAS_PLAATRN.CBICUSNM ����
    msgs.Add('CCAS_PLAATRN.CBICUSNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingming').AsString);
    //CCAS_PLAATRN.CBISEXID �Ա�
    msgs.Add('CCAS_PLAATRN.CBISEXID='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingbie').AsString);
    //CCAS_PLAATRN.CBIBTHDA ��������
    try
      msgs.Add('CCAS_PLAATRN.CBIBTHDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenchushengnianyue').AsDateTime));
    except
    end;
    //CCAS_PLAATRN.LCLIVEYRLMT �־�סʱ��
    msgs.Add('CCAS_PLAATRN.LCLIVEYRLMT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhushijian').AsString);
    //CCAS_PLAATRN.CBICERTY ֤�����
    msgs.Add('CCAS_PLAATRN.CBICERTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenzhengjianleibie').AsString);
    //CCAS_PLAATRN.CBICERNO ֤������
    msgs.Add('CCAS_PLAATRN.CBICERNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    //CCAS_PLAATRN.CBICTADD ͨѶ��ַ
    msgs.Add('CCAS_PLAATRN.CBICTADD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    //CCAS_PLAATRN.CBIPSTCD ��������
    msgs.Add('CCAS_PLAATRN.CBIPSTCD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyoubian').AsString);
    //CCAS_PLAATRN.PERHMTEL סլ�绰
    msgs.Add('CCAS_PLAATRN.PERHMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjiatingdianhua').AsString);
    //CCAS_PLAATRN.PERMBLNO �ֻ�����
    msgs.Add('CCAS_PLAATRN.PERMBLNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenshouji').AsString);
    //CCAS_PLAATRN.PERHOMAD ��ס��ַ
    msgs.Add('CCAS_PLAATRN.PERHOMAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    //CCAS_PLAATRN.PERCMTEL ��λ�绰
    msgs.Add('CCAS_PLAATRN.PERCMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidianhua').AsString);
    //CCAS_PLAATRN.OTHERTEL �����绰
    //CCAS_PLAATRN.CUSDMCLR �������ڵ�
    msgs.Add('CCAS_PLAATRN.CUSDMCLR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhujisuozaidi').AsString);
    //CCAS_PLAATRN.PEREDUBK �����̶�
    msgs.Add('CCAS_PLAATRN.PEREDUBK='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxueli').AsString);
    //CCAS_PLAATRN.LIVESTUS ��ס״��
    msgs.Add('CCAS_PLAATRN.LIVESTUS='+FrmEdt.ATDaiKuan.FieldByName('jiekuanrenxianzhufangquanshu').AsString);
    //CCAS_PLAATRN.PERWOKDA �μӹ���ʱ��
    msgs.Add('CCAS_PLAATRN.PERWOKDA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuonianxian').AsString);
    //CCAS_PLAATRN.PERNWKDA ��ְ����
    msgs.Add('CCAS_PLAATRN.PERNWKDA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenrenxianzhinianxian').AsString);
    //CCAS_PLAATRN.PERCMPNM �ֹ�����λ
    msgs.Add('CCAS_PLAATRN.PERCMPNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanwei').AsString);
    //CCAS_PLAATRN.WKIBUSTY ��λ������ҵ
    msgs.Add('CCAS_PLAATRN.WKIBUSTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweisuoshuhangye').AsString);
    //CCAS_PLAATRN.PERCMPAD �ֵ�λ��ַ
    msgs.Add('CCAS_PLAATRN.PERCMPAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString);
    //CCAS_PLAATRN.PERRGCPT ��ҵע���ʱ�
    msgs.Add('CCAS_PLAATRN.PERRGCPT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweizhuceziben').AsString);
    //CCAS_PLAATRN.PEROCCPA ְ ҵ
    msgs.Add('CCAS_PLAATRN.PEROCCPA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuogangwei').AsString);
    //CCAS_PLAATRN.PERTITLE ְ ��
    msgs.Add('CCAS_PLAATRN.PERTITLE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjishuzige').AsString);
    //CCAS_PLAATRN.DOMICILE �ͻ�����
    msgs.Add('CCAS_PLAATRN.DOMICILE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguoji').AsString);
    //CCAS_PLAATRN.CLIENTCHR �ͻ�����
    msgs.Add('CCAS_PLAATRN.CLIENTCHR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenkehutezheng').AsString);
    //CCAS_PLAATRN.WKIMONIN ������
    msgs.Add('CCAS_PLAATRN.WKIMONIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyuegongzishouru').AsString);
    //CCAS_PLAATRN.PERHMCAD ���ÿ�����
    msgs.Add('CCAS_PLAATRN.PERHMCAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxinyongkashuliang').AsString);
    //CCAS_PLAATRN.OPENBK ��������
    //CCAS_PLAATRN.SALARYACC �����ʺ�
    //CCAS_PLAATRN.BOCCLIENT ��ΪBOC�ͻ���ʱ��
    msgs.Add('CCAS_PLAATRN.BOCCLIENT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenboc').AsString);
    //CCAS_PLAATRN.BANKACCINF �����������
    msgs.Add('CCAS_PLAATRN.BANKACCINF='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyinhangwanglaiqingkuang').AsString);
    //CCAS_PLAATRN.HVCMPCHARTERFLG �ṩ��ְ��λӪҵִ��
    msgs.Add('CCAS_PLAATRN.HVCMPCHARTERFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrentigongdanweiyingyezhizhao').AsString);
    //CCAS_PLAATRN.HVLIVEPRAVEFLG ������������ס��
    msgs.Add('CCAS_PLAATRN.HVLIVEPRAVEFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanren2fang').AsString);
    //CCAS_PLAATRN.HVHSID ����֤
    //CCAS_PLAATRN.HSAGE ¥ ��
    //CCAS_PLAATRN.HSUSESTATUS ��ҵʹ��״��
    //CCAS_PLAATRN.HSKIND ��ҵ����
    //CCAS_PLAATRN.HSUSE ��ҵ��;
    //CCAS_PLAATRN.LINKNM ��ϵ������
    //CCAS_PLAATRN.LINKADDR �� ��
    //CCAS_PLAATRN.LINKCERTY ֤�����
    //CCAS_PLAATRN.LINKCERNO ֤������
    //CCAS_PLAATRN.LINKHOMAD ��ϵ��ַ
    //CCAS_PLAATRN.LINKHMTEL סլ�绰
    //CCAS_PLAATRN.LINKMBLNO �ֻ�����
    //CCAS_PLAATRN.HVTWOHSFLG �ṩ����֤��
    msgs.Add('CCAS_PLAATRN.HVTWOHSFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrentigongjuliuzhengming').AsString);
    //CCAS_PLAATRN.PERHMPER ��������
    msgs.Add('CCAS_PLAATRN.PERHMPER='+FrmEdt.ATJieKuanRen.FieldByName('gongyangrenrenshu').AsString);
    //CCAS_PLAATRN.PERRELFG �����ͻ����
    msgs.Add('CCAS_PLAATRN.PERRELFG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguanliankehubiaoji').AsString);
    //CCAS_PLAATRN.PERSOURC �ͻ���Դ
    msgs.Add('CCAS_PLAATRN.PERSOURC='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenkehulaiyuan').AsString);
    //CCAS_PLAATRN.PERCRMFG �Ƿ���Υ����¼
    msgs.Add('CCAS_PLAATRN.PERCRMFG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenweifanjilu').AsString);

    //2
    //CCAS_PERCREDIT.MATCHNMID_1   �����ϵ�������ͻ��ṩ���
    msgs.Add('CCAS_PERCREDIT.MATCHNMID_1='+FrmEdt.ATZhengXin.FieldByName('�����ϵ�������ͻ��ṩ���').AsString);
    //CCAS_PERCREDIT.MATCHADID_1   �����ϵĵ�ַ��ͻ��ṩ���
    msgs.Add('CCAS_PERCREDIT.MATCHADID_1='+FrmEdt.ATZhengXin.FieldByName('�����ϵĵ�ַ��ͻ��ṩ���').AsString);
    //CCAS_PERCREDIT.CONFIRMID_1   �ɹ����������֤����ȷ��
    msgs.Add('CCAS_PERCREDIT.CONFIRMID_1='+FrmEdt.ATZhengXin.FieldByName('�ɹ����������֤����ȷ��').AsString);
    //CCAS_PERCREDIT.CREDITFG_1    ������������
    msgs.Add('CCAS_PERCREDIT.CREDITFG_1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenchengxinxitongchaxunqingkuang').AsString);
    //CCAS_PERCREDIT.SPOCREFG_1   ��ż�������
    msgs.Add('CCAS_PERCREDIT.SPOCREFG_1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouchengxinxitongchaxunqingkuang').AsString);
    //CCAS_PERCREDIT.COMDRCNT_1 Ŀǰ�������
    msgs.Add('CCAS_PERCREDIT.COMDRCNT_1='+FrmEdt.ATZhengXin.FieldByName('Ŀǰ�������').AsString);
    //CCAS_PERCREDIT.BOCDRCNT_1 �������д������
    msgs.Add('CCAS_PERCREDIT.BOCDRCNT_1='+FrmEdt.ATZhengXin.FieldByName('�������д������').AsString);
    //CCAS_PERCREDIT.TOTDRBAL_1 �ܴ�����
    msgs.Add('CCAS_PERCREDIT.TOTDRBAL_1='+FrmEdt.ATZhengXin.FieldByName('�ܴ�����').AsString);
    //CCAS_PERCREDIT.DLTDRBAL_1 δ���������
    msgs.Add('CCAS_PERCREDIT.DLTDRBAL_1='+FrmEdt.ATZhengXin.FieldByName('δ���������').AsString);
    //CCAS_PERCREDIT.MOTHLYPAY_1 �¹�
    msgs.Add('CCAS_PERCREDIT.MOTHLYPAY_1='+FrmEdt.ATZhengXin.FieldByName('�¹�').AsString);
    //CCAS_PERCREDIT.TOTARREAR_1 ��Ƿ��
    msgs.Add('CCAS_PERCREDIT.TOTARREAR_1='+FrmEdt.ATZhengXin.FieldByName('��Ƿ��').AsString);
    //CCAS_PERCREDIT.CURDLTER_1 ĿǰǷ������
    msgs.Add('CCAS_PERCREDIT.CURDLTER_1='+FrmEdt.ATZhengXin.FieldByName('ĿǰǷ������').AsString);
    //CCAS_PERCREDIT.MAXDLTER_1 ������Ƿ�������
    msgs.Add('CCAS_PERCREDIT.MAXDLTER_1='+FrmEdt.ATZhengXin.FieldByName('������Ƿ�������').AsString);
    //CCAS_PERCREDIT.DEBCDNUM_1 ��ǿ�����
    msgs.Add('CCAS_PERCREDIT.DEBCDNUM_1='+FrmEdt.ATZhengXin.FieldByName('��ǿ�����').AsString);
    //CCAS_PERCREDIT.CRECDNUM_1 ���ÿ�����
    msgs.Add('CCAS_PERCREDIT.CRECDNUM_1='+FrmEdt.ATZhengXin.FieldByName('���ÿ�����').AsString);
    //CCAS_PERCREDIT.BOCCDNUM_1 �����������ÿ�����
    msgs.Add('CCAS_PERCREDIT.BOCCDNUM_1='+FrmEdt.ATZhengXin.FieldByName('�����������ÿ�����').AsString);
    //CCAS_PERCREDIT.CREDITLINE_1 ͸֧���
    msgs.Add('CCAS_PERCREDIT.CREDITLINE_1='+FrmEdt.ATZhengXin.FieldByName('͸֧���').AsString);
    //CCAS_PERCREDIT.OUTAMOUNT_1 δ�������
    msgs.Add('CCAS_PERCREDIT.OUTAMOUNT_1='+FrmEdt.ATZhengXin.FieldByName('δ�������').AsString);
    //CCAS_PERCREDIT.MOTHREPAY_1 ����Ӧ�����
    msgs.Add('CCAS_PERCREDIT.MOTHREPAY_1='+FrmEdt.ATZhengXin.FieldByName('����Ӧ�����').AsString);
    //CCAS_PERCREDIT.EXPIRAMT_1 ���ڽ��
    msgs.Add('CCAS_PERCREDIT.EXPIRAMT_1='+FrmEdt.ATZhengXin.FieldByName('���ڽ��').AsString);
    //CCAS_PERCREDIT.CUREXNUM_1 Ŀǰ����δ������
    msgs.Add('CCAS_PERCREDIT.CUREXNUM_1='+FrmEdt.ATZhengXin.FieldByName('Ŀǰ����δ������').AsString);
    //CCAS_PERCREDIT.MAXEXNUM_1 �������������δ������
    msgs.Add('CCAS_PERCREDIT.MAXEXNUM_1='+FrmEdt.ATZhengXin.FieldByName('�������������δ������').AsString);
    //CCAS_PERCREDIT.REMARK_1 ��ע
    msgs.Add('CCAS_PERCREDIT.REMARK_1='+FrmEdt.ATZhengXin.FieldByName('��ע').AsString);

    //3
    //CCAS_PLAATRN.PERMRTST ����״��
    msgs.Add('CCAS_PLAATRN.PERMRTST='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhunfou').AsString);
    //CCAS_PLAATRN.SPSNAME ��ż����
    msgs.Add('CCAS_PLAATRN.SPSNAME='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouxingming').AsString);
    //CCAS_PLAATRN.SPSCERTY ��ż֤�����
    msgs.Add('CCAS_PLAATRN.SPSCERTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouzhengjianleibie').AsString);
    //CCAS_PLAATRN.SPSCERNO ��ż֤������
    msgs.Add('CCAS_PLAATRN.SPSCERNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);
    //CCAS_PLAATRN.SPSMNIN ��ż������
    msgs.Add('CCAS_PLAATRN.SPSMNIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString);
    //CCAS_PLAATRN.FAMILYOTSALARY ��ͥ������Ա������
    //msgs.Add('CCAS_PLAATRN.FAMILYOTSALARY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhunfou').AsString);
    //CCAS_PLAATRN.PERMTHTOUT ÿ��֧���ϼ�
    msgs.Add('CCAS_PLAATRN.PERMTHTOUT='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezhichu').AsString);
    //CCAS_PLAATRN.PERMTOTIN ��ͥ������
    msgs.Add('CCAS_PLAATRN.PERMTOTIN='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezongshouru').AsString);

    //4
    //CCAS_RETAILTRAN.HAFHOUID ¥�̱��
    //CCAS_RETAILTRAN.HAFHUSNA ¥������
    msgs.Add('CCAS_RETAILTRAN.HAFHUSNA='+FrmEdt.ATFangWu.FieldByName('fangwulouyumingcheng').AsString);
    //CCAS_RETAILTRAN.TYPE ����
    msgs.Add('CCAS_RETAILTRAN.TYPE='+FrmEdt.ATFangWu.FieldByName('fangwuleixing').AsString);
    //CCAS_RETAILTRAN.RELREFLG ��ҵ״̬
    msgs.Add('CCAS_RETAILTRAN.RELREFLG='+FrmEdt.ATFangWu.FieldByName('fangwuwuyezhuangtai').AsString);
    //CCAS_RETAILTRAN.TOTPRICE �����ܼ�
    msgs.Add('CCAS_RETAILTRAN.TOTPRICE='+Vartostr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    //CCAS_RETAILTRAN.PRICE ������
    msgs.Add('CCAS_RETAILTRAN.PRICE='+Vartostr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    //CCAS_RETAILTRAN.LCTBCTNO ������ͬ��
    msgs.Add('CCAS_RETAILTRAN.LCTBCTNO='+FrmEdt.ATDaiKuan.FieldByName('hetonghao').AsString);
    //CCAS_RETAILTRAN.LAFLNUSE ������;
    msgs.Add('CCAS_RETAILTRAN.LAFLNUSE='+FrmEdt.ATFangWu.FieldByName('goufangyongtu').AsString);
    //CCAS_RETAILTRAN.LCTBLDAR ���
    msgs.Add('CCAS_RETAILTRAN.LCTBLDAR='+FrmEdt.ATFangWu.FieldByName('fangwujianzhumianji').AsString);
    //tempgfdj ��������


    //5
    //CCAS_PLAATRN.LAFAPYAM �ѽ����ڿ�
    try
      if pos('��',FrmEdt.ATDaiKuan.FieldByName('jiekuanzhonglei').AsString)>0 then
        msgs.Add('CCAS_PLAATRN.LAFAPYAM='+vartostr(
                (FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency+
                FrmEdt.ATDaiKuan.FieldByName('gongjijindaikuanjine').AsCurrency)*10000))
      else
        msgs.Add('CCAS_PLAATRN.LAFAPYAM='+
                vartostr(FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFDRCCY ������
    msgs.Add('CCAS_PLAATRN.LAFDRCCY=�����');
    //CCAS_PLAATRN.LAFDRAMT ��������
    msgs.Add('CCAS_PLAATRN.LAFDRAMT='+Vartostr(FrmEdt.ATDaiKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //CCAS_PLAATRN.LAFTERM ����������
    msgs.Add('CCAS_PLAATRN.LAFTERM='+Vartostr(FrmEdt.ATDaiKuan.FieldByName('qixian').AsInteger*12));
    //CCAS_PLAATRN.TMPINT ��׼����
    //CCAS_PLAATRN.FLRATESCA ���ʸ�������
    msgs.Add('CCAS_PLAATRN.FLRATESCA='+FrmEdt.ATDaiKuan.FieldByName('lilvfudongbeli').AsString);
    //CCAS_PLAATRN.FLRATE ���ʸ���ֵ
    //CCAS_PLAATRN.LAFRATVL �� ��
    msgs.Add('CCAS_PLAATRN.LAFRATVL='+frmEdt.ATDaiKuan.FieldByName('lilv').AsString);
    //CCAS_PLAATRN.LAFRATVD ���ʵ�������
    msgs.Add('CCAS_PLAATRN.LAFRATVD=12');
    //CCAS_PLAATRN.RETPER ������
    //CCAS_PLAATRN.LAFRTMOD ���ʽ
    msgs.Add('CCAS_PLAATRN.LAFRTMOD='+frmEdt.ATDaiKuan.FieldByName('huankuanfangshi').AsString);
    //CCAS_PLAATRN.LAFGRAPD ���������
    //CCAS_PLAATRN.LAFPACTT �����ʺ�����
    msgs.Add('CCAS_PLAATRN.LAFPACTT=���˽����ʻ�');
    //CCAS_PLAATRN.LAFPACT �����ʺ�
    msgs.Add('CCAS_PLAATRN.LAFPACT='+frmEdt.ATDaiKuan.FieldByName('jiekuanrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.RETDTTYPE ����������
    msgs.Add('CCAS_PLAATRN.RETDTTYPE=�����������');
    //CCAS_PLAATRN.FIRRET ÿ�ڹ̶�������
    //msgs.Add('CCAS_PLAATRN.FIRRET='+Vartostr(FrmEdt.ATJieKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //CCAS_PLAATRN.RECEIVEPER �տ���
    msgs.Add('CCAS_PLAATRN.RECEIVEPER='+FrmEdt.ATFangWu.FieldByName('shoufangrenxingming').AsString);
    //CCAS_PLAATRN.RECEIVEACCNO �տ����ʺ�
    msgs.Add('CCAS_PLAATRN.RECEIVEACCNO='+frmEdt.ATDaiKuan.FieldByName('shoufangrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.PAYMN ���ڹ����
    //msgs.Add('CCAS_PLAATRN.PAYMN='+Vartostr(FrmEdt.ATJieKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //tempdyl ��Ѻ��
    msgs.Add('tempdyl'+Vartostr(FrmEdt.ATDaiKuan.FieldByName('diyalv').ASString));
    //CCAS_PLAATRN.LOANRATE �������


    //6           addimp3334
    FrmEdt.ATLianMingKeHu.First;
    while not FrmEdt.ATLianMingKeHu.Eof do begin
    //CCAS_CCTCBITRN.CBICUSNM_1 �����ͻ�����
    msgs.Add('CCAS_CCTCBITRN.CBICUSNM_1='+FrmEdt.ATLianMingKeHu.FieldByName('�����ͻ�����').AsString);
    //CCAS_CCTPERTRN.PEREDUBK_1 ���ѧ��
    msgs.Add('CCAS_CCTCBITRN.PEREDUBK_1='+FrmEdt.ATLianMingKeHu.FieldByName('���ѧ��').AsString);
    //CCAS_CCTCBITRN.CBICERTY_1 ֤�����
    msgs.Add('CCAS_CCTCBITRN.CBICERTY_1='+FrmEdt.ATLianMingKeHu.FieldByName('֤�����').AsString);
    //CCAS_CCTCBITRN.CBICERNO_1 ֤������
    msgs.Add('CCAS_CCTCBITRN.CBICERNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('֤������').AsString);
    //CCAS_CCTCBITRN.CBICTADD_1 ��ϵ��ַ
    msgs.Add('CCAS_CCTCBITRN.CBICTADD_1='+FrmEdt.ATLianMingKeHu.FieldByName('��ϵ��ַ').AsString);
    //CCAS_CCTCBITRN.CBIPSTCD_1 ��������
    msgs.Add('CCAS_CCTCBITRN.CBIPSTCD_1='+FrmEdt.ATLianMingKeHu.FieldByName('��������').AsString);
    //CCAS_CCTPERTRN.PEROCCPA_1 ְ ҵ
    msgs.Add('CCAS_CCTCBITRN.PEROCCPA_1='+FrmEdt.ATLianMingKeHu.FieldByName('ְҵ').AsString);
    //CCAS_CCTPERTRN.PERCMPNM_1 ������λ   CCAS_CCTPERTRN.PERCMPNM_1
    msgs.Add('CCAS_CCTCBITRN.PERCMPNM_1='+FrmEdt.ATLianMingKeHu.FieldByName('������λ').AsString);
    //CCAS_CCTCBITRN.CBIRID12_1 ���������˹�ϵ
    msgs.Add('CCAS_CCTCBITRN.CBIRID12_1='+FrmEdt.ATLianMingKeHu.FieldByName('���������˹�ϵ').AsString);
    //CCAS_CCTPERTRN.WKIMONIN_1 ������
    msgs.Add('CCAS_CCTCBITRN.WKIMONIN_1='+FrmEdt.ATLianMingKeHu.FieldByName('������').AsString);
    //CCAS_CCTPERTRN.PERPGRNO_1 ��ϵ�绰
    msgs.Add('CCAS_CCTCBITRN.PERPGRNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('��ϵ�绰').AsString);
    //CCAS_CCTPERTRN.PERHMTEL_1 סլ�绰
    msgs.Add('CCAS_CCTCBITRN.PERHMTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('סլ�绰').AsString);
    //CCAS_CCTPERTRN.PERMBLNO_1 �ֻ�����
    msgs.Add('CCAS_CCTCBITRN.PERMBLNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('�ֻ�����').AsString);
    //CCAS_CCTPERTRN.PERCMTEL_1 ��λ�绰
    msgs.Add('CCAS_CCTCBITRN.PERCMTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('��λ�绰').AsString);
    //CCAS_CCTPERTRN.OTHERTEL_1 �����绰
    msgs.Add('CCAS_CCTCBITRN.OTHERTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('�����绰').AsString);
      FrmEdt.ATLianMingKeHu.Next;
      if not FrmEdt.ATLianMingKeHu.eof then msgs.Add('addimp3334=click');
    end;

    //7    addimp333
    FrmEdt.ATDiYaWu.First;
    while not FrmEdt.ATDiYaWu.Eof do begin
    //CCAS_CCTCTI.IMPADDR_1 ¥������
    msgs.Add('CCAS_CCTCTI.IMPADDR_1='+FrmEdt.ATDiYaWu.FieldByName('¥������').AsString);
    //CCAS_CCTCTI.IMPNAME_1 ����/�̺�
    msgs.Add('CCAS_CCTCTI.IMPNAME_1='+FrmEdt.ATDiYaWu.FieldByName('����').AsString);
    //CCAS_CCTCTI.IMPPER_1 Ȩ����
    msgs.Add('CCAS_CCTCTI.IMPPER_1='+FrmEdt.ATDiYaWu.FieldByName('Ȩ����').AsString);
    //CCAS_CCTCTI.IMPTYPE_1 ����
    msgs.Add('CCAS_CCTCTI.IMPTYPE_1='+FrmEdt.ATDiYaWu.FieldByName('����').AsString);
    //CCAS_CCTCTI.IMPAREA_1 ���
    msgs.Add('CCAS_CCTCTI.IMPAREA_1='+FrmEdt.ATDiYaWu.FieldByName('���').AsString);
    //CCAS_CCTCTI.LIMYEAR_1 ����ʹ������
    msgs.Add('CCAS_CCTCTI.LIMYEAR_1='+FrmEdt.ATDiYaWu.FieldByName('����ʹ������').AsString);
    //CCAS_CCTCTI.PRICE_1 Ȩ����ֵ
    msgs.Add('CCAS_CCTCTI.PRICE_1='+FrmEdt.ATDiYaWu.FieldByName('Ȩ����ֵ').AsString);
    //CCAS_CCTCTI.ISAUTO_1 Ȩ��֤���
    msgs.Add('CCAS_CCTCTI.ISAUTO_1='+FrmEdt.ATDiYaWu.FieldByName('Ȩ��֤1').AsString);
    //CCAS_CCTCTI.LCTHIDNO_1 Ȩ��֤
    msgs.Add('CCAS_CCTCTI.LCTHIDNO_1='+FrmEdt.ATDiYaWu.FieldByName('Ȩ��֤2').AsString);
    //CCAS_CCTCTI.OTHERTYPE_1 ��Ѻ֤�� ���
    msgs.Add('CCAS_CCTCTI.OTHERTYPE_1='+FrmEdt.ATDiYaWu.FieldByName('��Ѻ֤��1').AsString);
    //CCAS_CCTCTI.OTRIGHTNO_1  ��Ѻ֤��
    msgs.Add('CCAS_CCTCTI.OTRIGHTNO_1='+FrmEdt.ATDiYaWu.FieldByName('��Ѻ֤��2').AsString);
    //CCAS_CCTCTI.INSURENO_1 ���յ���
    msgs.Add('CCAS_CCTCTI.INSURENO_1='+FrmEdt.ATDiYaWu.FieldByName('���յ���').AsString);
      FrmEdt.ATDiYaWu.Next;
      if not FrmEdt.ATDiYaWu.eof then msgs.Add('addimp333=click');
    end;
    msg := 'msg�Ѿ�����ɹ�!';
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

    //CCAS_PLAATRN.CBICUSNM ����
    msgs.Add('CCAS_PLAATRN.CBICUSNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingming').AsString);
    //CCAS_PLAATRN.CBISEXID �Ա�
    msgs.Add('CCAS_PLAATRN.CBISEXID='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingbie').AsString);
    //CCAS_PLAATRN.CBIBTHDA ��������
    try
      msgs.Add('CCAS_PLAATRN.CBIBTHDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenchushengnianyue').AsDateTime));
    except
    end;
    //CCAS_PLAATRN.LCLIVEYRLMT �־�סʱ��
    msgs.Add('CCAS_PLAATRN.LCLIVEYRLMT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhushijian').AsString);
    //CCAS_PLAATRN.CBICERTY ֤�����
    msgs.Add('CCAS_PLAATRN.CBICERTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenzhengjianleibie').AsString);
    //CCAS_PLAATRN.CBICERNO ֤������
    msgs.Add('CCAS_PLAATRN.CBICERNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    //CCAS_PLAATRN.CBICTADD ͨѶ��ַ
    msgs.Add('CCAS_PLAATRN.CBICTADD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    //CCAS_PLAATRN.CBIPSTCD ��������
    msgs.Add('CCAS_PLAATRN.CBIPSTCD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyoubian').AsString);
    //CCAS_PLAATRN.PERHMTEL סլ�绰
    msgs.Add('CCAS_PLAATRN.PERHMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjiatingdianhua').AsString);
    //CCAS_PLAATRN.PERMBLNO �ֻ�����
    msgs.Add('CCAS_PLAATRN.PERMBLNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenshouji').AsString);
    //CCAS_PLAATRN.PERHOMAD ��ס��ַ
    msgs.Add('CCAS_PLAATRN.PERHOMAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    //CCAS_PLAATRN.PERCMTEL ��λ�绰
    msgs.Add('CCAS_PLAATRN.PERCMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidianhua').AsString);
    //CCAS_PLAATRN.OTHERTEL �����绰
    //CCAS_PLAATRN.CUSDMCLR �������ڵ�
    msgs.Add('CCAS_PLAATRN.CUSDMCLR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhujisuozaidi').AsString);
    //CCAS_PLAATRN.PEREDUBK �����̶�
    msgs.Add('CCAS_PLAATRN.PEREDUBK='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxueli').AsString);
    //CCAS_PLAATRN.LIVESTUS ��ס״��
    msgs.Add('CCAS_PLAATRN.LIVESTUS='+FrmEdt.ATDaiKuan.FieldByName('jiekuanrenxianzhufangquanshu').AsString);
    //CCAS_PLAATRN.PERWOKDA �μӹ���ʱ��
    msgs.Add('CCAS_PLAATRN.PERWOKDA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuonianxian').AsString);
    //CCAS_PLAATRN.PERNWKDA ��ְ����
    msgs.Add('CCAS_PLAATRN.PERNWKDA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenrenxianzhinianxian').AsString);
    //CCAS_PLAATRN.PERCMPNM �ֹ�����λ
    msgs.Add('CCAS_PLAATRN.PERCMPNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanwei').AsString);
    //CCAS_PLAATRN.WKIBUSTY ��λ������ҵ
    msgs.Add('CCAS_PLAATRN.WKIBUSTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweisuoshuhangye').AsString);
    //CCAS_PLAATRN.PERCMPAD �ֵ�λ��ַ
    msgs.Add('CCAS_PLAATRN.PERCMPAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString);
    //CCAS_PLAATRN.PERRGCPT ��ҵע���ʱ�
    msgs.Add('CCAS_PLAATRN.PERRGCPT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweizhuceziben').AsString);
    //CCAS_PLAATRN.PEROCCPA ְ ҵ
    msgs.Add('CCAS_PLAATRN.PEROCCPA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuogangwei').AsString);
    //CCAS_PLAATRN.PERTITLE ְ ��
    msgs.Add('CCAS_PLAATRN.PERTITLE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjishuzige').AsString);
    //CCAS_PLAATRN.DOMICILE �ͻ�����
    msgs.Add('CCAS_PLAATRN.DOMICILE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguoji').AsString);
    //CCAS_PLAATRN.CLIENTCHR �ͻ�����
    msgs.Add('CCAS_PLAATRN.CLIENTCHR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenkehutezheng').AsString);
    //CCAS_PLAATRN.WKIMONIN ������
    msgs.Add('CCAS_PLAATRN.WKIMONIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyuegongzishouru').AsString);
    //CCAS_PLAATRN.PERHMCAD ���ÿ�����
    msgs.Add('CCAS_PLAATRN.PERHMCAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxinyongkashuliang').AsString);
    //CCAS_PLAATRN.OPENBK ��������
    //CCAS_PLAATRN.SALARYACC �����ʺ�
    //CCAS_PLAATRN.BOCCLIENT ��ΪBOC�ͻ���ʱ��
    msgs.Add('CCAS_PLAATRN.BOCCLIENT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenboc').AsString);
    //CCAS_PLAATRN.BANKACCINF �����������
    msgs.Add('CCAS_PLAATRN.BANKACCINF='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyinhangwanglaiqingkuang').AsString);
    //CCAS_PLAATRN.HVCMPCHARTERFLG �ṩ��ְ��λӪҵִ��
    msgs.Add('CCAS_PLAATRN.HVCMPCHARTERFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrentigongdanweiyingyezhizhao').AsString);
    //CCAS_PLAATRN.HVLIVEPRAVEFLG ������������ס��
    msgs.Add('CCAS_PLAATRN.HVLIVEPRAVEFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanren2fang').AsString);
    //CCAS_PLAATRN.HVHSID ����֤
    //CCAS_PLAATRN.HSAGE ¥ ��
    //CCAS_PLAATRN.HSUSESTATUS ��ҵʹ��״��
    //CCAS_PLAATRN.HSKIND ��ҵ����
    //CCAS_PLAATRN.HSUSE ��ҵ��;
    //CCAS_PLAATRN.LINKNM ��ϵ������
    //CCAS_PLAATRN.LINKADDR �� ��
    //CCAS_PLAATRN.LINKCERTY ֤�����
    //CCAS_PLAATRN.LINKCERNO ֤������
    //CCAS_PLAATRN.LINKHOMAD ��ϵ��ַ
    //CCAS_PLAATRN.LINKHMTEL סլ�绰
    //CCAS_PLAATRN.LINKMBLNO �ֻ�����
    //CCAS_PLAATRN.HVTWOHSFLG �ṩ����֤��
    msgs.Add('CCAS_PLAATRN.HVTWOHSFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrentigongjuliuzhengming').AsString);
    //CCAS_PLAATRN.PERHMPER ��������
    msgs.Add('CCAS_PLAATRN.PERHMPER='+FrmEdt.ATJieKuanRen.FieldByName('gongyangrenrenshu').AsString);
    //CCAS_PLAATRN.PERRELFG �����ͻ����
    msgs.Add('CCAS_PLAATRN.PERRELFG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguanliankehubiaoji').AsString);
    //CCAS_PLAATRN.PERSOURC �ͻ���Դ
    msgs.Add('CCAS_PLAATRN.PERSOURC='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenkehulaiyuan').AsString);
    //CCAS_PLAATRN.PERCRMFG �Ƿ���Υ����¼
    msgs.Add('CCAS_PLAATRN.PERCRMFG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenweifanjilu').AsString);

    //2
    //CCAS_PERCREDIT.MATCHNMID_1   �����ϵ�������ͻ��ṩ���
    msgs.Add('CCAS_PERCREDIT.MATCHNMID_1='+FrmEdt.ATZhengXin.FieldByName('�����ϵ�������ͻ��ṩ���').AsString);
    //CCAS_PERCREDIT.MATCHADID_1   �����ϵĵ�ַ��ͻ��ṩ���
    msgs.Add('CCAS_PERCREDIT.MATCHADID_1='+FrmEdt.ATZhengXin.FieldByName('�����ϵĵ�ַ��ͻ��ṩ���').AsString);
    //CCAS_PERCREDIT.CONFIRMID_1   �ɹ����������֤����ȷ��
    msgs.Add('CCAS_PERCREDIT.CONFIRMID_1='+FrmEdt.ATZhengXin.FieldByName('�ɹ����������֤����ȷ��').AsString);
    //CCAS_PERCREDIT.CREDITFG_1    ������������
    msgs.Add('CCAS_PERCREDIT.CREDITFG_1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenchengxinxitongchaxunqingkuang').AsString);
    //CCAS_PERCREDIT.SPOCREFG_1   ��ż�������
    msgs.Add('CCAS_PERCREDIT.SPOCREFG_1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouchengxinxitongchaxunqingkuang').AsString);
    //CCAS_PERCREDIT.COMDRCNT_1 Ŀǰ�������
    msgs.Add('CCAS_PERCREDIT.COMDRCNT_1='+FrmEdt.ATZhengXin.FieldByName('Ŀǰ�������').AsString);
    //CCAS_PERCREDIT.BOCDRCNT_1 �������д������
    msgs.Add('CCAS_PERCREDIT.BOCDRCNT_1='+FrmEdt.ATZhengXin.FieldByName('�������д������').AsString);
    //CCAS_PERCREDIT.TOTDRBAL_1 �ܴ�����
    msgs.Add('CCAS_PERCREDIT.TOTDRBAL_1='+FrmEdt.ATZhengXin.FieldByName('�ܴ�����').AsString);
    //CCAS_PERCREDIT.DLTDRBAL_1 δ���������
    msgs.Add('CCAS_PERCREDIT.DLTDRBAL_1='+FrmEdt.ATZhengXin.FieldByName('δ���������').AsString);
    //CCAS_PERCREDIT.MOTHLYPAY_1 �¹�
    msgs.Add('CCAS_PERCREDIT.MOTHLYPAY_1='+FrmEdt.ATZhengXin.FieldByName('�¹�').AsString);
    //CCAS_PERCREDIT.TOTARREAR_1 ��Ƿ��
    msgs.Add('CCAS_PERCREDIT.TOTARREAR_1='+FrmEdt.ATZhengXin.FieldByName('��Ƿ��').AsString);
    //CCAS_PERCREDIT.CURDLTER_1 ĿǰǷ������
    msgs.Add('CCAS_PERCREDIT.CURDLTER_1='+FrmEdt.ATZhengXin.FieldByName('ĿǰǷ������').AsString);
    //CCAS_PERCREDIT.MAXDLTER_1 ������Ƿ�������
    msgs.Add('CCAS_PERCREDIT.MAXDLTER_1='+FrmEdt.ATZhengXin.FieldByName('������Ƿ�������').AsString);
    //CCAS_PERCREDIT.DEBCDNUM_1 ��ǿ�����
    msgs.Add('CCAS_PERCREDIT.DEBCDNUM_1='+FrmEdt.ATZhengXin.FieldByName('��ǿ�����').AsString);
    //CCAS_PERCREDIT.CRECDNUM_1 ���ÿ�����
    msgs.Add('CCAS_PERCREDIT.CRECDNUM_1='+FrmEdt.ATZhengXin.FieldByName('���ÿ�����').AsString);
    //CCAS_PERCREDIT.BOCCDNUM_1 �����������ÿ�����
    msgs.Add('CCAS_PERCREDIT.BOCCDNUM_1='+FrmEdt.ATZhengXin.FieldByName('�����������ÿ�����').AsString);
    //CCAS_PERCREDIT.CREDITLINE_1 ͸֧���
    msgs.Add('CCAS_PERCREDIT.CREDITLINE_1='+FrmEdt.ATZhengXin.FieldByName('͸֧���').AsString);
    //CCAS_PERCREDIT.OUTAMOUNT_1 δ�������
    msgs.Add('CCAS_PERCREDIT.OUTAMOUNT_1='+FrmEdt.ATZhengXin.FieldByName('δ�������').AsString);
    //CCAS_PERCREDIT.MOTHREPAY_1 ����Ӧ�����
    msgs.Add('CCAS_PERCREDIT.MOTHREPAY_1='+FrmEdt.ATZhengXin.FieldByName('����Ӧ�����').AsString);
    //CCAS_PERCREDIT.EXPIRAMT_1 ���ڽ��
    msgs.Add('CCAS_PERCREDIT.EXPIRAMT_1='+FrmEdt.ATZhengXin.FieldByName('���ڽ��').AsString);
    //CCAS_PERCREDIT.CUREXNUM_1 Ŀǰ����δ������
    msgs.Add('CCAS_PERCREDIT.CUREXNUM_1='+FrmEdt.ATZhengXin.FieldByName('Ŀǰ����δ������').AsString);
    //CCAS_PERCREDIT.MAXEXNUM_1 �������������δ������
    msgs.Add('CCAS_PERCREDIT.MAXEXNUM_1='+FrmEdt.ATZhengXin.FieldByName('�������������δ������').AsString);
    //CCAS_PERCREDIT.REMARK_1 ��ע
    msgs.Add('CCAS_PERCREDIT.REMARK_1='+FrmEdt.ATZhengXin.FieldByName('��ע').AsString);

    //3
    //CCAS_PLAATRN.PERMRTST ����״��
    msgs.Add('CCAS_PLAATRN.PERMRTST='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhunfou').AsString);
    //CCAS_PLAATRN.SPSNAME ��ż����
    msgs.Add('CCAS_PLAATRN.SPSNAME='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouxingming').AsString);
    //CCAS_PLAATRN.SPSCERTY ��ż֤�����
    msgs.Add('CCAS_PLAATRN.SPSCERTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouzhengjianleibie').AsString);
    //CCAS_PLAATRN.SPSCERNO ��ż֤������
    msgs.Add('CCAS_PLAATRN.SPSCERNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);
    //CCAS_PLAATRN.SPSMNIN ��ż������
    msgs.Add('CCAS_PLAATRN.SPSMNIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString);
    //CCAS_PLAATRN.FAMILYOTSALARY ��ͥ������Ա������
    //msgs.Add('CCAS_PLAATRN.FAMILYOTSALARY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhunfou').AsString);
    //CCAS_PLAATRN.PERMTHTOUT ÿ��֧���ϼ�
    msgs.Add('CCAS_PLAATRN.PERMTHTOUT='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezhichu').AsString);
    //CCAS_PLAATRN.PERMTOTIN ��ͥ������
    msgs.Add('CCAS_PLAATRN.PERMTOTIN='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezongshouru').AsString);

    //4
    //CCAS_RETAILTRAN.HAFHOUID ¥�̱��
    //CCAS_RETAILTRAN.HAFHUSNA ¥������
    msgs.Add('CCAS_RETAILTRAN.HAFHUSNA='+FrmEdt.ATFangWu.FieldByName('fangwulouyumingcheng').AsString);
    //CCAS_RETAILTRAN.TYPE ����
    msgs.Add('CCAS_RETAILTRAN.TYPE='+FrmEdt.ATFangWu.FieldByName('fangwuleixing').AsString);
    //CCAS_RETAILTRAN.RELREFLG ��ҵ״̬
    msgs.Add('CCAS_RETAILTRAN.RELREFLG='+FrmEdt.ATFangWu.FieldByName('fangwuwuyezhuangtai').AsString);
    //CCAS_RETAILTRAN.TOTPRICE �����ܼ�
    msgs.Add('CCAS_RETAILTRAN.TOTPRICE='+Vartostr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    //CCAS_RETAILTRAN.PRICE ������
    msgs.Add('CCAS_RETAILTRAN.PRICE='+Vartostr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    //CCAS_RETAILTRAN.LCTBCTNO ������ͬ��
    msgs.Add('CCAS_RETAILTRAN.LCTBCTNO='+FrmEdt.ATDaiKuan.FieldByName('hetonghao').AsString);
    //CCAS_RETAILTRAN.LAFLNUSE ������;
    msgs.Add('CCAS_RETAILTRAN.LAFLNUSE='+FrmEdt.ATFangWu.FieldByName('goufangyongtu').AsString);
    //CCAS_RETAILTRAN.LCTBLDAR ���
    msgs.Add('CCAS_RETAILTRAN.LCTBLDAR='+FrmEdt.ATFangWu.FieldByName('fangwujianzhumianji').AsString);
    //tempgfdj ��������


    //5
    //CCAS_PLAATRN.LAFAPYAM �ѽ����ڿ�
    try
      if pos('��',FrmEdt.ATDaiKuan.FieldByName('jiekuanzhonglei').AsString)>0 then
        msgs.Add('CCAS_PLAATRN.LAFAPYAM='+vartostr(
                (FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency+
                FrmEdt.ATDaiKuan.FieldByName('gongjijindaikuanjine').AsCurrency)*10000))
      else
        msgs.Add('CCAS_PLAATRN.LAFAPYAM='+
                vartostr(FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFDRCCY ������
    msgs.Add('CCAS_PLAATRN.LAFDRCCY=�����');
    //CCAS_PLAATRN.LAFDRAMT ��������
    msgs.Add('CCAS_PLAATRN.LAFDRAMT='+Vartostr(FrmEdt.ATDaiKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //CCAS_PLAATRN.LAFTERM ����������
    msgs.Add('CCAS_PLAATRN.LAFTERM='+Vartostr(FrmEdt.ATDaiKuan.FieldByName('qixian').AsInteger*12));
    //CCAS_PLAATRN.TMPINT ��׼����
    //CCAS_PLAATRN.FLRATESCA ���ʸ�������
    msgs.Add('CCAS_PLAATRN.FLRATESCA='+FrmEdt.ATDaiKuan.FieldByName('lilvfudongbeli').AsString);
    //CCAS_PLAATRN.FLRATE ���ʸ���ֵ
    //CCAS_PLAATRN.LAFRATVL �� ��
    msgs.Add('CCAS_PLAATRN.LAFRATVL='+frmEdt.ATDaiKuan.FieldByName('lilv').AsString);
    //CCAS_PLAATRN.LAFRATVD ���ʵ�������
    msgs.Add('CCAS_PLAATRN.LAFRATVD=12');
    //CCAS_PLAATRN.RETPER ������
    //CCAS_PLAATRN.LAFRTMOD ���ʽ
    msgs.Add('CCAS_PLAATRN.LAFRTMOD='+frmEdt.ATDaiKuan.FieldByName('huankuanfangshi').AsString);
    //CCAS_PLAATRN.LAFGRAPD ���������
    //CCAS_PLAATRN.LAFPACTT �����ʺ�����
    msgs.Add('CCAS_PLAATRN.LAFPACTT=���˽����ʻ�');
    //CCAS_PLAATRN.LAFPACT �����ʺ�
    msgs.Add('CCAS_PLAATRN.LAFPACT='+frmEdt.ATDaiKuan.FieldByName('jiekuanrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.RETDTTYPE ����������
    msgs.Add('CCAS_PLAATRN.RETDTTYPE=�����������');
    //CCAS_PLAATRN.FIRRET ÿ�ڹ̶�������
    //msgs.Add('CCAS_PLAATRN.FIRRET='+Vartostr(FrmEdt.ATJieKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //CCAS_PLAATRN.RECEIVEPER �տ���
    msgs.Add('CCAS_PLAATRN.RECEIVEPER='+FrmEdt.ATFangWu.FieldByName('shoufangrenxingming').AsString);
    //CCAS_PLAATRN.RECEIVEACCNO �տ����ʺ�
    msgs.Add('CCAS_PLAATRN.RECEIVEACCNO='+frmEdt.ATDaiKuan.FieldByName('shoufangrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.PAYMN ���ڹ����
    //msgs.Add('CCAS_PLAATRN.PAYMN='+Vartostr(FrmEdt.ATJieKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //tempdyl ��Ѻ��
    msgs.Add('tempdyl'+Vartostr(FrmEdt.ATDaiKuan.FieldByName('diyalv').ASString));
    //CCAS_PLAATRN.LOANRATE �������


    //6           addimp3334
    FrmEdt.ATLianMingKeHu.First;
    while not FrmEdt.ATLianMingKeHu.Eof do begin
    //CCAS_CCTCBITRN.CBICUSNM_1 �����ͻ�����
    msgs.Add('CCAS_CCTCBITRN.CBICUSNM_1='+FrmEdt.ATLianMingKeHu.FieldByName('�����ͻ�����').AsString);
    //CCAS_CCTPERTRN.PEREDUBK_1 ���ѧ��
    msgs.Add('CCAS_CCTCBITRN.PEREDUBK_1='+FrmEdt.ATLianMingKeHu.FieldByName('���ѧ��').AsString);
    //CCAS_CCTCBITRN.CBICERTY_1 ֤�����
    msgs.Add('CCAS_CCTCBITRN.CBICERTY_1='+FrmEdt.ATLianMingKeHu.FieldByName('֤�����').AsString);
    //CCAS_CCTCBITRN.CBICERNO_1 ֤������
    msgs.Add('CCAS_CCTCBITRN.CBICERNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('֤������').AsString);
    //CCAS_CCTCBITRN.CBICTADD_1 ��ϵ��ַ
    msgs.Add('CCAS_CCTCBITRN.CBICTADD_1='+FrmEdt.ATLianMingKeHu.FieldByName('��ϵ��ַ').AsString);
    //CCAS_CCTCBITRN.CBIPSTCD_1 ��������
    msgs.Add('CCAS_CCTCBITRN.CBIPSTCD_1='+FrmEdt.ATLianMingKeHu.FieldByName('��������').AsString);
    //CCAS_CCTPERTRN.PEROCCPA_1 ְ ҵ
    msgs.Add('CCAS_CCTCBITRN.PEROCCPA_1='+FrmEdt.ATLianMingKeHu.FieldByName('ְҵ').AsString);
    //CCAS_CCTPERTRN.PERCMPNM_1 ������λ   CCAS_CCTPERTRN.PERCMPNM_1
    msgs.Add('CCAS_CCTCBITRN.PERCMPNM_1='+FrmEdt.ATLianMingKeHu.FieldByName('������λ').AsString);
    //CCAS_CCTCBITRN.CBIRID12_1 ���������˹�ϵ
    msgs.Add('CCAS_CCTCBITRN.CBIRID12_1='+FrmEdt.ATLianMingKeHu.FieldByName('���������˹�ϵ').AsString);
    //CCAS_CCTPERTRN.WKIMONIN_1 ������
    msgs.Add('CCAS_CCTCBITRN.WKIMONIN_1='+FrmEdt.ATLianMingKeHu.FieldByName('������').AsString);
    //CCAS_CCTPERTRN.PERPGRNO_1 ��ϵ�绰
    msgs.Add('CCAS_CCTCBITRN.PERPGRNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('��ϵ�绰').AsString);
    //CCAS_CCTPERTRN.PERHMTEL_1 סլ�绰
    msgs.Add('CCAS_CCTCBITRN.PERHMTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('סլ�绰').AsString);
    //CCAS_CCTPERTRN.PERMBLNO_1 �ֻ�����
    msgs.Add('CCAS_CCTCBITRN.PERMBLNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('�ֻ�����').AsString);
    //CCAS_CCTPERTRN.PERCMTEL_1 ��λ�绰
    msgs.Add('CCAS_CCTCBITRN.PERCMTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('��λ�绰').AsString);
    //CCAS_CCTPERTRN.OTHERTEL_1 �����绰
    msgs.Add('CCAS_CCTCBITRN.OTHERTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('�����绰').AsString);
      FrmEdt.ATLianMingKeHu.Next;
      if not FrmEdt.ATLianMingKeHu.eof then msgs.Add('addimp3334=click');
    end;

    //7    addimp333
    FrmEdt.ATDiYaWu.First;
    while not FrmEdt.ATDiYaWu.Eof do begin
    //CCAS_CCTCTI.IMPADDR_1 ¥������
    msgs.Add('CCAS_CCTCTI.IMPADDR_1='+FrmEdt.ATDiYaWu.FieldByName('¥������').AsString);
    //CCAS_CCTCTI.IMPNAME_1 ����/�̺�
    msgs.Add('CCAS_CCTCTI.IMPNAME_1='+FrmEdt.ATDiYaWu.FieldByName('����').AsString);
    //CCAS_CCTCTI.IMPPER_1 Ȩ����
    msgs.Add('CCAS_CCTCTI.IMPPER_1='+FrmEdt.ATDiYaWu.FieldByName('Ȩ����').AsString);
    //CCAS_CCTCTI.IMPTYPE_1 ����
    msgs.Add('CCAS_CCTCTI.IMPTYPE_1='+FrmEdt.ATDiYaWu.FieldByName('����').AsString);
    //CCAS_CCTCTI.IMPAREA_1 ���
    msgs.Add('CCAS_CCTCTI.IMPAREA_1='+FrmEdt.ATDiYaWu.FieldByName('���').AsString);
    //CCAS_CCTCTI.LIMYEAR_1 ����ʹ������
    msgs.Add('CCAS_CCTCTI.LIMYEAR_1='+FrmEdt.ATDiYaWu.FieldByName('����ʹ������').AsString);
    //CCAS_CCTCTI.PRICE_1 Ȩ����ֵ
    msgs.Add('CCAS_CCTCTI.PRICE_1='+FrmEdt.ATDiYaWu.FieldByName('Ȩ����ֵ').AsString);
    //CCAS_CCTCTI.ISAUTO_1 Ȩ��֤���
    msgs.Add('CCAS_CCTCTI.ISAUTO_1='+FrmEdt.ATDiYaWu.FieldByName('Ȩ��֤1').AsString);
    //CCAS_CCTCTI.LCTHIDNO_1 Ȩ��֤
    msgs.Add('CCAS_CCTCTI.LCTHIDNO_1='+FrmEdt.ATDiYaWu.FieldByName('Ȩ��֤2').AsString);
    //CCAS_CCTCTI.OTHERTYPE_1 ��Ѻ֤�� ���
    msgs.Add('CCAS_CCTCTI.OTHERTYPE_1='+FrmEdt.ATDiYaWu.FieldByName('��Ѻ֤��1').AsString);
    //CCAS_CCTCTI.OTRIGHTNO_1  ��Ѻ֤��
    msgs.Add('CCAS_CCTCTI.OTRIGHTNO_1='+FrmEdt.ATDiYaWu.FieldByName('��Ѻ֤��2').AsString);
    //CCAS_CCTCTI.INSURENO_1 ���յ���
    msgs.Add('CCAS_CCTCTI.INSURENO_1='+FrmEdt.ATDiYaWu.FieldByName('���յ���').AsString);
      FrmEdt.ATDiYaWu.Next;
      if not FrmEdt.ATDiYaWu.eof then msgs.Add('addimp333=click');
    end;
    msg := 'msg�Ѿ�����ɹ�!';
    frmedt.Free;
    msgs.Free;
  result := msg;
end;

{��CCAS����
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
    msg := 'msgϵͳδ�ҵ��������ݡ�';
  end else begin
    mainid := AQOpen.FieldByName('mainid').AsString;

    msgs := TStringList.Create;
    msgs.Add('import');
    FrmEdt := TFrmEdt.Create(self);
    FrmEdt.edit(mainid, false);
    //CCAS_PLAATRN.CBICUSNM ����
    msgs.Add('CCAS_PLAATRN.CBICUSNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingming').AsString);
    //CCAS_PLAATRN.CBISEXID �Ա�
    msgs.Add('CCAS_PLAATRN.CBISEXID='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingbie').AsString);
    //CCAS_PLAATRN.CBIBTHDA ��������
    try
      msgs.Add('CCAS_PLAATRN.CBIBTHDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenchushengnianyue').AsDateTime));
    except
    end;
    //CCAS_PLAATRN.LCLIVEYRLMT �־�סʱ��
    msgs.Add('CCAS_PLAATRN.LCLIVEYRLMT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhushijian').AsString);
    //CCAS_PLAATRN.CBICERTY ֤�����
    msgs.Add('CCAS_PLAATRN.CBICERTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenzhengjianleibie').AsString);
    //CCAS_PLAATRN.CBICERNO ֤������
    msgs.Add('CCAS_PLAATRN.CBICERNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenshenfenzhenghaoma').AsString);
    //CCAS_PLAATRN.CBICTADD ͨѶ��ַ
    msgs.Add('CCAS_PLAATRN.CBICTADD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    //CCAS_PLAATRN.CBIPSTCD ��������
    msgs.Add('CCAS_PLAATRN.CBIPSTCD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyoubian').AsString);
    //CCAS_PLAATRN.PERHMTEL סլ�绰
    msgs.Add('CCAS_PLAATRN.PERHMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjiatingdianhua').AsString);
    //CCAS_PLAATRN.PERMBLNO �ֻ�����
    msgs.Add('CCAS_PLAATRN.PERMBLNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenshouji').AsString);
    //CCAS_PLAATRN.PERHOMAD ��ס��ַ
    msgs.Add('CCAS_PLAATRN.PERHOMAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    //CCAS_PLAATRN.PERCMTEL ��λ�绰
    msgs.Add('CCAS_PLAATRN.PERCMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidianhua').AsString);
    //CCAS_PLAATRN.OTHERTEL �����绰
    //CCAS_PLAATRN.CUSDMCLR �������ڵ�
    msgs.Add('CCAS_PLAATRN.CUSDMCLR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhujisuozaidi').AsString);
    //CCAS_PLAATRN.PEREDUBK �����̶�
    msgs.Add('CCAS_PLAATRN.PEREDUBK='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxueli').AsString);
    //CCAS_PLAATRN.LIVESTUS ��ס״��
    msgs.Add('CCAS_PLAATRN.LIVESTUS='+FrmEdt.ATDaiKuan.FieldByName('jiekuanrenxianzhufangquanshu').AsString);
    //CCAS_PLAATRN.PERWOKDA �μӹ���ʱ��
    try
      msgs.Add('CCAS_PLAATRN.PERWOKDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuonianxian').AsDateTime));
    except
    end;
    //CCAS_PLAATRN.PERNWKDA ��ְ����
    msgs.Add('CCAS_PLAATRN.PERNWKDA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenrenxianzhinianxian').AsString);
    //CCAS_PLAATRN.PERCMPNM �ֹ�����λ
    msgs.Add('CCAS_PLAATRN.PERCMPNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanwei').AsString);
    //CCAS_PLAATRN.WKIBUSTY ��λ������ҵ
    msgs.Add('CCAS_PLAATRN.WKIBUSTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweisuoshuhangye').AsString);
    //CCAS_PLAATRN.PERCMPAD �ֵ�λ��ַ
    msgs.Add('CCAS_PLAATRN.PERCMPAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString);
    //CCAS_PLAATRN.PERRGCPT ��ҵע���ʱ�
    msgs.Add('CCAS_PLAATRN.PERRGCPT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweizhuceziben').AsString);
    //CCAS_PLAATRN.PEROCCPA ְ ҵ
    msgs.Add('CCAS_PLAATRN.PEROCCPA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuogangwei').AsString);
    //CCAS_PLAATRN.PERTITLE ְ ��
    msgs.Add('CCAS_PLAATRN.PERTITLE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjishuzige').AsString);
    //CCAS_PLAATRN.DOMICILE �ͻ�����
    msgs.Add('CCAS_PLAATRN.DOMICILE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguoji').AsString);
    //CCAS_PLAATRN.CLIENTCHR �ͻ�����
    msgs.Add('CCAS_PLAATRN.CLIENTCHR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenkehutezheng').AsString);
    //CCAS_PLAATRN.WKIMONIN ������
    //msgs.Add('CCAS_PLAATRN.WKIMONIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyuegongzishouru').AsString);
    msgs.Add('CCAS_PLAATRN.WKIMONIN='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezongshouru').AsString);
    //CCAS_PLAATRN.PERHMCAD ���ÿ�����
    msgs.Add('CCAS_PLAATRN.PERHMCAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxinyongkashuliang').AsString);
    //CCAS_PLAATRN.OPENBK ��������
    //CCAS_PLAATRN.SALARYACC �����ʺ�
    //CCAS_PLAATRN.BOCCLIENT ��ΪBOC�ͻ���ʱ��
    msgs.Add('CCAS_PLAATRN.BOCCLIENT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenboc').AsString);
    //CCAS_PLAATRN.BANKACCINF �����������
    msgs.Add('CCAS_PLAATRN.BANKACCINF='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyinhangwanglaiqingkuang').AsString);
    //CCAS_PLAATRN.HVCMPCHARTERFLG �ṩ��ְ��λӪҵִ��
    msgs.Add('CCAS_PLAATRN.HVCMPCHARTERFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrentigongdanweiyingyezhizhao').AsString);
    //CCAS_PLAATRN.HVLIVEPRAVEFLG ������������ס��
    msgs.Add('CCAS_PLAATRN.HVLIVEPRAVEFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanren2fang').AsString);
    //CCAS_PLAATRN.HVHSID ����֤
    //CCAS_PLAATRN.HSAGE ¥ ��
    //CCAS_PLAATRN.HSUSESTATUS ��ҵʹ��״��
    //CCAS_PLAATRN.HSKIND ��ҵ����
    //CCAS_PLAATRN.HSUSE ��ҵ��;
    //CCAS_PLAATRN.LINKNM ��ϵ������
    //CCAS_PLAATRN.LINKADDR �� ��
    //CCAS_PLAATRN.LINKCERTY ֤�����
    //CCAS_PLAATRN.LINKCERNO ֤������
    //CCAS_PLAATRN.LINKHOMAD ��ϵ��ַ
    //CCAS_PLAATRN.LINKHMTEL סլ�绰
    //CCAS_PLAATRN.LINKMBLNO �ֻ�����
    //CCAS_PLAATRN.HVTWOHSFLG �ṩ����֤��
    msgs.Add('CCAS_PLAATRN.HVTWOHSFLG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrentigongjuliuzhengming').AsString);
    //CCAS_PLAATRN.PERHMPER ��������
    msgs.Add('CCAS_PLAATRN.PERHMPER='+FrmEdt.ATJieKuanRen.FieldByName('gongyangrenrenshu').AsString);
    //CCAS_PLAATRN.PERRELFG �����ͻ����
    msgs.Add('CCAS_PLAATRN.PERRELFG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguanliankehubiaoji').AsString);
    //CCAS_PLAATRN.PERSOURC �ͻ���Դ
    msgs.Add('CCAS_PLAATRN.PERSOURC='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenkehulaiyuan').AsString);
    //CCAS_PLAATRN.PERCRMFG �Ƿ���Υ����¼
    msgs.Add('CCAS_PLAATRN.PERCRMFG='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenweifanjilu').AsString);

    //2
    //CCAS_PERCREDIT.MATCHNMID_1   �����ϵ�������ͻ��ṩ���
    msgs.Add('CCAS_PERCREDIT.MATCHNMID_1='+FrmEdt.ATZhengXin.FieldByName('�����ϵ�������ͻ��ṩ���').AsString);
    //CCAS_PERCREDIT.MATCHADID_1   �����ϵĵ�ַ��ͻ��ṩ���
    msgs.Add('CCAS_PERCREDIT.MATCHADID_1='+FrmEdt.ATZhengXin.FieldByName('�����ϵĵ�ַ��ͻ��ṩ���').AsString);
    //CCAS_PERCREDIT.CONFIRMID_1   �ɹ����������֤����ȷ��
    msgs.Add('CCAS_PERCREDIT.CONFIRMID_1='+FrmEdt.ATZhengXin.FieldByName('�ɹ����������֤����ȷ��').AsString);
    //CCAS_PERCREDIT.CREDITFG_1    ������������
    msgs.Add('CCAS_PERCREDIT.CREDITFG_1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenchengxinxitongchaxunqingkuang').AsString);
    //CCAS_PERCREDIT.SPOCREFG_1   ��ż�������
    msgs.Add('CCAS_PERCREDIT.SPOCREFG_1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouchengxinxitongchaxunqingkuang').AsString);
    //CCAS_PERCREDIT.COMDRCNT_1 Ŀǰ�������
    msgs.Add('CCAS_PERCREDIT.COMDRCNT_1='+FrmEdt.ATZhengXin.FieldByName('Ŀǰ�������').AsString);
    //CCAS_PERCREDIT.BOCDRCNT_1 �������д������
    msgs.Add('CCAS_PERCREDIT.BOCDRCNT_1='+FrmEdt.ATZhengXin.FieldByName('�������д������').AsString);
    //CCAS_PERCREDIT.TOTDRBAL_1 �ܴ�����
    msgs.Add('CCAS_PERCREDIT.TOTDRBAL_1='+FrmEdt.ATZhengXin.FieldByName('�ܴ�����').AsString);
    //CCAS_PERCREDIT.DLTDRBAL_1 δ���������
    msgs.Add('CCAS_PERCREDIT.DLTDRBAL_1='+FrmEdt.ATZhengXin.FieldByName('δ���������').AsString);
    //CCAS_PERCREDIT.MOTHLYPAY_1 �¹�
    msgs.Add('CCAS_PERCREDIT.MOTHLYPAY_1='+FrmEdt.ATZhengXin.FieldByName('�¹�').AsString);
    //CCAS_PERCREDIT.TOTARREAR_1 ��Ƿ��
    msgs.Add('CCAS_PERCREDIT.TOTARREAR_1='+FrmEdt.ATZhengXin.FieldByName('��Ƿ��').AsString);
    //CCAS_PERCREDIT.CURDLTER_1 ĿǰǷ������
    msgs.Add('CCAS_PERCREDIT.CURDLTER_1='+FrmEdt.ATZhengXin.FieldByName('ĿǰǷ������').AsString);
    //CCAS_PERCREDIT.MAXDLTER_1 ������Ƿ�������
    msgs.Add('CCAS_PERCREDIT.MAXDLTER_1='+FrmEdt.ATZhengXin.FieldByName('������Ƿ�������').AsString);
    //CCAS_PERCREDIT.DEBCDNUM_1 ��ǿ�����
    msgs.Add('CCAS_PERCREDIT.DEBCDNUM_1='+FrmEdt.ATZhengXin.FieldByName('��ǿ�����').AsString);
    //CCAS_PERCREDIT.CRECDNUM_1 ���ÿ�����
    msgs.Add('CCAS_PERCREDIT.CRECDNUM_1='+FrmEdt.ATZhengXin.FieldByName('���ÿ�����').AsString);
    //CCAS_PERCREDIT.BOCCDNUM_1 �����������ÿ�����
    msgs.Add('CCAS_PERCREDIT.BOCCDNUM_1='+FrmEdt.ATZhengXin.FieldByName('�����������ÿ�����').AsString);
    //CCAS_PERCREDIT.CREDITLINE_1 ͸֧���
    msgs.Add('CCAS_PERCREDIT.CREDITLINE_1='+FrmEdt.ATZhengXin.FieldByName('͸֧���').AsString);
    //CCAS_PERCREDIT.OUTAMOUNT_1 δ�������
    msgs.Add('CCAS_PERCREDIT.OUTAMOUNT_1='+FrmEdt.ATZhengXin.FieldByName('δ�������').AsString);
    //CCAS_PERCREDIT.MOTHREPAY_1 ����Ӧ�����
    msgs.Add('CCAS_PERCREDIT.MOTHREPAY_1='+FrmEdt.ATZhengXin.FieldByName('����Ӧ�����').AsString);
    //CCAS_PERCREDIT.EXPIRAMT_1 ���ڽ��
    msgs.Add('CCAS_PERCREDIT.EXPIRAMT_1='+FrmEdt.ATZhengXin.FieldByName('���ڽ��').AsString);
    //CCAS_PERCREDIT.CUREXNUM_1 Ŀǰ����δ������
    msgs.Add('CCAS_PERCREDIT.CUREXNUM_1='+FrmEdt.ATZhengXin.FieldByName('Ŀǰ����δ������').AsString);
    //CCAS_PERCREDIT.MAXEXNUM_1 �������������δ������
    msgs.Add('CCAS_PERCREDIT.MAXEXNUM_1='+FrmEdt.ATZhengXin.FieldByName('�������������δ������').AsString);
    //CCAS_PERCREDIT.REMARK_1 ��ע
    msgs.Add('CCAS_PERCREDIT.REMARK_1='+FrmEdt.ATZhengXin.FieldByName('��ע').AsString);

    //3
    //CCAS_PLAATRN.PERMRTST ����״��
    msgs.Add('CCAS_PLAATRN.PERMRTST='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhunfou').AsString);
    //CCAS_PLAATRN.SPSNAME ��ż����
    msgs.Add('CCAS_PLAATRN.SPSNAME='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouxingming').AsString);
    //CCAS_PLAATRN.SPSCERTY ��ż֤�����
    msgs.Add('CCAS_PLAATRN.SPSCERTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouzhengjianleibie').AsString);
    //CCAS_PLAATRN.SPSCERNO ��ż֤������
    msgs.Add('CCAS_PLAATRN.SPSCERNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeioushenfenzhenghaoma').AsString);
    //CCAS_PLAATRN.SPSMNIN ��ż������
    //msgs.Add('CCAS_PLAATRN.SPSMNIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString);
    if FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouxingming').AsString<>'' then
      msgs.Add('CCAS_PLAATRN.SPSMNIN=0');
    //CCAS_PLAATRN.FAMILYOTSALARY ��ͥ������Ա������
    //msgs.Add('CCAS_PLAATRN.FAMILYOTSALARY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhunfou').AsString);
    //CCAS_PLAATRN.PERMTHTOUT ÿ��֧���ϼ�
    msgs.Add('CCAS_PLAATRN.PERMTHTOUT='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezhichu').AsString);
    //CCAS_PLAATRN.PERMTOTIN ��ͥ������
    msgs.Add('CCAS_PLAATRN.PERMTOTIN='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezongshouru').AsString);

    //4
    //CCAS_RETAILTRAN.HAFHOUID ¥�̱��
    //CCAS_RETAILTRAN.HAFHUSNA ¥������
    msgs.Add('CCAS_RETAILTRAN.HAFHUSNA='+FrmEdt.ATFangWu.FieldByName('fangwulouyumingcheng').AsString);
    //CCAS_RETAILTRAN.TYPE ����
    msgs.Add('CCAS_RETAILTRAN.TYPE='+FrmEdt.ATFangWu.FieldByName('fangwuleixing').AsString);
    //CCAS_RETAILTRAN.RELREFLG ��ҵ״̬
    msgs.Add('CCAS_RETAILTRAN.RELREFLG='+FrmEdt.ATFangWu.FieldByName('fangwuwuyezhuangtai').AsString);
    //CCAS_RETAILTRAN.TOTPRICE �����ܼ�
    try
      msgs.Add('CCAS_RETAILTRAN.TOTPRICE='+Vartostr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    except
    end;
    //CCAS_RETAILTRAN.PRICE ������
    try
      msgs.Add('CCAS_RETAILTRAN.PRICE='+Vartostr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    except
    end;
    //CCAS_RETAILTRAN.LCTBCTNO ������ͬ��
    msgs.Add('CCAS_RETAILTRAN.LCTBCTNO='+FrmEdt.ATDaiKuan.FieldByName('hetonghao').AsString);
    //CCAS_RETAILTRAN.LAFLNUSE ������;
    msgs.Add('CCAS_RETAILTRAN.LAFLNUSE='+FrmEdt.ATFangWu.FieldByName('goufangyongtu').AsString);
    //CCAS_RETAILTRAN.LCTBLDAR ���
    msgs.Add('CCAS_RETAILTRAN.LCTBLDAR='+FrmEdt.ATFangWu.FieldByName('fangwujianzhumianji').AsString);
    //tempgfdj ��������


    //5
    //CCAS_PLAATRN.LAFAPYAM �ѽ����ڿ�
    try
      if pos('��',FrmEdt.ATDaiKuan.FieldByName('jiekuanzhonglei').AsString)>0 then
        msgs.Add('CCAS_PLAATRN.LAFAPYAM='+vartostr(
                (FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency+
                FrmEdt.ATDaiKuan.FieldByName('gongjijindaikuanjine').AsCurrency)*10000))
      else
        msgs.Add('CCAS_PLAATRN.LAFAPYAM='+
                vartostr(FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFDRCCY ������
    msgs.Add('CCAS_PLAATRN.LAFDRCCY=�����');
    //CCAS_PLAATRN.LAFDRAMT ��������
    try
      msgs.Add('CCAS_PLAATRN.LAFDRAMT='+Vartostr(FrmEdt.ATDaiKuan.FieldByName('daikuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFTERM ����������
    try
      msgs.Add('CCAS_PLAATRN.LAFTERM='+Vartostr(FrmEdt.ATDaiKuan.FieldByName('qixian').AsInteger*12));
    except
    end;
    //CCAS_PLAATRN.TMPINT ��׼����
    //CCAS_PLAATRN.FLRATESCA ���ʸ�������
    msgs.Add('CCAS_PLAATRN.FLRATESCA='+FrmEdt.ATDaiKuan.FieldByName('lilvfudongbeli').AsString);
    //CCAS_PLAATRN.FLRATE ���ʸ���ֵ
    //CCAS_PLAATRN.LAFRATVL �� ��
    msgs.Add('CCAS_PLAATRN.LAFRATVL='+StringReplace(frmEdt.ATDaiKuan.FieldByName('lilv').AsString,'��','',[rfReplaceAll]));
    //CCAS_PLAATRN.LAFRATVD ���ʵ�������
    msgs.Add('CCAS_PLAATRN.LAFRATVD=12');
    //CCAS_PLAATRN.RETPER ������
    //CCAS_PLAATRN.LAFRTMOD ���ʽ
    msgs.Add('CCAS_PLAATRN.LAFRTMOD='+frmEdt.ATDaiKuan.FieldByName('huankuanfangshi').AsString);
    //CCAS_PLAATRN.LAFGRAPD ���������
    //CCAS_PLAATRN.LAFPACTT �����ʺ�����
    msgs.Add('CCAS_PLAATRN.LAFPACTT=���˽����ʻ�');
    //CCAS_PLAATRN.LAFPACT �����ʺ�
    msgs.Add('CCAS_PLAATRN.LAFPACT='+frmEdt.ATDaiKuan.FieldByName('jiekuanrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.RETDTTYPE ����������
    msgs.Add('CCAS_PLAATRN.RETDTTYPE=�����������');
    //CCAS_PLAATRN.FIRRET ÿ�ڹ̶�������
    //msgs.Add('CCAS_PLAATRN.FIRRET='+Vartostr(FrmEdt.ATJieKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //CCAS_PLAATRN.RECEIVEPER �տ���
    msgs.Add('CCAS_PLAATRN.RECEIVEPER='+FrmEdt.ATFangWu.FieldByName('shoufangrenxingming').AsString);
    //CCAS_PLAATRN.RECEIVEACCNO �տ����ʺ�
    msgs.Add('CCAS_PLAATRN.RECEIVEACCNO='+frmEdt.ATDaiKuan.FieldByName('shoufangrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.PAYMN ���ڹ����
    //msgs.Add('CCAS_PLAATRN.PAYMN='+Vartostr(FrmEdt.ATJieKuan.FieldByName('daikuanjine').AsCurrency*10000));
    //tempdyl ��Ѻ��
    msgs.Add('tempdyl'+Vartostr(FrmEdt.ATDaiKuan.FieldByName('diyalv').ASString));
    //CCAS_PLAATRN.LOANRATE �������


    //6           addimp3334
    FrmEdt.ATLianMingKeHu.First;
    while not FrmEdt.ATLianMingKeHu.Eof do begin
      //CCAS_CCTCBITRN.CBICUSNM_1 �����ͻ�����
      msgs.Add('CCAS_CCTCBITRN.CBICUSNM_1='+FrmEdt.ATLianMingKeHu.FieldByName('�����ͻ�����').AsString);
      //CCAS_CCTPERTRN.PEREDUBK_1 ���ѧ��
      msgs.Add('CCAS_CCTCBITRN.PEREDUBK_1='+FrmEdt.ATLianMingKeHu.FieldByName('���ѧ��').AsString);
      //CCAS_CCTCBITRN.CBICERTY_1 ֤�����
      msgs.Add('CCAS_CCTCBITRN.CBICERTY_1='+FrmEdt.ATLianMingKeHu.FieldByName('֤�����').AsString);
      //CCAS_CCTCBITRN.CBICERNO_1 ֤������
      msgs.Add('CCAS_CCTCBITRN.CBICERNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('֤������').AsString);
      //CCAS_CCTCBITRN.CBICTADD_1 ��ϵ��ַ
      msgs.Add('CCAS_CCTCBITRN.CBICTADD_1='+FrmEdt.ATLianMingKeHu.FieldByName('��ϵ��ַ').AsString);
      //CCAS_CCTCBITRN.CBIPSTCD_1 ��������
      msgs.Add('CCAS_CCTCBITRN.CBIPSTCD_1='+FrmEdt.ATLianMingKeHu.FieldByName('��������').AsString);
      //CCAS_CCTPERTRN.PEROCCPA_1 ְ ҵ
      msgs.Add('CCAS_CCTCBITRN.PEROCCPA_1='+FrmEdt.ATLianMingKeHu.FieldByName('ְҵ').AsString);
      //CCAS_CCTPERTRN.PERCMPNM_1 ������λ   CCAS_CCTPERTRN.PERCMPNM_1
      msgs.Add('CCAS_CCTCBITRN.PERCMPNM_1='+FrmEdt.ATLianMingKeHu.FieldByName('������λ').AsString);
      //CCAS_CCTCBITRN.CBIRID12_1 ���������˹�ϵ
      msgs.Add('CCAS_CCTCBITRN.CBIRID12_1='+FrmEdt.ATLianMingKeHu.FieldByName('���������˹�ϵ').AsString);
      //CCAS_CCTPERTRN.WKIMONIN_1 ������
      msgs.Add('CCAS_CCTCBITRN.WKIMONIN_1='+FrmEdt.ATLianMingKeHu.FieldByName('������').AsString);
      //CCAS_CCTPERTRN.PERPGRNO_1 ��ϵ�绰
      msgs.Add('CCAS_CCTCBITRN.PERPGRNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('��ϵ�绰').AsString);
      //CCAS_CCTPERTRN.PERHMTEL_1 סլ�绰
      msgs.Add('CCAS_CCTCBITRN.PERHMTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('סլ�绰').AsString);
      //CCAS_CCTPERTRN.PERMBLNO_1 �ֻ�����
      msgs.Add('CCAS_CCTCBITRN.PERMBLNO_1='+FrmEdt.ATLianMingKeHu.FieldByName('�ֻ�����').AsString);
      //CCAS_CCTPERTRN.PERCMTEL_1 ��λ�绰
      msgs.Add('CCAS_CCTCBITRN.PERCMTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('��λ�绰').AsString);
      //CCAS_CCTPERTRN.OTHERTEL_1 �����绰
      msgs.Add('CCAS_CCTCBITRN.OTHERTEL_1='+FrmEdt.ATLianMingKeHu.FieldByName('�����绰').AsString);

      FrmEdt.ATLianMingKeHu.Next;
      if not FrmEdt.ATLianMingKeHu.eof then msgs.Add('addimp3334=click');
    end;

    //7    addimp333
    FrmEdt.ATDiYaWu.First;
    while not FrmEdt.ATDiYaWu.Eof do begin
      //CCAS_CCTCTI.IMPADDR_1 ¥������
      msgs.Add('CCAS_CCTCTI.IMPADDR_1='+FrmEdt.ATDiYaWu.FieldByName('¥������').AsString);
      //CCAS_CCTCTI.IMPNAME_1 ����/�̺�
      msgs.Add('CCAS_CCTCTI.IMPNAME_1='+FrmEdt.ATDiYaWu.FieldByName('����').AsString);
      //CCAS_CCTCTI.IMPPER_1 Ȩ����
      msgs.Add('CCAS_CCTCTI.IMPPER_1='+FrmEdt.ATDiYaWu.FieldByName('Ȩ����').AsString);
      //CCAS_CCTCTI.IMPTYPE_1 ����
      msgs.Add('CCAS_CCTCTI.IMPTYPE_1='+FrmEdt.ATDiYaWu.FieldByName('����').AsString);
      //CCAS_CCTCTI.IMPAREA_1 ���
      msgs.Add('CCAS_CCTCTI.IMPAREA_1='+FrmEdt.ATDiYaWu.FieldByName('���').AsString);
      //CCAS_CCTCTI.LIMYEAR_1 ����ʹ������
      msgs.Add('CCAS_CCTCTI.LIMYEAR_1='+FrmEdt.ATDiYaWu.FieldByName('����ʹ������').AsString);
      //CCAS_CCTCTI.PRICE_1 Ȩ����ֵ
      msgs.Add('CCAS_CCTCTI.PRICE_1='+FrmEdt.ATDiYaWu.FieldByName('Ȩ����ֵ').AsString);
      //CCAS_CCTCTI.ISAUTO_1 Ȩ��֤���
      msgs.Add('CCAS_CCTCTI.ISAUTO_1='+FrmEdt.ATDiYaWu.FieldByName('Ȩ��֤1').AsString);
      //CCAS_CCTCTI.LCTHIDNO_1 Ȩ��֤
      msgs.Add('CCAS_CCTCTI.LCTHIDNO_1='+FrmEdt.ATDiYaWu.FieldByName('Ȩ��֤2').AsString);
      //CCAS_CCTCTI.OTHERTYPE_1 ��Ѻ֤�� ���
      msgs.Add('CCAS_CCTCTI.OTHERTYPE_1='+FrmEdt.ATDiYaWu.FieldByName('��Ѻ֤��1').AsString);
      //CCAS_CCTCTI.OTRIGHTNO_1  ��Ѻ֤��
      msgs.Add('CCAS_CCTCTI.OTRIGHTNO_1='+FrmEdt.ATDiYaWu.FieldByName('��Ѻ֤��2').AsString);
      //CCAS_CCTCTI.INSURENO_1 ���յ���
      msgs.Add('CCAS_CCTCTI.INSURENO_1='+FrmEdt.ATDiYaWu.FieldByName('���յ���').AsString);
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
    msg := 'msgϵͳδ�ҵ��������ݡ�';
  end else begin
    mainid := FrmMain.AQOpen.FieldByName('mainid').AsString;

    msgs := TStringList.Create;
    msgs.Add('import');
    FrmEdt := TFrmEdt.Create(nil);
    FrmEdt.edit(mainid, false);
    //CCAS_CCTPERTRN.PERLSTNM �ͻ���  CCAS_CCTPERTRN.PERLSTNM
    msgs.Add('CCAS_CCTPERTRN.PERLSTNM='+getLastName(FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingming').AsString));
    //CCAS_CCTPERTRN.PERFSTNM �ͻ���
    msgs.Add('CCAS_CCTPERTRN.PERFSTNM='+getFirstName(FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingming').AsString));
    //CCAS_CCTPERTRN.CBISEXID �� ��
    msgs.Add('CCAS_CCTPERTRN.CBISEXID='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingbie').AsString);
    //CCAS_CCTPERTRN.PERCERDT ֤��������
    try
      msgs.Add('CCAS_CCTPERTRN.PERCERDT='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenzhengjiandaoqiri').AsDateTime));
    except
    end;
    //CCAS_CCTPERTRN.PERMRTST ����״��
    msgs.Add('CCAS_CCTPERTRN.PERMRTST='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhunfou').AsString);
    //KYC���յȼ� CCAS_CCTPERTRN.PERKYC
    msgs.Add('CCAS_CCTPERTRN.PERKYC=�ͷ���');
    //CCAS_CCTPERTRN.PERHMTEL סլ�绰
    msgs.Add('CCAS_CCTPERTRN.PERHMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjiatingdianhua').AsString);
    //CCAS_CCTPERTRN.PERMBLNO �ƶ��绰
    msgs.Add('CCAS_CCTPERTRN.PERMBLNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenshouji').AsString);
    //CCAS_CCTPERTRN.PERCMTEL ��λ�绰
    msgs.Add('CCAS_CCTPERTRN.PERCMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidianhua').AsString);
    //CCAS_CCTPERTRN.PERHMAD1 ��ͥסַ1
    msgs.Add('CCAS_CCTPERTRN.PERHMAD1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    qu := copy(FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString, 1,
          pos('��', FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString)+1);
    //CCAS_CCTPERTRN.PERHMAD2 ��ͥסַ2
    msgs.Add('CCAS_CCTPERTRN.PERHMAD2='+qu);
    //CCAS_CCTPERTRN.PERHMAD3 ��ͥסַ3
    msgs.Add('CCAS_CCTPERTRN.PERHMAD3=�ൺ');
    //CCAS_CCTPERTRN.PERHMAD4 ��ͥסַ4
    msgs.Add('CCAS_CCTPERTRN.PERHMAD4=ɽ��');
    //CCAS_CCTPERTRN.PERHOMZP ��������
    msgs.Add('CCAS_CCTPERTRN.PERHOMZP='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyoubian').AsString);
    //CCAS_CCTPERTRN.CBIBTHDA �������� yyyymmdd
    try
      msgs.Add('CCAS_CCTPERTRN.CBIBTHDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenchushengnianyue').AsDateTime));
    except
    end;
    //CCAS_CCTPERTRN.DOMICILE �ͻ�����
    msgs.Add('CCAS_CCTPERTRN.DOMICILE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguoji').AsString);
    //CCAS_CCTPERTRN.CUSDMCLR �������ڵ�
    msgs.Add('CCAS_CCTPERTRN.CUSDMCLR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenhujisuozaidi').AsString);
    //CCAS_CCTPERTRN.PEROCCPA ְ ҵ
    msgs.Add('CCAS_CCTPERTRN.PEROCCPA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuogangwei').AsString);
    //CCAS_CCTPERTRN.PERNTLNO �� ��
    msgs.Add('CCAS_CCTPERTRN.PERNTLNO=����');
    //CCAS_CCTPERTRN.PERTITLE ְ ��
    msgs.Add('CCAS_CCTPERTRN.PERTITLE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenjishuzige').AsString);
    //CCAS_CCTPERTRN.PEREDUBK �Ļ��̶�
    msgs.Add('CCAS_CCTPERTRN.PEREDUBK='+getCCASValue('jiekuanrenxueli', FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxueli').AsString));
    //CCAS_CCTPERTRN.PEREDULV ���ѧλ
    msgs.Add('CCAS_CCTPERTRN.PEREDULV=����');
    //CCAS_CCTPERTRN.PERCMPNM �ֹ�����λ
    msgs.Add('CCAS_CCTPERTRN.PERCMPNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanwei').AsString);
    //CCAS_CCTPERTRN.WKIBUSTY ����λ��ҵ
    msgs.Add('CCAS_CCTPERTRN.WKIBUSTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweisuoshuhangye').AsString);
    //CCAS_CCTPERTRN.PERWOKDA �μӹ�������
    try
      msgs.Add('CCAS_CCTPERTRN.PERWOKDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuonianxian').AsDateTime));
    except
    end;
    //CCAS_CCTPERTRN.WKIBEDAT �ֹ�������
    try
      msgs.Add('CCAS_CCTPERTRN.WKIBEDAT='+
        formatdatetime('yyyymmdd',IncYear(now, FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenrenxianzhinianxian').AsInteger*-1)));
    except
    end;
    //CCAS_CCTPERTRN.PERNWKDA ��ְ��������
    msgs.Add('CCAS_CCTPERTRN.PERNWKDA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenrenxianzhinianxian').AsString);
    //CCAS_CCTPERTRN.PERRGCPT ��λע���ʱ�
    msgs.Add('CCAS_CCTPERTRN.PERRGCPT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweizhuceziben').AsString);
    //CCAS_CCTPERTRN.PERHOMSO ��ס����Դ����ס״��
    msgs.Add('CCAS_CCTPERTRN.PERHOMSO='+FrmEdt.ATDaiKuan.FieldByName('jiekuanrenxianzhufangquanshu').AsString);
    //CCAS_CCTPERTRN.PERNLVDA ��סַʱ��
    try
      msgs.Add('CCAS_CCTPERTRN.PERNLVDA='+
        formatdatetime('yyyymmdd',IncYear(now, FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhushijian').AsInteger*-1)));
    except
    end;
    //CCAS_CCTPERTRN.LCLIVEYRLMT	��סַ��ס����
    msgs.Add('CCAS_CCTPERTRN.LCLIVEYRLMT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhushijian').AsString);
    //CCAS_CCTPERTRN.PERCMPAD �ֵ�λ��ַ
    msgs.Add('CCAS_CCTPERTRN.PERCMPAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString);
    //CCAS_CCTPERTRN.PERCMPAD2 �ֵ�λ��ַ2
    qu := copy(FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString, 1,
          pos('��', FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString)+1);
    msgs.Add('CCAS_CCTPERTRN.PERCMPAD2='+qu);
    //CCAS_CCTPERTRN.PERCMPAD4 �ֵ�λ��ַ3
    msgs.Add('CCAS_CCTPERTRN.PERCMPAD3=�ൺ');
    //CCAS_CCTPERTRN.PERCMPAD4 �ֵ�λ��ַ4
    msgs.Add('CCAS_CCTPERTRN.PERCMPAD4=ɽ��');


    //CCAS_CCTPERTRN.PERCMPZP ������λ�ʱ�
    msgs.Add('CCAS_CCTPERTRN.PERCMPZP='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweiyoubian').AsString);
    //CCAS_CCTPERTRN.WKIMONIN �������������
    msgs.Add('CCAS_CCTPERTRN.WKIMONIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyuegongzishouru').AsString);
    //CCAS_CCTPERTRN.FAMILYOTSALARY  ��ͥ������Ա������
    msgs.Add('CCAS_CCTPERTRN.FAMILYOTSALARY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString);
    //CCAS_CCTPERTRN.PERMTOTIN ��ͥ��������
    msgs.Add('CCAS_CCTPERTRN.PERMTOTIN='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezongshouru').AsString);
    //CCAS_CCTPERTRN.PERHMNCS ��ͥ��֧���ϼ�
    msgs.Add('CCAS_CCTPERTRN.PERHMNCS='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezhichu').AsString);
    //CCAS_CCTPERTRN.PERCRDPT �ͻ�����
    msgs.Add('CCAS_CCTPERTRN.PERCRDPT=00');
    //CCAS_CCTPERTRN.PERCRCLS ���˿ͻ����õȼ�
    msgs.Add('CCAS_CCTPERTRN.PERCRCLS=������');
    //CCAS_CCTPERTRN.PERHMPER �����˿���
    if (FrmEdt.ATJieKuanRen.FieldByName('gongyangrenrenshu').AsString='') then
      msgs.Add('CCAS_CCTPERTRN.PERHMPER=0')
    else
      msgs.Add('CCAS_CCTPERTRN.PERHMPER='+FrmEdt.ATJieKuanRen.FieldByName('gongyangrenrenshu').AsString);
    //CCAS_CCTPERTRN.PERGDCAD ���������ͻ����
    msgs.Add('CCAS_CCTPERTRN.PERGDCAD=�ǹ�����');
    //CCAS_CCTPERTRN.PERHMMEM ��ͥ��Ա��
    msgs.Add('CCAS_CCTPERTRN.PERHMMEM='+FrmEdt.ATJieKuanRen.FieldByName('jiatingrenkou').AsString);

    //CCAS_RETAILTRAN.TOTPRICE �����ܼ�
    try
      msgs.Add('CCAS_RETAILTRAN.TOTPRICE='+VartoStr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    except
    end;
    //CCAS_RETAILTRAN.PRICE ������
    try
      msgs.Add('CCAS_RETAILTRAN.PRICE='+VartoStr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    except
    end;
    //CCAS_RETAILTRAN.LCTBCTNO ����
    msgs.Add('CCAS_RETAILTRAN.LCTBCTNO='+FrmEdt.ATFangWu.FieldByName('fangwufanghao').AsString);
    //CCAS_RETAILTRAN.LCTBLDAR ���
    msgs.Add('CCAS_RETAILTRAN.LCTBLDAR='+FrmEdt.ATFangWu.FieldByName('fangwujianzhumianji').AsString);
    //tempgfdj ��������
    msgs.Add('tempgfdj='+FrmEdt.ATFangWu.FieldByName('pinggujiage').AsString);
    //LOCATION ��ĿҪ��
    //msgs.Add('LOCATION='+FrmEdt.ATFangWu.FieldByName('fangwudiliweizhi').AsString);

    //CCAS_PLAATRN.LAFAPYAM �ѽ����ڿ�
    try
      msgs.Add('CCAS_PLAATRN.LAFAPYAM='+VartoStr(FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFDRAMT ��������
    try
      msgs.Add('CCAS_PLAATRN.LAFDRAMT='+VartoStr(FrmEdt.ATDaiKuan.FieldByName('daikuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFTERM ����������
    try
      msgs.Add('CCAS_PLAATRN.LAFTERM='+VartoStr(FrmEdt.ATDaiKuan.FieldByName('qixian').AsInteger*12));
    except
    end;
    //CCAS_PLAATRN.LAFRTMOD ���ʽ
    if FrmEdt.ATDaiKuan.FieldByName('huankuanfangshi').AsString = '�ȶ�' then
      msgs.Add('CCAS_PLAATRN.LAFRTMOD=�ȶϢ')
    else
      msgs.Add('CCAS_PLAATRN.LAFRTMOD=�ȶ��');
    //CCAS_PLAATRN.FLRATESCA ���ʸ�������
    msgs.Add('CCAS_PLAATRN.FLRATESCA='+FrmEdt.ATDaiKuan.FieldByName('lilvfudongbeli').AsString);
    if length(FrmEdt.ATDaiKuan.FieldByName('jiekuanrencunzhezhanghao').AsString) > 12 then
      //CCAS_PLAATRN.RECEIVEDEBITNO �����ǿ�����
      msgs.Add('CCAS_PLAATRN.RECEIVEDEBITNO='+FrmEdt.ATDaiKuan.FieldByName('jiekuanrencunzhezhanghao').AsString)
    else
      //CCAS_PLAATRN.RECEIVEACCNO �����ʺ�
      msgs.Add('CCAS_PLAATRN.LAFPACT='+FrmEdt.ATDaiKuan.FieldByName('jiekuanrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.RECEIVEPER �տ���
    msgs.Add('CCAS_PLAATRN.RECEIVEPER='+FrmEdt.ATFangWu.FieldByName('shoufangrenxingming').AsString);
    if length(FrmEdt.ATDaiKuan.FieldByName('shoufangrencunzhezhanghao').AsString) > 12 then
      //CCAS_PLAATRN.RECEIVEDEBITNO �տ��˽�ǿ�����
      msgs.Add('CCAS_PLAATRN.RECEIVEDEBITNO='+FrmEdt.ATDaiKuan.FieldByName('shoufangrencunzhezhanghao').AsString)
    else
      //CCAS_PLAATRN.RECEIVEACCNO �տ����ʺ�
      msgs.Add('CCAS_PLAATRN.RECEIVEACCNO='+FrmEdt.ATDaiKuan.FieldByName('shoufangrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.APTRETTP �ſ�MCA�ʻ���Ʒ����
    msgs.Add('CCAS_PLAATRN.APTRETTP=5502');
    //CCAS_PLAATRN.APTRTSTP �ſ�MCA�ʻ���Ʒ������
    msgs.Add('CCAS_PLAATRN.APTRTSTP=1001');
    //CCAS_PLAATRN.LAFGBRTY ��ǰ���������㷽ʽ
    msgs.Add('CCAS_PLAATRN.LAFGBRTY=���ٻ������������');
    //CCAS_PLAATRN.FSTREQFG �״λ����ձ�ʶ
    msgs.Add('CCAS_PLAATRN.FSTREQFG=һ�����º�Ļ����ջ���');

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
    msg := 'msgϵͳδ�ҵ��������ݡ�';
  end else begin
    mainid := FrmMain.AQOpen.FieldByName('mainid').AsString;

    msgs := TStringList.Create;
    msgs.Add('import');
    FrmEdt := TFrmEdt.Create(nil);
    FrmEdt.edit(mainid, false);
    //CCAS_CCTPERTRN.PERLSTNM �ͻ���
    msgs.Add('CCAS_CCTPERTRN.PERLSTNM='+getLastName(FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouxingming').AsString));
    //CCAS_CCTPERTRN.PERFSTNM �ͻ���
    msgs.Add('CCAS_CCTPERTRN.PERFSTNM='+getFirstName(FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouxingming').AsString));
    //CCAS_CCTPERTRN.CBISEXID �� ��
    if FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxingbie').AsString = '��' then
      msgs.Add('CCAS_CCTPERTRN.CBISEXID=Ů')
    else
      msgs.Add('CCAS_CCTPERTRN.CBISEXID=��');
    //CCAS_CCTPERTRN.PERCERDT ֤��������
    try
      msgs.Add('CCAS_CCTPERTRN.PERCERDT='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouzhengjiandaoqiri').AsDateTime));
    except
    end;
    //CCAS_CCTPERTRN.PERMRTST ����״��
    msgs.Add('CCAS_CCTPERTRN.PERMRTST=�ѻ�');
    //CCAS_CCTPERTRN.CBIBTHDA �������� yyyymmdd
    try
      msgs.Add('CCAS_CCTPERTRN.CBIBTHDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouchushengnianyue').AsDateTime));
    except
    end;

    //KYC���յȼ� CCAS_CCTPERTRN.PERKYC
    msgs.Add('CCAS_CCTPERTRN.PERKYC=�ͷ���');
    //CCAS_CCTPERTRN.PERHMTEL סլ�绰
    msgs.Add('CCAS_CCTPERTRN.PERHMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeioujiatingdianhua').AsString);
    //CCAS_CCTPERTRN.PERMBLNO �ƶ��绰
    msgs.Add('CCAS_CCTPERTRN.PERMBLNO='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeioushouji').AsString);
    //CCAS_CCTPERTRN.PERCMTEL ��λ�绰
    msgs.Add('CCAS_CCTPERTRN.PERCMTEL='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeioudanweidianhua').AsString);
    //CCAS_CCTPERTRN.PERHMAD1 ��ͥסַ1
    msgs.Add('CCAS_CCTPERTRN.PERHMAD1='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString);
    qu := copy(FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString, 1,
          pos('��', FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhudizhi').AsString)+1);
    //CCAS_CCTPERTRN.PERHMAD2 ��ͥסַ2
    msgs.Add('CCAS_CCTPERTRN.PERHMAD2='+qu);
    //CCAS_CCTPERTRN.PERHMAD3 ��ͥסַ3
    msgs.Add('CCAS_CCTPERTRN.PERHMAD3=�ൺ');
    //CCAS_CCTPERTRN.PERHMAD4 ��ͥסַ4
    msgs.Add('CCAS_CCTPERTRN.PERHMAD4=ɽ��');
    //CCAS_CCTPERTRN.PERHOMZP ��������
    msgs.Add('CCAS_CCTPERTRN.PERHOMZP='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyoubian').AsString);

    //CCAS_CCTPERTRN.DOMICILE �ͻ�����
    msgs.Add('CCAS_CCTPERTRN.DOMICILE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenguoji').AsString);
    //CCAS_CCTPERTRN.CUSDMCLR �������ڵ�
    msgs.Add('CCAS_CCTPERTRN.CUSDMCLR='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouhujisuozaidi').AsString);
    //CCAS_CCTPERTRN.PEROCCPA ְ ҵ
    msgs.Add('CCAS_CCTPERTRN.PEROCCPA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiougongzuogangwei').AsString);
    //CCAS_CCTPERTRN.PERNTLNO �� ��
    msgs.Add('CCAS_CCTPERTRN.PERNTLNO=����');
    //CCAS_CCTPERTRN.PERTITLE ְ ��
    msgs.Add('CCAS_CCTPERTRN.PERTITLE='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouzhicheng').AsString);
    //CCAS_CCTPERTRN.PEREDUBK �Ļ��̶�
    msgs.Add('CCAS_CCTPERTRN.PEREDUBK='+getCCASValue('jiekuanrenxueli', FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouxueli').AsString));
    //CCAS_CCTPERTRN.PEREDULV ���ѧλ
    msgs.Add('CCAS_CCTPERTRN.PEREDULV=����');
    //CCAS_CCTPERTRN.PERCMPNM �ֹ�����λ
    msgs.Add('CCAS_CCTPERTRN.PERCMPNM='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiougongzuodanwei').AsString);
    //CCAS_CCTPERTRN.WKIBUSTY ����λ��ҵ
    msgs.Add('CCAS_CCTPERTRN.WKIBUSTY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiougongzuodanweisuoshuhangye').AsString);
    //CCAS_CCTPERTRN.PERWOKDA �μӹ�������
    try
      msgs.Add('CCAS_CCTPERTRN.PERWOKDA='+
        formatdatetime('yyyymmdd',FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiougongzuonianxian').AsDateTime));
    except
    end;
    //CCAS_CCTPERTRN.WKIBEDAT �ֹ�������
    try
      msgs.Add('CCAS_CCTPERTRN.WKIBEDAT='+
        formatdatetime('yyyymmdd',IncYear(now,
        FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiourenxianzhinianxian').AsInteger*-1)));
    except
    end;
    //CCAS_CCTPERTRN.PERNWKDA ��ְ��������
    msgs.Add('CCAS_CCTPERTRN.PERNWKDA='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenrenxianzhinianxian').AsString);
    //CCAS_CCTPERTRN.PERRGCPT ��λע���ʱ�
    msgs.Add('CCAS_CCTPERTRN.PERRGCPT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrengongzuodanweizhuceziben').AsString);
    //CCAS_CCTPERTRN.PERHOMSO ��ס����Դ����ס״��
    msgs.Add('CCAS_CCTPERTRN.PERHOMSO='+FrmEdt.ATDaiKuan.FieldByName('jiekuanrenxianzhufangquanshu').AsString);
    //CCAS_CCTPERTRN.PERNLVDA ��סַʱ��
    try
      msgs.Add('CCAS_CCTPERTRN.PERNLVDA='+
        formatdatetime('yyyymmdd',IncYear(now, FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhushijian').AsInteger*-1)));
    except
    end;
    //CCAS_CCTPERTRN.LCLIVEYRLMT	��סַ��ס����
    msgs.Add('CCAS_CCTPERTRN.LCLIVEYRLMT='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenxianjuzhushijian').AsString);
    //CCAS_CCTPERTRN.PERCMPAD �ֵ�λ��ַ      
    msgs.Add('CCAS_CCTPERTRN.PERCMPAD='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString);
    //CCAS_CCTPERTRN.PERCMPAD2 �ֵ�λ��ַ2
    qu := copy(FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString, 1,
          pos('��', FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweidizhi').AsString)+1);
    msgs.Add('CCAS_CCTPERTRN.PERCMPAD2='+qu);
    //CCAS_CCTPERTRN.PERCMPAD4 �ֵ�λ��ַ3
    msgs.Add('CCAS_CCTPERTRN.PERCMPAD3=�ൺ');
    //CCAS_CCTPERTRN.PERCMPAD4 �ֵ�λ��ַ4
    msgs.Add('CCAS_CCTPERTRN.PERCMPAD4=ɽ��');
    //CCAS_CCTPERTRN.PERCMPZP ������λ�ʱ�
    msgs.Add('CCAS_CCTPERTRN.PERCMPZP='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrendanweiyoubian').AsString);
    //CCAS_CCTPERTRN.WKIMONIN �������������
    msgs.Add('CCAS_CCTPERTRN.WKIMONIN='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenpeiouyuegongzishouru').AsString);
    //CCAS_CCTPERTRN.FAMILYOTSALARY  ��ͥ������Ա������
    msgs.Add('CCAS_CCTPERTRN.FAMILYOTSALARY='+FrmEdt.ATJieKuanRen.FieldByName('jiekuanrenyuegongzishouru').AsString);
    //CCAS_CCTPERTRN.PERMTOTIN ��ͥ��������
    msgs.Add('CCAS_CCTPERTRN.PERMTOTIN='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezongshouru').AsString);
    //CCAS_CCTPERTRN.PERHMNCS ��ͥ��֧���ϼ�
    msgs.Add('CCAS_CCTPERTRN.PERHMNCS='+FrmEdt.ATJieKuanRen.FieldByName('jiatingyuezhichu').AsString);
    //CCAS_CCTPERTRN.PERCRDPT �ͻ�����
    msgs.Add('CCAS_CCTPERTRN.PERCRDPT=00');
    //CCAS_CCTPERTRN.PERCRCLS ���˿ͻ����õȼ�
    msgs.Add('CCAS_CCTPERTRN.PERCRCLS=δ����');
    //CCAS_CCTPERTRN.PERHMPER �����˿���
    if (FrmEdt.ATJieKuanRen.FieldByName('gongyangrenrenshu').AsString='') then
      msgs.Add('CCAS_CCTPERTRN.PERHMPER=0')
    else
      msgs.Add('CCAS_CCTPERTRN.PERHMPER='+FrmEdt.ATJieKuanRen.FieldByName('gongyangrenrenshu').AsString);
    //CCAS_CCTPERTRN.PERGDCAD ���������ͻ����
    msgs.Add('CCAS_CCTPERTRN.PERGDCAD=�ǹ�����');
    //CCAS_CCTPERTRN.PERHMMEM ��ͥ��Ա��
    msgs.Add('CCAS_CCTPERTRN.PERHMMEM='+FrmEdt.ATJieKuanRen.FieldByName('jiatingrenkou').AsString);

    //CCAS_RETAILTRAN.TOTPRICE �����ܼ�
    try
      msgs.Add('CCAS_RETAILTRAN.TOTPRICE='+VartoStr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    except
    end;
    //CCAS_RETAILTRAN.PRICE ������
    try
      msgs.Add('CCAS_RETAILTRAN.PRICE='+VartoStr(FrmEdt.ATFangWu.FieldByName('pinggujiage2').AsCurrency*10000));
    except
    end;
    //CCAS_RETAILTRAN.LCTBCTNO ����
    msgs.Add('CCAS_RETAILTRAN.LCTBCTNO='+FrmEdt.ATFangWu.FieldByName('fangwufanghao').AsString);
    //CCAS_RETAILTRAN.LCTBLDAR ���
    msgs.Add('CCAS_RETAILTRAN.LCTBLDAR='+FrmEdt.ATFangWu.FieldByName('fangwujianzhumianji').AsString);
    //tempgfdj ��������
    msgs.Add('tempgfdj='+FrmEdt.ATFangWu.FieldByName('pinggujiage').AsString);
    //LOCATION ��ĿҪ��
    //msgs.Add('LOCATION='+FrmEdt.ATFangWu.FieldByName('fangwudiliweizhi').AsString);

    //CCAS_PLAATRN.LAFAPYAM �ѽ����ڿ�
    try
      msgs.Add('CCAS_PLAATRN.LAFAPYAM='+VartoStr(FrmEdt.ATFangWu.FieldByName('shoufukuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFDRAMT ��������
    try
      msgs.Add('CCAS_PLAATRN.LAFDRAMT='+VartoStr(FrmEdt.ATDaiKuan.FieldByName('daikuanjine').AsCurrency*10000));
    except
    end;
    //CCAS_PLAATRN.LAFTERM ����������
    try
      msgs.Add('CCAS_PLAATRN.LAFTERM='+VartoStr(FrmEdt.ATDaiKuan.FieldByName('qixian').AsInteger*12));
    except
    end;
    //CCAS_PLAATRN.LAFRTMOD ���ʽ
    if FrmEdt.ATDaiKuan.FieldByName('huankuanfangshi').AsString = '�ȶ�' then
      msgs.Add('CCAS_PLAATRN.LAFRTMOD=�ȶϢ')
    else
      msgs.Add('CCAS_PLAATRN.LAFRTMOD=�ȶ��');
    //CCAS_PLAATRN.FLRATESCA ���ʸ�������
    msgs.Add('CCAS_PLAATRN.FLRATESCA='+FrmEdt.ATDaiKuan.FieldByName('lilvfudongbeli').AsString);

    //CCAS_PLAATRN.LAFPACT �����ʺ�
    msgs.Add('CCAS_PLAATRN.LAFPACT='+FrmEdt.ATDaiKuan.FieldByName('jiekuanrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.RECEIVEPER �տ���
    msgs.Add('CCAS_PLAATRN.RECEIVEPER='+FrmEdt.ATFangWu.FieldByName('shoufangrenxingming').AsString);
    //CCAS_PLAATRN.RECEIVEACCNO �տ����ʺ�
    msgs.Add('CCAS_PLAATRN.RECEIVEACCNO='+FrmEdt.ATDaiKuan.FieldByName('shoufangrencunzhezhanghao').AsString);
    //CCAS_PLAATRN.APTRETTP �ſ�MCA�ʻ���Ʒ����
    msgs.Add('CCAS_PLAATRN.APTRETTP=5502');
    //CCAS_PLAATRN.APTRTSTP �ſ�MCA�ʻ���Ʒ������
    msgs.Add('CCAS_PLAATRN.APTRTSTP=1001');
    //CCAS_PLAATRN.LAFGBRTY ��ǰ���������㷽ʽ
    msgs.Add('CCAS_PLAATRN.LAFGBRTY=���ٻ������������');
    //CCAS_PLAATRN.FSTREQFG �״λ����ձ�ʶ
    msgs.Add('CCAS_PLAATRN.FSTREQFG=һ�����º�Ļ����ջ���');

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
    msg := 'importfindϵͳδ�ҵ���������,Ҫ�½���';
  end else begin
    msg := 'importfindϵͳ���ҵ���������,Ҫ������';
  end;
  result := msg;
end;



end.
