function checkformdata(validateObj,validateType) {
	var testOk = false;

        var params = validateType.split("|");

	if (params[params.length-1] == 'bok'){
	fv['bok'] = true;
        }else{
	fv['bok'] = false;
        }

	switch (params[0]) {
		case 'CCASNUMBER': if (validateNumber(validateObj, params[1], params[2], params[3])) testOk = true; break;
		case 'CCASDATE'	: if (validtest(validateObj, params[1], params[2], params[3], params[4])) testOk = true; break;
		case 'CCASDEC15_2': if (validateMoney152(validateObj)) testOk = true; break;
		case 'CCASDEC9_8': if (validateMoney98(validateObj)) testOk = true; break;
		case 'CCASDEC8_4': if (validateMoney84(validateObj)) testOk = true; break;
		case 'CCASDEC8_2': if (validateMoney82(validateObj)) testOk = true; break;
		case 'FLAGVALUE' : if (validateflagvalue(validateObj)) testOk = true; break;
		case 'CCASCERTNO' : if (validatecertno(validateObj)) testOk = true; break;
		case 'CCASID' : if (validatenew(validateObj,params[1])) testOk = true; break;
		case 'CCASALLCH' : if (validatenew1(validateObj,params[1])) testOk = true; break;
		case 'BLANK'	: if (validateBlank(validateObj)) testOk = true; break;
                case 'CHARANDNUMBER' : if (validatecharandnumber(validateObj)) testOk = true; break;
                case 'ALLCHAR' : if (validateall(validateObj)) testOk = true; break;
                case 'NUMBER' : if (validatenum(validateObj)) testOk = true; break;
                case 'CCASLESS' : if (validateless(validateObj)) testOk = true; break;
                case 'CCASDEC9_6': if (validateMoney96(validateObj)) testOk = true; break;
                case 'CCASLEN': if (validlen1(validateObj)) testOk = true; break;
                case 'CCASLESS1' : if (validateless2(validateObj)) testOk = true; break;



		default	        : alert('Validation Type Not Found:\n'+params[0]);
				}
		if (!testOk ) return false;

	return true;
}
function validateForm(Frm, bConfirm, bDisable, bDisableR, groupError) {
	var testOk = false;
	if (groupError && fv['groupErrors'] < fv['switchToEbyE']) { 
		fv['groupError'] = 1; 
		errorData = new Array(); 
		}
	else
		fv['groupError'] = 0;
	
	for (var i=0; i<Frm.elements.length; i++) {						// Loops through all the form's elements		
		if (Frm.elements[i].getAttribute(fv['code'])) {				// Gets the validator attribute, if exists thus starting the validation
			var validateType = Frm.elements[i].getAttribute(fv['code']);
			var validateObj = Frm.elements[i];
			testOk = false;			
			var params = validateType.split("|");					// Separates validation string into parameters
			if (params[0] == 'money') {								// Sets flags for money syntax				
				var dollarsign=false;
				var grouping=false; 
				var decimal=false;
				dollarsign	= (params[1].indexOf('$') != -1);
				grouping	= (params[1].indexOf(',') != -1);
				decimal		= (params[1].indexOf('.') != -1);
				}
			
			if (params[params.length-1] == 'bok')					// Sets flag if field is allowed to be blank
				fv['bok'] = true;
			else
				fv['bok'] = false;
	
			switch (params[0]) {									// Calls appropriate validation function based on type				
				case 'CCASNUMBER': if (validateNumber(validateObj, params[1], params[2], params[3])) testOk = true; break;
		case 'CCASDATE'	: if (validtest(validateObj, params[1], params[2], params[3], params[4])) testOk = true; break;
		case 'CCASDEC15_2': if (validateMoney152(validateObj)) testOk = true; break;
		case 'CCASDEC9_8': if (validateMoney98(validateObj)) testOk = true; break;
		case 'CCASDEC8_4': if (validateMoney84(validateObj)) testOk = true; break;
		case 'CCASDEC8_2': if (validateMoney82(validateObj)) testOk = true; break;
		case 'FLAGVALUE' : if (validateflagvalue(validateObj)) testOk = true; break;
		case 'CCASCERTNO' : if (validatecertno(validateObj)) testOk = true; break;
		case 'CCASID' : if (validatenew(validateObj,params[1])) testOk = true; break;
		case 'CCASALLCH' : if (validatenew1(validateObj,params[1])) testOk = true; break;
		case 'BLANK'	: if (validateBlank(validateObj)) testOk = true; break;
                case 'CHARANDNUMBER' : if (validatecharandnumber(validateObj)) testOk = true; break;
                case 'ALLCHAR' : if (validateall1(validateObj, params[1])) testOk = true; break;
                case 'NUMBER' : if (validatenum(validateObj)) testOk = true; break;
                case 'CCASLESS' : if (validateless1(validateObj, params[1])) testOk = true; break;
                case 'CCASLEN': if (validlen1(validateObj)) testOk = true; break;
                case 'CCASLESS1' : if (validateless2(validateObj)) testOk = true; break;

		default	        : alert('Validation Type Not Found:\n'+params[0]);

				// Add additional cases here
				}
			if (!testOk && !fv['groupError']) return false;
			}
		}
	// Begin group error routine
	if (fv['groupError']) {
		fv['groupErrors']++;
		var alertStr = "The fields listed below have erroneous data or need to be filled in.\n\n";
		for (var i in errorData) {
//			fv['revertClass'] = errorData[i].className;
			if (typeof errorData[i].type != 'undefined'  && typeof errorData[i].name != 'undefined') { 
				errorData[i].className = fv['errorClass'];
				alertStr += " -" + formatName(errorData[i]) + "\n";
				}
			else {
				var temp = errorData[i];
				temp[0].className = fv['errorClass'];
				alertStr += " -" + formatName(temp[0]) + "\n";
				}
			errorProcess(errorData[0],0,1);
			}
		if (errorData.length > 0) {
			errorData[0].focus();
			alert(alertStr);
			return false;
			}       
		}
/*******************************************************
*	Any special conditions you have can be added here
********************************************************/		
/*		
	if (typeof bConfirm == 'undefined') bConfirm = 0;			
	if (typeof bDisable == 'undefined') bDisable = 0;	
	if (typeof bDisableR == 'undefined') bDisableR = 0;	
	if (bConfirm) {
		if(!confirm(fv['confirmMsg']))
			{
			if (fv['confirmAbortMsg'] != '') alert(fv['confirmAbortMsg']);		
			return false;
			}
		}
	if (bDisable) Frm.elements[fv['submitButton']].disabled=true;			
	if (bDisableR) Frm.elements[fv['resetButton']].disabled=true;			

	return true;	*/												// Form has been validated
	}

