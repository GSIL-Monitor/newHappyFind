<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>乐寻管理平台-添加借贷信息</title>
<script type="text/javascript" src="${request.contextPath}/js/jquery-1.3.2.min.js"></script>
<script language="javascript" type="text/javascript" src="${request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
<script language="javascript" type="text/javascript" src="${request.contextPath}/js/DateComon.js"></script>

<link href="${request.contextPath}/CVE.css" rel="stylesheet" type="text/css" />
<style>
.addPrice{width:700px;height:600px;}
</style>
</head>

<body>
	<div class="addbox addPrice">
    	<div class="title">添加举报信息</div>
    	 <form id="releaseform"  method="post">
        <div class="addcon">
        	<ul id="litable">
        	 <input name="release.moduser" value="admin" class="" >
        	 <input name="release.id" value="${release.id!}" class="" >
        	 <div class="datatbl">
                	<table>
                    	<tr class="bg">
                        	<th>姓名<font color="red">*</font></th>
                        	<td> <input name="release.name" id="name" class="defText1" value="${release.name!}"></td>
                        	<th>身份证号<font color="red">*</font></th>
                        	<td> <input name="release.idCard" id="idCard" class="defText1" value='${release.idCard!}'></td>
                        </tr>
                        <tr class="bg">
                        	<th>贷款金额<font color="red">*</font></th>
                        	<td> <input name="release.loanAmount" id="loanAmount" class="defText1" value="${release.loanAmount!}"></td>
                        	<th>欠款金额</th>
                        	<td> <input name="release.debtAmount" class="defText1" value='${release.debtAmount!}'></td>
                        </tr>
                        <tr class="bg">
                        	<th>贷款机构</th>
                        	<td>		<select name="release.loanInstitutions" id="loanInstitutions" class="defText1">
			                        	<option value="银行" >银行</option>
					                	<option value="互联网金融">互联网金融</option>
					                	<option value="小贷公司">小贷公司</option>
					                	<option value="担保公司">担保公司</option>
					                	<option value="个人">民间借贷</option>
					                	<option value="其他机构">其他机构</option>
			                        </select>
                        	</td>
                        	<th>贷款期限</th>
                        	<td> <input name="release.loanTimelimit" id="loanTimelimit" class="defText1" value='${release.loanTimelimit!}'></td>
                        </tr>
                        <tr class="bg">
                        	<th>联系方式1<font color="red">*</font></th>
                        	<td> <input name="release.contactnumber1" id="contactnumber1" class="defText1" value="${release.contactnumber1!}"></td>
                        	<th>逾期日期<font color="red">*</font></th>
                        	<td> <select name="release.overdueTime" id="overdueTime" class="defText1">
			                        	<option value="30天以内" >30天以内</option>
					                	<option value="30天~59天">30天~59天</option>
					                	<option value="60天~89天">60天~89天</option>
					                	<option value="90天~119天">90天~119天</option>
					                	<option value="120天~180天">120天~180天</option>
					                	<option value="180以上">180以上</option>
			                        </select>
			                </td>
                        </tr>
                          <tr class="bg">
                        	<th>联系方式2</th>
                        	<td> <input name="release.contactnumber2" class="defText1" value="${release.contactnumber2!}"></td>
                        	<th>联系方式3</th>
                        	<td> <input name="release.contactnumber3" class="defText1" value='${release.contactnumber3!}'></td>
                        </tr>
                         <tr class="bg">
                        	<th title="当机构查看本信息时向您付费">查询价格<font color="red">*</font></th>
                        	<td> <input name="release.selectAmount" id="selectAmount" class="defText1" value="${release.selectAmount!}"></td>
                        	<th>是否匿名</th>
                        	<td> <select name="release.isAnonymity" id="isAnonymity" class="defText1">
			                        	<option value="1" >是</option>
					                	<option value="0">否</option>
			                        </select></td>
                        </tr>
	                     <tr class="bg">
	                       	<th>举报时间</th>
                        	<td><input name="release.releaseTime" id="releaseTime" class="defText1" value="${release.releaseTime!}"></td>
                        	<th></th>
                        	<td> </td>
	                    </tr>
	                    <tr>
	                       	<th colspan=4><input name="Fruit" type="checkbox" value="" /><a href="#">《乐寻平台服务条款》</a></th>
	                    </tr>
                    </table>
                    
                </div>
            </ul>
        </div>
        <div class="btncon">
        	<input type="button" value="保存" class="cancel ml10" onclick="subRelease();"/>
        	<input type="button" value="取消" class="cancel ml10" onclick="window.parent.hiddeniframes()"/>
        </div>
        </form>
    </div>
</body>
</html>
<script>
	function subRelease(){
	var flag=checkDate();
	if(flag!=1){
		$.ajax({
	                cache: true,
	                type: "POST",
	                url:"${request.contextPath}/releaseAction!addRelease.action",
	                data:$('#releaseform').serialize(),// 你的formid
	                async: false,
	                error: function(request) {
	                    alert("添加失败！");
	                },
	                success: function(data) {
	                	alert('添加成功！');
	                	window.parent.hiddeniframesandsub(); 
	                }
	            });
		}
	}
		
$(function(){
	$('#source').val('${release.source!}');
	$('#status').val('${release.status!}');
	$('#modtime').val('${release.modtime!}');
	var myDate = new Date();
	$('#realTime').val(myDate.format("yyyy-MM-dd hh:mm:ss"));
})

function checkDate(){
	var bollena=0;
	var nameV=$("#name").val();
	var idCardV=$("#idCard").val();
	var loanAmountV=$("#loanAmount").val();
	var selectAmountV=$("#selectAmount").val();
	var contactnumber1V=$("#contactnumber1").val();
	
	if(nameV==null||nameV==''){
		alert("请填写姓名！");
	}else if(idCardV==null||idCardV==''){
		alert("请填写身份证号！");
	}else if(loanAmountV==0){
		alert("请填写贷款金额！");
	}else if(selectAmountV==0){
		alert("请填写查询金额！");
	}else{
	  bollena=checkMobile(contactnumber1V);;
	}
	return bollena
}
 

</script>
