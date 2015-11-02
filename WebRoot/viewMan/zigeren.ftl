<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/view/viewstyle.css">
    <!--[if lt IE 9 ]>
    <link href="css/view/styleie.css" rel="stylesheet" type="text/css"/>
    <![endif]-->
    <!--[if IE 6]>
	<script type="text/javascript" src="js/view/alpha.js"></script>
	<![endif]--> 
   	 <script type="text/javascript" src="${request.contextPath}/js/view/jquery.js"></script>
   	 <script src="${request.contextPath}/js/view/CityJson.js" type="text/javascript"></script>
    <script src="${request.contextPath}/js/view/ProJson.js" type="text/javascript"></script>
    <script src="${request.contextPath}/js/view/DistrictJson.js" type="text/javascript"></script>
    <script src="${request.contextPath}/js/city.js" type="text/javascript"></script>
    <script src="${request.contextPath}/js/view/check.js" type="text/javascript"></script>
    <script>
     function savePro(type){
   		    $("#infoFlag").val(type);
   		    var idcode = $("#idcard").val();
   		    if(!IdCardValidate(idcode)){
   		    	alert("身份证号不合法~");
   		    	return;
   		    }
   			$.ajax({
	                type: "POST",
	                url:"${request.contextPath}/QualityConfirmAction!addQualityConfirm.action",
	                data:$('#addQualityConfirm').serialize(),// 你的formid
	                success: function(data) {
		                var types=data;
		                	if(types==1&&type==2){
		                		$("#seccestxt").html("操作成功！ <br>工作人员会在2个工作日内与您联系完成认证，谢谢合作~ ")
		                		$("#loading-mask1").show();
		                		$("#tan").show();
		                	}else if(types==1&&type==1){
		                		$("#seccestxt").html("保存成功！")
		                		$("#loading-mask1").show();
		                		$("#tan").show();
		                	}
		                }
	       });
   		}
   		
   		function reload(){
   			window.location.reload();
   		}
   		function addupload(path,name){
   			$("#uploadidcard").val(path)
   		}
   	</script>	
  <body>
 <div>
  	<div class="titlecon">
			<ul class="titleul">
				<li class="titlelist">个人用户完善信息</li>
			</ul>
			<p class="tiship"></P>
	</div>
	<div class="lineaa">
		<div class="linecon">
			<ul class="lineul">
				<li class="listper">基本信息</li>
			</ul>
		<div>
		<form id="addQualityConfirm">
		<div class="contentxr">
		<input type="text" name="qc.id" class="input1" value="${qc.id!}" style="display:none">
		<input type="text" name="qc.userid" class="input1" value="${user.userId!}" style="display:none">
		<input type="text" name="qc.type" class="input1" value="${user.userFlag!}" style="display:none">
		<input type="text" name="qc.infoFlag" class="input1" value="${qc.infoFlag!}" id="infoFlag" style="display:none">
		<input type="text" name="qc.moduser" class="input1" value="${user.userName}" id="moduser" style="display:none">
		<p><span class="fontred">*</span>1、用户名：${user.userName}</p>
		<p><span class="fontred">*</span>2、真实姓名：</p>
		<p><input type="text" name="qc.username" class="input1" value="${qc.username!}"></p>
		<p><span class="fontred">*</span>3、身份证号：</p>
		<p><input type="text" name="qc.idcard" id="idcard" class="input1" value="${qc.idcard!}"></p>
		<p><span class="fontred">*</span>4、职业：</p>
		<p><input type="text" name="qc.profession" class="input1" value="${qc.profession!}"></p>
		<p><span class="fontred">*</span>3、所在地：</p>
		<p><select id="selProvince" class="pubselect" name="qc.province" >
		        <option value="">--省份--</option>
		   </select>
		   <select id="selCity" class="pubselect" name="qc.prefecturecity" >
		        <option value="">--城市--</option>
		   </select>
		   <select id="selDistrict" class="pubselect" name="qc.area" >
		        <option value="">--区/县--</option>
		   </select>
		</p>
		<p><span class="fontred">*</span>4、邮箱：</p>
		<p><input type="text" name="qc.email" class="input1" value="${qc.email!}"></p>
		<p><span class="fontred">*</span>5、身份证复印件：</p>
		<p> <input type="text" id="uploadidcard" name="qc.uploadidcard" class="input1 hidden" value="${qc.uploadidcard!}">
		<#if qc.uploadidcard??>
			已上传
		</#if>
		</p>
		<#if qc.infoFlag?? && qc.infoFlag=='2'>
		<#else>
		<p> <iframe name="iframeUpload" src="${request.contextPath}/findPeopleAction!toPage?pageName=upload" width="350" height="35" frameborder=0  SCROLLING="no" ></iframe></p> 
		</#if>
	</div>
		<div class="contentxr1">
		<#if qc.infoFlag?? && qc.infoFlag=='2'>
			<p><span class="fontred">您已经提交认证，请耐心等待工作人员与您联系，谢谢合作！！！</span></p>
		 <#elseif qc.infoFlag?? && qc.infoFlag=='3'>
		 	<p><span class="fontred">您的信息审核不通过，原因为：${qc.infoText!}</span></p>
			<input type="button" onclick="savePro(2)" class="reg2btn" value="提交认证">
		 <#elseif qc.infoFlag?? && qc.infoFlag=='4'>
		 	<p><span class="fontred">恭喜您，您的信息已通过审核</span></p>
		 <#else>
		<input type="button" onclick="savePro(1)" class="reg2btn" value="保存">
		<input type="button" onclick="savePro(2)" class="reg2btn" value="提交认证">
		</#if>
		</div>
	</form>
</div>
	<div class="tan" id="tan">
    	<p class="regsucRenzheng"><span id="seccestxt"></span></br>
	    	<a herf="#" class="tanaaa" onclick="reload()" >返回</a>&nbsp;&nbsp;&nbsp;&nbsp;
    	
   	</div>
   	  <div id="loading-mask1"></div>
</body>
</html>
<script>
var companyprovince='${qc.province!}';
var companyprefecturecity='${qc.prefecturecity!}';
var companyarea='${qc.area!}';
selectedOriginPro(companyprovince);
selectedOriginCity(companyprefecturecity);
selectedOriginDist(companyarea);
</script>