function validateBlank(formObj) {
	var objName = formatName(formObj);

		if (Trim(formObj.value) == "") {
			return errorProcess2(formObj,0,1,'Please enter the '+objName);
			}

	return true;
	}
function checkBlank(formObj) {
	if (formObj.value == "")
		return true;
	var regex = new RegExp(/^\s+$/);
	if (regex.test(Trim(formObj.value)))
		return true;
	return false;
	}


function validateNumber(formObj, type, lb, ub) {
	var objName = formatName(formObj);
	formObj.value = Trim(formObj.value);
	if (fv['bok'] && checkBlank(formObj))
		{ fv['bok']=false; return true; }

	var num = formObj.value;
	if (isNaN(num) || checkBlank(formObj)) {
		return errorProcess2(formObj,1,1,'请输入一个有效数字');
		}

	var regex = /^\d+$/;
		if (!regex.test(formObj.value)) {
			return errorProcess2(formObj,1,1,'请输入一个有效数字');

		}

	num = (parseInt(type) == 1) ? parseFloat(num) : parseInt(num) ;
	if (num < lb || num > ub)	{
		return errorProcess2(formObj,1,1,'Please enter a number between ' + lb + ' and ' + ub);
		}
	return true;
	}
function validatecertno(formObj) {
var objName = formatName(formObj);
if (checkBlank(formObj))
{ return true; }

var id=formObj.value;
if(id.length!=15 && id.length!=18)
return errorProcess2(formObj,1,1,'身份证号码位数不正确');

if(id.length==18){
var szVerCode= ['1','0','X','9','8','7','6','5','4','3','2'];
var  iW = ['7', '9', '10', '5', '8', '4', '2', '1', '6', '3', '7', '9', '10', '5', '8', '4', '2'];
var  identidyCard=id;
var iS = 0;
var i;
for(i=0;i<17;i++)
{

     iS += parseInt(identidyCard.charAt(i)) * parseInt(iW[i]);

}
var iY = iS%11;
if(id.charAt(17)!=szVerCode[iY]){

return errorProcess2(formObj,1,1,'身份证号码校验位错误');
}

}

return true;
}
function validateDate(formObj, dateStr, delim, code, specDate) {

	var objName = formatName(formObj);
	if (fv['bok'] && checkBlank(formObj))
		{ fv['bok']=false; return true; }
	var months = ['January','February','March','April','May','June','July','August','September','October','November','December'];
	var vDate = formObj.value;
	var dateStr1 ='yyyymmdd';
	var dateStr  ='yyyymmdd';

	if (vDate.length==6) {vDate="20"+vDate; dateStr="yy"+dateStr;}
	var mPlace = dateStr.indexOf("m");
	var dPlace = dateStr.indexOf("d");
	var yPlace = dateStr.indexOf("y");
	var yLength = dateStr.lastIndexOf("y") - yPlace + 1;
	var dateReg = dateStr.replace(/\w/g,"\\d");

	dateReg = dateReg.replace(/-/g,"[" + delim + "]");
	dateReg = "^" + dateReg + "$";
	var day = vDate.substring(dPlace, dPlace+2);

	if (parseInt(day)>31)
		return errorProcess2(formObj,1,1,"天数超过限制!");
	var month = vDate.substring(mPlace, mPlace+2);
	if (parseInt(month)>12)
		return errorProcess2(formObj,1,1,"月份超过限制!");
	var year = vDate.substring(yPlace, yPlace + yLength);

	var newdate = new Date(year,month-1,day);
	if ((year + month + day) != newdate.getYear()
			+("0"+(newdate.getMonth()+1)).substr(("0"+(newdate.getMonth()+1)).length-2,2)
			+("0"+newdate.getDate()).substr(("0"+newdate.getDate()).length-2,2) )
		return errorProcess2(formObj,1,1,"日期非法!");
	var regex = new RegExp(dateReg);
	var d = new Date(months[month-1] + " " + day + ", " + year);
	var today = (specDate == 'today') ? new Date() : new Date(specDate);
	today.setHours(0);
	today.setMinutes(0);
	today.setSeconds(0);
	today.setMilliseconds(0);
	var timeDiff = today.getTime() - d.getTime();
	var dateOk = false;
	switch (parseInt(code)) {
		case 1 : // Before specDate
			dateOk = (timeDiff > 0);
			break;
		case 2 : // Before or on specDate
			dateOk = ((timeDiff + 86400000) > 0);
			break;
		case 3 : // After specDate
			dateOk = (timeDiff < 0);
			break;
		case 4 : // After or on specDate
			dateOk = ((timeDiff - 86400000) < 0);
			break;
		default : dateOk = true;
		}
	if (!regex.test(vDate) || d == 'NaN' || !dateOk) {
		return errorProcess2(formObj,1,1,"请输入一个正确的日期书写格式"+dateStr1);
		}
	return true;
	}

