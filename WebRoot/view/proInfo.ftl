<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/view/viewstyle.css">
        <link rel="stylesheet" type="text/css" href="css/view/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/view/reset.css">
    <link rel="stylesheet" type="text/css" href="css/view/common.css">
    <link rel="stylesheet" type="text/css" href="css/view/head.css">
    <link rel="stylesheet" type="text/css" href="css/view/logon.css">
    <link rel="stylesheet" type="text/css" href="css/view/list.css">
    <!--[if lt IE 9 ]>
    <link href="css/view/styleie.css" rel="stylesheet" type="text/css"/>
    <![endif]-->
    <!--[if IE 6]>
	<script type="text/javascript" src="${request.contextPath}/js/view/alpha.js"></script>
	<![endif]--> 
   	<script type="text/javascript" src="${request.contextPath}/js/view/jquery.js"></script>
   	 <script src="${request.contextPath}/js/view/CityJson.js" type="text/javascript"></script>
    <script src="${request.contextPath}/js/view/ProJson.js" type="text/javascript"></script>
    <script src="${request.contextPath}/js/view/DistrictJson.js" type="text/javascript"></script>
    <script src="${request.contextPath}/js/city.js" type="text/javascript"></script>
    <script type="text/javascript" src="${request.contextPath}/js/view/index.js"></script>
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
   	})
    function savePro(){
   			$.ajax({
	                type: "POST",
	                url:"${request.contextPath}/RightDebtAction!addCompetitive.action",
	                data:$('#competitiveForm').serialize(),// 你的formid
	                success: function(data) {
	                			var type = data;
	                			if(type==1){
		               				alert("操作成功，请耐心等待债权方选择~")
		               				window.location.href="${request.contextPath}/viewManAction!toPage?pageName=memMan&selecurrt=curr11"
		               			}else if(type==2){
		               				alert("来晚啦，该标的已经满标~看看别的吧~~")
		               			}else if(type==0){
		               				alert("操作失败，请和工作人员联系")
		               			}
		                }
	       });
   		}
   		
   		function addupload(path,name){
   		    $("#uploadfilelistp").show();
   			$("#uploadfilelist").html(name)
   			$("#idcardcopy").val(path)
   		}
   		
   		function reload(){
   			window.location.reload();
   		}
   		
   		function myxunren(){
   			window.parent.selectcheck("curr7");
   		}
   		
	   	function getOrigin(documentid,originpro,origincity,origindist){
			var proName=getOriginPro(originpro);
			var cityName=getOriginCity(origincity);
			var distName=getOriginDist(origindist);
			$("#"+documentid).append(proName+" "+cityName+" "+distName);
		}
		
		$(function(){
			getOrigin("orgin",'${rd.originpro!}','${rd.origincity!}','${rd.origindist!}')
		})
		
		function addupload(path,name){
   		    $("#uploadfilelistp").show();
   			$("#uploadfilelist").html(name)
   			$("#idcardcopy").val(path)
   		}
    </script>
  <body>
 <div>
  <!--  TOP  -->
  <#include "../top.ftl">
  <!--  TOPEND  -->
  <div class="zhao1">
		<div class="zhao1con">
	  		<div class="titlecon">
				<ul class="titleul">
					<li class="titlelist"><#if (rd.type?? && rd.type=='1')>定价标<#else>竞价标</#if>--标的编号：<font id="bianhao${rd.id!}"><script>getBianhao('${rd.id!}','${rd.type!}')</script></font></li>
				</ul>
			</div>
			<div class="lineaa">
				<div class="linecon">
					<ul class="lineul">
						<li class="listper">债权方信息</li>
					</ul>
				<div>
					<div class="contentxr">
						<p><span class="fontred">*</span>1、债权方姓名：${rd.rightname!}</p>
						<p><span class="fontred">*</span>2、债权方ID号：${rd.rightidcard!}</p>
						<p><span class="fontred">*</span>3、债权方详细地址：${rd.rightaddress!}</p>
						<p><span class="fontred">*</span>4、债权方电话：${rd.rightphone!}</p>
						<p><span class="fontred">*</span>5、债权方联系人：${rd.rightcontact!}</p>
						<p><span class="fontred">*</span>6、债权方联系人电话：${rd.rightcontactphone!}</p>
					</div>
					<div class="linecon">
						<ul class="lineul">
							<li class="listper">债权详情</li>
						</ul>
					</div>
					<div class="contentxr">
					<p><span class="fontred">*</span>1、债权金额：${rd.rightamount!}万元</p>
					<p><span class="fontred">*</span>2、标的类型：<#if (rd.type?? && rd.type=='1')>定价标<#else>竞价标</#if></p>
					<p><span class="fontred">*</span>3、处置方式：
						<#if (rd.type?? && rd.type=='1')>
							<#if (rd.disposalmethod?? && rd.disposalmethod=='1')>催收佣金比例：${rd.salprsent!}%<#else>债权转让折扣率：${rd.bateprsent!}</#if></p>
						<#else>
							竞标
						</#if>
					<p><span class="fontred">*</span>4、逾期时间：${rd.latedays!}天</p>
					<p><span class="fontred">*</span>5、担保方式：<font id="guaranteemethod"></font></p>
					<p><span class="fontred">*</span>6、催收措施：法院<#if (rd.isSusong?? && rd.isSusong=='1')>已诉讼<#else>未诉讼</#if>&nbsp;&nbsp;法院<#if (rd.isPanjue?? && rd.isPanjue=='1')>已判决<#else>未判决</#if></p>
					<p><span class="fontred">*</span>7、满标时间：${rd.endTime!}天</p>
					<p><span class="fontred">*</span>8、相关描述：</p>
					<textarea class="pub_text" name="rd.rightdesc"  class="input1"  disabled>${rd.rightdesc!}</textarea>
					<p><span class="fontred">*</span>9、上传相关凭证：</p>
					</div>
					<div class="linecon">
						<ul class="lineul">
							<li class="listper">债务方信息</li>
						</ul>
					</div>
					<div class="contentxr">
					<p><span class="fontred">*</span>1、债务方姓名：${rd.debtname!}</p>
					<p><span class="fontred">*</span>2、债务方地址：${rd.debtaddress!}</p>
					<p><span class="fontred">*</span>3、债务方联系方式：</p>
					<p>&nbsp;<span class="fontred ">&nbsp;&nbsp;&nbsp;</span>联系方式（1）：${rd.debtphone1!}</p>
					<p>&nbsp;<span class="fontred">&nbsp;&nbsp;&nbsp;</span>联系方式（2）：${rd.debtphone2!}</p>
					<p>&nbsp;<span class="fontred">&nbsp;&nbsp;&nbsp;</span>联系方式（3）：${rd.debtphone3!}</p>
					<p><span class="fontred">*</span>4、债务方ID号：${rd.debtidcard!}</p>
					<p><span class="fontred">*</span>5、债务人是否能正常联系：<#if (rd.debtiscontact?? && rd.debtiscontact=='1')>是<#else>否</#if></p>
					<p><span class="fontred">*</span>6、债务人是否具有还款能力：<#if (rd.debtispay?? && rd.debtispay=='1')>是<#else>否</#if></p>
					</div>
				</div>
				<#if (user?? && user.userName!=rd.moduser! && user.userFlag == '3')>
					<form id="competitiveForm">
					<input type="text" name="ci.id"  class="input1 hidden" value="${ci.id!}" ">
					<input type="text" name="ci.moduser"  class="input1" value="${user.userName!}" style="display:none">
					<input type="text" name="ci.proId"  class="input1 hidden" value="${rd.id!}" ">
					<#if (rd.type?? && rd.type=='1')>
					<div class="contentxr1">
							<input type="text" name="ci.proPrsent"  class="input1 hidden" value="${rd.bateprsent!}" > 
							<input type="button" onclick="savePro()" class="reg2btn" value="确认抢标">
					</div>
					<#elseif (rd.type?? && rd.type=='2')>
					<div class="linecon">
							<ul class="lineul">
								<li class="listper">竞标信息</li>
							</ul>
						</div>
						<div class="contentxr">
							<p><#if (rd.disposalmethod?? && rd.disposalmethod=='1')>
									催收佣金比例：<input type="text" name="ci.proPrsent"  class="input1" value="${ci.proPrsent!}"> %
									<#else>
									债权转让折扣率：<input type="text" name="ci.proPrsent"  class="input1" value="${ci.proPrsent!}"> %
									</#if></p>
						</div>
						<div class="contentxr1">
							<input type="button" onclick="savePro()" class="reg2btn" value="确认竞标">
						</div>
						</#if>
						</form>
					</#if>
		</div>
  	</div>
  </div>
 <!-- bottom -->
   <#include "../bottom.ftl">
<!-- bottomend -->
</form>
</body>
</html>