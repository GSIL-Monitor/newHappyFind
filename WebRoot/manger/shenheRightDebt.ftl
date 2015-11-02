<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>乐寻管理平台-审核寻人信息</title>
<script type="text/javascript" src="${request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script language="javascript" type="text/javascript" src="${request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
<link href="${request.contextPath}/CVE.css" rel="stylesheet" type="text/css" />
<style>
.addPrice{width:800px;height:900px;}
</style>
<script>
$(function(){
   		
   		//担保方式
   		var guaranteemethod= '${rd.guaranteemethod!}';
   		var guaranteemethodlist = guaranteemethod.split(",");
   		var guaranteemethodText="";
   		for(var i=0;i<guaranteemethodlist.length;i++){
   		  var listi = guaranteemethodlist[i];
	   		  if(listi==1){
	   		  	guaranteemethodText=guaranteemethodText+"他人担保、"
	   		  }else  if(listi==2){
	   		  	guaranteemethodText=guaranteemethodText+"担保公司、"
	   		  }else  if(listi==3){
	   		  	guaranteemethodText=guaranteemethodText+"质押、"
	   		  }else  if(listi==4){
	   		  	guaranteemethodText=guaranteemethodText+"质押、"
	   		  }else  if(listi==5){
	   		  	guaranteemethodText=guaranteemethodText+"其他担保、"
	   		  }else  if(listi==6){
	   		  	guaranteemethodText=guaranteemethodText+"无"
	   		  }
   			}
   			$("#guaranteemethod").html(guaranteemethodText);
   		//期望处置方式及回报
   		var disposalmethod = '${rd.disposalmethod}';
   		var disposalmethodText;	
   		if(disposalmethod==1){
   			disposalmethodText = "催收佣金比例";
   		}else{
   			disposalmethodText = "债权转让折扣率";
   		}
   		$("#disposalmethod").html(disposalmethodText);
   		
   		//催收措施
   		var isSusong = '${rd.isSusong!}';
   		var isSusongText;
   		if(isSusong==1){
   			isSusongText="已诉讼";
   		}else{
   			isSusongText="未诉讼";
   		}
   		var isPanjue = '${rd.isPanjue!}';
   		if(isPanjue==1){
   			isSusongText+="、已判决";
   		}else{
   			isSusongText+="、未判决";
   		}
   		$("#isSusong").html(isSusongText);
   		
   		//正常联系
   		var debtiscontact = '${rd.debtiscontact!}';
   		if(debtiscontact==1){
   			$("#debtiscontact").html("是");
   		}else{
   			$("#debtiscontact").html("否");
   		}
   		//还款能力
   		var debtispay = '${rd.debtispay!}';
   		if(debtispay==1){
   			$("#debtispay").html("是");
   		}else{
   			$("#debtispay").html("否");
   		}
   	})
   	function trunValue(valuse){
		if(valuse==3){
			$('#butrong').show();
		}else{
			$('#butrong').hide();
		}
	}
    </script>
</head>

<body>
	<div class="addbox addPrice">
    	<div class="title">审核资产标</div>
    	 <form id="RightDebtform"  method="post">
        <div class="addcon">
        	<ul id="litable">
        	 <input name="rd.moduser" value="admin" class="hidden" >
        	 <input name="rd.id" value="${rd.id!}" class="hidden" >
        	 <div class="datatbl">
                	<table>
                    	<tr class="bg">
                        	<th>债权人姓名</th>
                        	<td>${rd.rightname!}</td>
                        	<th>债权人地址</th>
                        	<td>${rd.rightaddress!}</td>
                        </tr>
                        <tr class="bg">
                        	<th>债权人电话</th>
                        	<td>${rd.rightphone!}</td>
                        	<th>债权人身份证号或营业执照注册号</th>
                        	<td>${rd.rightidcard!}</td>
                        </tr>
                        <tr class="bg">
                        	<th>债权人联系人</th>
                        	<td>${rd.rightcontact!}</td>
                        	<th>债权方联系人电话</th>
                        	<td>${rd.rightcontactphone!}</td>
                        </tr>   
                        <tr class="bg">
                        	<th>债权金额</th>
                        	<td>${rd.rightamount!}万元</td>
                        	<th>期望处置方式及回报</th>
                        	<td id=disposalmethod>${rd.disposalmethod!}</td>
                        </tr>  
                        <th>逾期时间</th>
                        	<td>${rd.latedays!}</td> 
                        <th>担保方式</th>
                        	<td id="guaranteemethod"></td>
                        </tr>  
                        <tr class="bg">
                        	<th>催收措施</th>
                        	<td id="isSusong"></td>
                        	<th>相关凭证</th>
                        	<td>${rd.voucher!}</td>
                        </tr>    
                        <tr class="bg">
                        	<th>债权描述</th>
                        	<td>${rd.rightdesc!}</td>
                        	<th>债务方姓名</th>
                        	<td>${rd.debtname!}</td>
                        </tr>  
                        <tr class="bg">
                            <th>债务方地址</th>
                        	<td>${rd.debtaddress!}</td>
                        	<th>债务方电话1</th>
                        	<td>${rd.debtphone1!}</td>
                        </tr>
                        <tr class="bg">
                            <th>债务方电话2</th>
                        	<td>${rd.debtphone2!}</td>
                        	<th>债务方电话3</th>
                        	<td>${rd.debtphone3!}</td>
                        </tr>
                        <tr class="bg">
                            <th>债务方证件</th>
                        	<td>${rd.debtidcard!}</td>
                        	<th>&nbsp;</th>
                        	<td>&nbsp;</td>
                        </tr>
                         <tr class="bg">
                            <th>是否具有还款能力</th>
                        	<td id="debtispay"></td>
                        	<th>债务方是否可以联系</th>
                        	<td id="debtiscontact"></td>
                        </tr>
                         
                        <tr class="bg">	
                        <th>审核类型</th>
                            <td><input type="radio" name="rd.proType" value="4" onclick="trunValue(4)" checked=checked>通过 
                            <input type="radio" name="rd.proType" value="3" onclick="trunValue(3)">不通过 </td>
                            <th>&nbsp;</th>
                        	<td>&nbsp;</td>
                        </tr>
                         <tr id="butrong" style="display:none"> 
                        	<th>不通过的原因</th>
                        	<td colspan=3> <input type="text" name="rd.infoText" style="width:500px;">
                        	</td>
                        </tr>           
                    </table>
                </div>
            </ul>
        </div>
        <div class="btncon">
        	<input type="button" value="保存" class="cancel ml10" onclick="subRightDebt();"/>
        	<input type="button" value="取消" class="cancel ml10" onclick="window.parent.hiddeniframes()"/>
        </div>
        </form>
    </div>
</body>
</html>
<script>
	function subRightDebt(){
		$.ajax({
	                cache: true,
	                type: "POST",
	                url:"${request.contextPath}/mangerAction!varRightDebt.action",
	                data:$('#RightDebtform').serialize(),// 你的formid
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
</script>