function addError(o) {
	errorData[errorData.length] = o;
	}
/***************************************************************************/
function formatName(o) {
	var wStr = (o.name) ? o.name : o.id;
	wStr = wStr.replace(/_/g," ");
	return wStr;
	}
/***************************************************************************/
function errorProcess(o, sel, foc) {
	fv['revertClass'] = o.className;
	o.className = fv['errorClass'];
	if (sel) o.select();
	if (o.type == 'hidden')
		foc = 0;
	if (foc) o.focus();
	}

function errorProcess2(o, sel, foc, error) {
	var ret = false;
	if (fv['groupError']) { addError(o); ret = true; }
	else {
		alert(error);
		if (sel) o.select();

		if (o.type == 'hidden')
			foc = 0;
		if (foc) o.focus();
		}
	fv['revertClass'] = o.className;
	o.className = fv['errorClass'];
	return ret;
	}
/***************************************************************************/
function clearStyle(o) {
	if (o.className == fv['errorClass']) o.className = fv['revertClass'];
	}
/***************************************************************************/
function puncStr(str) {
	str = str.replace("pipe", "|");
	return str.replace(/([\\\|\(\)\[\{\^\$\*\+\?\.])/g,"\\$1");
	}
function validateMoney152(formObj) {
	var objName = formatName(formObj);
	formObj.value = Trim(formObj.value);
	if (fv['bok'] && checkBlank(formObj))
		{ fv['bok']=false; return true; }

	var moneySyntax;

	if (formObj.value.length==0) {	return errorProcess2(formObj,1,1,objName+'不能为空');}

		// No params set, all special chars become optional
		 moneyReg="^[0-9]{1,13}(\\.[0-9]{1,2})?$"; moneySyntax="XXXXX(13位)[.XX](2位)";
	var regex = new RegExp(moneyReg);
	if (!regex.test(formObj.value)) {

		return errorProcess2(formObj,1,1,formObj.value+'请按这个格式进行输入 '+moneySyntax+' for '+objName+'.');
		}

	return true;
}
function validateMoney98(formObj) {
	var objName = formatName(formObj);
	formObj.value = Trim(formObj.value);
	if (fv['bok'] && checkBlank(formObj))
		{ fv['bok']=false; return true; }
        var objvalue = Trim(formObj.value);
	if(objvalue.length > 0){
	   if(objvalue.substr(0,1)=='-')
	      objvalue= objvalue.substr(1,objvalue.length);
		
	}
	var moneySyntax;

	if (formObj.value.length==0) {	return errorProcess2(formObj,1,1,objName+'不能为空');}

		// No params set, all special chars become optional
		 moneyReg="^[0-9]{1,2}(\\.[0-9]{1,7})?$"; moneySyntax="XXXXX(2位)[.XX](7位)";
	var regex = new RegExp(moneyReg);
	if (!regex.test(objvalue)) {

		return errorProcess2(formObj,1,1,formObj.value+'请按这个格式进行输入 '+moneySyntax+' for '+objName+'.');
		}
	return true;
	}
function validateMoney82(formObj) {
	var objName = formatName(formObj);
	formObj.value = Trim(formObj.value);
	if (fv['bok'] && checkBlank(formObj))
		{ fv['bok']=false; return true; }

	var moneySyntax;

	if (formObj.value.length==0) {	return errorProcess2(formObj,1,1,objName+'不能为空');}

		// No params set, all special chars become optional
		 moneyReg="^[0-9]{1,6}(\\.[0-9]{1,2})?$"; moneySyntax="XXXXX(6位)[.XX](2位)";
	var regex = new RegExp(moneyReg);
	if (!regex.test(formObj.value)) {

		return errorProcess2(formObj,1,1,formObj.value+'请按这个格式进行输入 '+moneySyntax+' for '+objName+'.');
		}
	return true;
	}
function validateMoney84(formObj) {
	var objName = formatName(formObj);
	formObj.value = Trim(formObj.value);
	if (fv['bok'] && checkBlank(formObj))
		{ fv['bok']=false; return true; }
        var objvalue = Trim(formObj.value);
	if(objvalue.length > 0){
	   if(objvalue.substr(0,1)=='-')
	      objvalue= objvalue.substr(1,objvalue.length);
		
	}
	var moneySyntax;

	if (formObj.value.length==0) {	return errorProcess2(formObj,1,1,objName+'不能为空');}

		// No params set, all special chars become optional
		 moneyReg="^[0-9]{1,4}(\\.[0-9]{1,4})?$"; moneySyntax="XXXXX(4位)[.XX](4位)";
	var regex = new RegExp(moneyReg);
	if (!regex.test(objvalue)) {

		return errorProcess2(formObj,1,1,formObj.value+'请按这个格式进行输入 '+moneySyntax+' for '+objName+'.');
		}
	return true;
	}

function validateflagvalue(formObj) {

	return true;
	}
function validtest(formObj, dateStr, delim, code, specDate) {
	var objName = formatName(formObj);
	if (fv['bok'] && checkBlank(formObj))
		{ fv['bok']=false; return true; }
		
	var num = formObj.value;
	if (isNaN(num) || checkBlank(formObj)) {
		return errorProcess2(formObj,1,1,'请输入一个有效数字');
		}

	var regex = /^\d+$/;
		if (!regex.test(formObj.value)) {
			return errorProcess2(formObj,1,1,'请输入一个有效数字');

		}	
		
		
		
	var months = ['January','February','March','April','May','June','July','August','September','October','November','December'];
	var vDate = formObj.value;
	var dateStr1 ='yyyymmdd';
	var dateStr  ='yyyymmdd';

	if (vDate.length==6) {vDate="20"+vDate; dateStr="yy"+dateStr;}
	var mPlace = dateStr.indexOf("m");
	var dPlace = dateStr.indexOf("d");
	var yPlace = dateStr.indexOf("y");
	var yLength = dateStr.lastIndexOf("y") - yPlace + 1;
	var dateReg = dateStr.replace(/\w/g,"\\d");
	dateReg = dateReg.replace(/-/g,"[" + delim + "]");
	dateReg = "^" + dateReg + "$";
	var day = vDate.substring(dPlace, dPlace+2);

	if (eval(day)>31 || eval(day) <=0 )
		return errorProcess2(formObj,1,1,"天数超过限制!"+day);
	var month = vDate.substring(mPlace, mPlace+2);
	if (eval(month)>12)
		return errorProcess2(formObj,1,1,"月份超过限制!");
	var year = vDate.substring(yPlace, yPlace + yLength);

	var newdate = new Date(year,month-1,day);
	var date01 =year + month + day ;
	var date02 =(newdate.getYear()+("0"+(newdate.getMonth()+1)).substr(("0"+(newdate.getMonth()+1)).length-2,2)+("0"+newdate.getDate()).substr(("0"+newdate.getDate()).length-2,2)).substr(0,8);

	if((eval(year)%4)!=0){
	    if(eval(month)==2){
	       if(eval(day)>28)
	       return errorProcess2(formObj,1,1,"日期错误!");
	    }

	}
	if((eval(year)%4)==0){
	    if(eval(month)==2){
	       if(eval(day)>29)
	       return errorProcess2(formObj,1,1,"日期错误!");
	    }

	}

	var datetest = false;
	switch (eval(month*1)) {
		case 1 : // Before specDate
		case 3 :
		case 5 :
		case 7 :
		case 8 :
		case 10 :
		case 12 :
			datetest = false;
			break;
		case 4 :
		case 6 :
		case 9 :
		case 11 :
			datetest = (eval(day)>30);
			break;

		default : datetest = false;
		}


	if(datetest)
	  return errorProcess2(formObj,1,1,"日期错误!");

	var regex = new RegExp(dateReg);
	var d = new Date(months[month-1] + " " + day + ", " + year);
	var today = (specDate == 'today') ? new Date() : new Date(specDate);
	today.setHours(0);
	today.setMinutes(0);
	today.setSeconds(0);
	today.setMilliseconds(0);
	var timeDiff = today.getTime() - d.getTime();
	var dateOk = false;
	switch (parseInt(code*1.00)) {
		case 1 : // Before specDate
			dateOk = (timeDiff > 0);
			break;
		case 2 : // Before or on specDate
			dateOk = ((timeDiff + 86400000) > 0);
			break;
		case 3 : // After specDate
			dateOk = (timeDiff < 0);
			break;
		case 4 : // After or on specDate
			dateOk = ((timeDiff - 86400000) < 0);
			break;
		default : dateOk = true;
		}
	if (!regex.test(vDate) || d == 'NaN' || !dateOk) {
		return errorProcess2(formObj,1,1,"请输入一个正确的日期书写格式"+dateStr1);
		}



	return true;
	}


function validatecertid(formObj,formObj1) {
var objName = formatName(formObj);
if (checkBlank(formObj))
{ return true; }

var id=formObj.value;
var birdt=formObj1.value;
if(id.length!=15 && id.length!=18)
return errorProcess2(formObj,1,1,'身份证号码位数不正确');
if(id.length==15){
   if("19"+id.substr(6,6)!=birdt){
   	return errorProcess2(formObj1,1,1,'出生日期与身份证出生日期不匹配');
}
}
if(id.length==18){

	if(id.substr(6,8)!=birdt){
   	return errorProcess2(formObj1,1,1,'出生日期与身份证出生日期不匹配');
}

var szVerCode= ['1','0','X','9','8','7','6','5','4','3','2'];
var  iW = ['7', '9', '10', '5', '8', '4', '2', '1', '6', '3', '7', '9', '10', '5', '8', '4', '2'];
var  identidyCard=id;
var iS = 0;
var i;
for(i=0;i<17;i++)
{

     iS += parseInt(identidyCard.charAt(i)) * parseInt(iW[i]);

}
var iY = iS%11;
if(id.charAt(17)!=szVerCode[iY]){

return errorProcess2(formObj,1,1,'身份证号码校验位错误');
}

}

return true;
}




var fv = new Array()

/****************************************************
*	Globals.  Modify these to suit your setup
****************************************************/

//	Attribute used for fValidate Validator codes
fv['code'] = 'alt';

//	Attribute used for custom error messages (override built-in error messages)
fv['emsg'] = 'emsg';

//	Attribute used for pattern with custom validator type
fv['pattern'] = 'pattern';

//	Change this to the classname you want for the error highlighting
fv['errorClass'] = 'errHilite';

//	If the bConfirm flag is set to true, the users will be prompted with CONFIRM box with this message
fv['confirmMsg'] = 'Your Data is about to be sent.\nPlease click \'Ok\' to proceed or \'Cancel\' to abort.';

//	If user cancels CONFIRM, then this message will be alerted.  If you don't want this alert to show, then
//	empty the variable (  fv['confirmAbortMsg'] = '';  )
fv['confirmAbortMsg'] = 'Submission cancelled.  Data has not been sent.';

//	Enter the name/id of your form's submit button here (works with type=image too)
fv['submitButton'] = 'Submit';

//	Enter the name/id of your form's reset button here (works with type=image too)
fv['resetButton'] = 'Reset';

//	Ender the name or id of the SELECT object here. Make sure you pay attention to the values (CC Types)
//	used in the case statement for the function validateCC()
fv['ccType'] = 'Credit_Card_Type';

//	NOTE: The config value below exists for backwards compatibility with fValidate 3.55b.  If you have a newer
//	version, use the above fv['ccType'] instead.
//	Enter the DOM name of the SELECT object here. Make sure you pay attention to the values (CC Types)
//	used in the case statement for the function validateCC()
fv['ccTypeObj'] = 'form1.Credit_Card_Type';

//	Number of group error mode alerts before switching to normal error mode
fv['switchToEbyE'] = 3;

/**********************************************************
*	Do not edit This section. Start below
***********************************************************/

function FV_bs() {
	this.ver = navigator.appVersion; //Cheking for browser version
	this.agent = navigator.userAgent; //Checking for browser type
    var minor = parseFloat(this.ver);
    var major = parseInt(minor);
	this.dom = document.getElementById?1:0;
	this.opera = (this.agent.indexOf("opera") != -1);
	var iePos  = this.ver.indexOf('msie');
	if (iePos !=-1) {
		minor = parseFloat(this.ver.substring(iePos+5,this.ver.indexOf(';',iePos)))
		major = parseInt(minor);
		}
	this.ie = ((iePos!=-1) && (!this.opera));
	this.gecko = ((navigator.product)&&(navigator.product.toLowerCase()=="gecko"))?true:false;
    this.ie4   = (this.ie && major == 4);
    this.ie4up = (this.ie && minor >= 4);
    this.ie5   = (this.ie && major == 5);
    this.ie5up = (this.ie && minor >= 5);
    this.ie5_5  = (this.ie && (this.agent.indexOf("msie 5.5") !=-1));
    this.ie5_5up = (this.ie && minor >= 5.5);
    this.ie6   = (this.ie && major == 6);
    this.ie6up = (this.ie && minor >= 6);
	this.mac = this.agent.indexOf("Mac")>-1;
	}

/****************************************************
*	Constants. Do not edit
****************************************************/

//	Global used for flagging the validateBlank() function within most other validation functions
fv['bok'] = false;

//	Global used for class switching.
fv['revertClass'] = '';

//	Placeholder for Group Error boolean
fv['groupError'] = 0;

//	Placeholder for number of group error alerts
fv['groupErrors'] = 0;

//	Browser Sniffer
fv['is'] = new FV_bs();

//	Array for error totalling while in group error mode
var errorData = new Array();

//	EOF
function LTrim(str)
{

    var whitespace = new String(" \t\n\r");

    var s = new String(str);



    if (whitespace.indexOf(s.charAt(0)) != -1)

    {

        var j=0, i = s.length;

        while (j < i && whitespace.indexOf(s.charAt(j)) != -1)

        {

            j++;

        }

        s = s.substring(j, i);

    }

    return s;

}
function RTrim(str)

{

    var whitespace = new String(" \t\n\r");

    var s = new String(str);



    if (whitespace.indexOf(s.charAt(s.length-1)) != -1)

    {

        var i = s.length - 1;

        while (i >= 0 && whitespace.indexOf(s.charAt(i)) != -1)

        {

            i--;

        }

        s = s.substring(0, i+1);

    }

    return s;

}


function Trim(str)

{

    return RTrim(LTrim(str));

}
function validatenew(formObj,length)
 {
var objName = formatName(formObj);
if (fv['bok'] && checkBlank(formObj))
{ fv['bok']=false; return true; }
var valid = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\n"
var ok = "yes";
var temp;
if(length!=Trim(formObj.value.length)){
return errorProcess2(formObj,1,1,'请输入'+length+'位字符');
}
for (var i=0; i<formObj.value.length; i++)
 {
temp = "" + formObj.value.substring(i, i+1);
if (valid.indexOf(temp) == "-1") ok = "no";
}
if (ok == "no")
{
return errorProcess2(formObj,1,1,'请输入字母和数字');
   }
return true ;
}
function validatenew1(formObj,length)
 {
var objName = formatName(formObj);
if (fv['bok'] && checkBlank(formObj))
{ fv['bok']=false;
return true; }
var valid = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789~!@#$%^&*()_+|}{:><`-=';?/.,\n\"";
var ok = "yes";
var temp;
if(length!=Trim(formObj.value.length)){
return errorProcess2(formObj,1,1,'请输入'+length+'位字符');
}
for (var i=0; i<formObj.value.length; i++)
 {
temp = "" + formObj.value.substring(i, i+1);
if (valid.indexOf(temp) == "-1") ok = "no";
}
if (ok == "no")
{
return errorProcess2(formObj,1,1,'请输入字母,数字和符号');
   }
return true ;
}

function lengthInBytes(s) {
	var ret = 0;
	for (var i=0;i<s.length;i++)
		if (s.charCodeAt(i) > 127)
			ret += 2;
		else
			ret++;
	return ret;
}
function adv_format(value,num) //四舍五入
{
var a_str = formatnumber(value,num);
var a_int = parseFloat(a_str);
if (value.toString().length>a_str.length)
{
var b_str = value.toString().substring(a_str.length,a_str.length+1)
var b_int = parseFloat(b_str);
if (b_int<5)
{
return a_str
}
else
{
var bonus_str,bonus_int;
if (num==0)
{
bonus_int = 1;
}
else
{
bonus_str = "0."
for (var i=1; i<num; i++)
bonus_str+="0";
bonus_str+="1";
bonus_int = parseFloat(bonus_str);
}
a_str = formatnumber(a_int + bonus_int, num)
}
}
return a_str
}

function formatnumber(value,num) //直接去尾
{
var a,b,c,i
a = value.toString();
b = a.indexOf('.');
c = a.length;
if (num==0)
{
if (b!=-1)
a = a.substring(0,b);
}
else
{
if (b==-1)
{
a = a + ".";
for (i=1;i<=num;i++)
a = a + "0";
}
else
{
a = a.substring(0,b+num+1);
for (i=c;i<=b+num;i++)
a = a + "0";
}
}
return a
}

function validatecharandnumber(formObj)
 {
var objName = formatName(formObj);
if (fv['bok'] && checkBlank(formObj))
{ fv['bok']=false; return true; }
if(Trim(formObj.value).length==0)
return errorProcess2(formObj,1,1,'请输入内容');
var valid = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\n"
var ok = "yes";
var temp;
for (var i=0; i<formObj.value.length; i++)
 {
temp = "" + formObj.value.substring(i, i+1);
if (valid.indexOf(temp) == "-1") ok = "no";
}
if (ok == "no")
{
return errorProcess2(formObj,1,1,'请输入字母和数字');
   }
return true ;
}
function validateall(formObj){
var objName = formatName(formObj);
if (fv['bok'] && checkBlank(formObj)){
	fv['bok']=false; return true;
}
if(Trim(formObj.value).length==0)
return errorProcess2(formObj,1,1,'请输入内容');
var valid = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789~!@#$%^&*()_+|}{:><`-=';?/.,\n\"";
var ok = "yes";
var temp;
for (var i=0; i<formObj.value.length; i++)
 {
temp = "" + formObj.value.substring(i, i+1);
if (valid.indexOf(temp) == "-1") ok = "no";
}
if (ok == "no")
{
return errorProcess2(formObj,1,1,'请输入字母,数字和符号');
   }
return true ;
}
function validatenum(formObj)
 {
var objName = formatName(formObj);
if (fv['bok'] && checkBlank(formObj))
{ fv['bok']=false;
return true; }
if(Trim(formObj.value).length==0)
return errorProcess2(formObj,1,1,'请输入内容');
var valid = "0123456789";
var ok = "yes";
var temp;
for (var i=0; i<formObj.value.length; i++)
 {
temp = "" + formObj.value.substring(i, i+1);
if (valid.indexOf(temp) == "-1") ok = "no";
}
if (ok == "no")
{
return errorProcess2(formObj,1,1,'请输入数字');
   }
return true ;
}
function validateless(formObj)
 {
 	
var objName = formatName(formObj);
if (fv['bok'] && checkBlank(formObj))
{ fv['bok']=false; return true; }
if(lengthInBytes(Trim(formObj.value))>formObj.maxLength){
return errorProcess2(formObj,1,1,'请输入小于或等于'+formObj.maxLength+'位字符');
}
return true ;
}
function validateless1(formObj,flg)
{	
var objName = formatName(formObj);
if (fv['bok'] && checkBlank(formObj))
{ fv['bok']=false; return true; }

if(flg=='Y'){
if(lengthInBytes(Trim(formObj.value))==0){
return errorProcess2(formObj,1,1,'请输入内容');
}
}
if(lengthInBytes(Trim(formObj.value))>formObj.maxLength){
return errorProcess2(formObj,1,1,'请输入小于或等于'+formObj.maxLength+'位字符');
}
return true ;
}

function validateall1(formObj,flg){
var objName = formatName(formObj);
if (fv['bok'] && checkBlank(formObj)){
	fv['bok']=false; return true;
}
if(Trim(formObj.value).length==0)
return errorProcess2(formObj,1,1,'请输入内容');
var valid = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789~!@#$%^&*()_+|}{:><`-=';?/.,\n\"";
var ok = "yes";
var temp;
if(flg=='Y'){
if(lengthInBytes(Trim(formObj.value))==0){
return errorProcess2(formObj,1,1,'请输入内容');
}
}
for (var i=0; i<formObj.value.length; i++)
 {
temp = "" + formObj.value.substring(i, i+1);
if (valid.indexOf(temp) == "-1") ok = "no";
}
if (ok == "no")
{
return errorProcess2(formObj,1,1,'请输入字母,数字和符号');
   }
return true ;
}
function validateMoney96(formObj) {
	var objName = formatName(formObj);
	formObj.value = Trim(formObj.value);
	if (fv['bok'] && checkBlank(formObj))
		{ fv['bok']=false; return true; }

	var moneySyntax;

	if (formObj.value.length==0) {	return errorProcess2(formObj,1,1,objName+'不能为空');}

		// No params set, all special chars become optional
		 moneyReg="^[0-9]{1,9}(\\.[0-9]{1,6})?$"; moneySyntax="XXXXXXXXX(9位)[.XXXXXX](6位)";
	var regex = new RegExp(moneyReg);
	if (!regex.test(formObj.value)) {

		return errorProcess2(formObj,1,1,formObj.value+'请按这个格式进行输入 '+moneySyntax+' for '+objName+'.');
		}

	return true;
}
function validlen(formObj)
{	
var objName = formatName(formObj);
if (fv['bok'] && checkBlank(formObj))
{ fv['bok']=false; return true; }
if(lengthInBytes(Trim(formObj.value))!=formObj.maxLength){
return errorProcess2(formObj,1,1,'请输入'+formObj.maxLength+'位字符');
}
return true ;
}
function validlen1(formObj,flg)
{	
var objName = formatName(formObj);
if (fv['bok'] && checkBlank(formObj))
{ fv['bok']=false; return true; }

if(flg=='Y'){
if(lengthInBytes(Trim(formObj.value))==0){
return errorProcess2(formObj,1,1,'请输入内容');
}
if(lengthInBytes(Trim(formObj.value))!=formObj.maxLength){
return errorProcess2(formObj,1,1,'请输入'+formObj.maxLength+'位字符');
}
}
return true ;
}
function disableRightClick()
{
  return false;
}
window.document.oncontextmenu=disableRightClick;
function lengthInBytes1(s) {
	var ret = 0;
	for (var i=0;i<s.length;i++)
		if (s.charCodeAt(i) > 127)
			ret += 2;
		else
			ret++;
			
	ret= ret+2*countlength(s);
	return ret;
}
function countlength(s) {
	var counter=0;
	var ret = 0;
	var flag='';
	var flag1=0;
	if(s.charCodeAt(0)>127){
		flag='chs';
		counter++;
		for (var i=0;i<s.length;i++)
		   if (s.charCodeAt(i) > 127){
		       if(flag=='eng'&&flag1==1){
		       counter++;
		       flag1=0;	
		       flag='chs';		    
		       }	    	
		   }else{
		       if(flag=='chs'&&flag1==0){
		       flag1=1;	
		       flag='eng';		    
		       }	 		
	           }
						
        }else{
                flag='chs';
		for (var i=0;i<s.length;i++)
		   if (s.charCodeAt(i) > 127){
		       if(flag=='eng'&&flag1==1){
		       counter++;
		       flag1=0;	
		       flag='chs';		    
		       }	    	
		   }else{
		       if(flag=='chs'&&flag1==0){
		       flag1=1;	
		       flag='eng';		    
		       }	 		
	           }        
        }
	return counter;
}
function validateless2(formObj)
 {
var objName = formatName(formObj);
if (fv['bok'] && checkBlank(formObj))
{ fv['bok']=false; return true; }
if(lengthInBytes1(Trim(formObj.value))>formObj.maxLength){
return errorProcess2(formObj,1,1,'请输入小于或等于'+formObj.maxLength+'位字符');
}	
return true ;
}

function validFileName(lj){
    var counter = lj.lastIndexOf("\\");
    if (counter<0) counter = -1;
    var filename = lj.substring(counter+1,lj.length);
    if (filename.indexOf(' ')>=0) {
        alert('文件名中不能有空格!');
        return false;
    }
    var filename1 = lj.substring(counter+1,lj.length)  ;
    var counter1 = filename1.lastIndexOf(".");
    filename1 = filename1.substring(0,counter1);
    if(lengthInBytes(filename1)>20){
       alert("文件名长度大于20个字符!");
       return false;
    }
   var fso, f;
   fso = new ActiveXObject("Scripting.FileSystemObject");
   try {
   	f = fso.GetFile(lj);
   } catch (e) {
   	alert(lj+e.description);
   	return false;
   }
    return true;
}

//\x00-\xff 表示的是 ASCII 编码范围，0～255，而 /[^\x00-\xff]/ig 表示的是“非\x00-\xff”，“^”是“非”的意思。
//汉字是双字节，所以 JavaScript 把汉字的值认为是大于 \xff 的。这个正则表达式想要找的其实就是除 ASCII 码之外的字符。
function getStrLen(strTemp) {
    var cArr = strTemp.match(/[^\x00-\xff]/ig);
    return strTemp.length + (cArr == null ? 0 : cArr.length);
}
