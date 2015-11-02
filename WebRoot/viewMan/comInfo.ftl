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
   		    $("#proFlag").val(type);
   		    var cruPhone = $("#cruPhone").val();
   		    if(!checkphone(cruPhone)){
   		    	alert("电话号不合法~");
   		    	return;
   		    }
   			$.ajax({
	                type: "POST",
	                url:"${request.contextPath}/RightDebtAction!addComInfo.action",
	                data:$('#addComInfo').serialize(),// 你的formid
	                success: function(data) {
		                var types=data;
		                	if(types==1&&type==3){
		                		$("#seccestxt").html("操作成功！ ")
		                		$("#loading-mask1").show();
		                		$("#tan").show();
		                	}else if(types==1&&type==4){
		                		$("#seccestxt").html("提交成功！乐寻会尽快审核，并联系您~")
		                		$("#loading-mask1").show();
		                		$("#tan").show();
		                	}else{
		                		alert("操作失败");
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
				<li class="titlelist">添加催收成果</li>
			</ul>
			<p class="tiship"></P>
	</div>
	<div class="lineaa">
		<div class="linecon">
			<ul class="lineul">
				<li class="listper">基本信息</li>
			</ul>
		<div>
		<form id="addComInfo">
		<div class="contentxr">
		<input type="text" name="ci.id" class="input1" value="${ci.id!}" style="display:none">
		<input type="text" name="ci.proFlag" id="proFlag" class="input1" value="${ci.proFlag!}" style="display:none">
		<p><span class="fontred">*</span>1、付款人：</p>
		<p><input type="text" name="ci.cruUser" class="input1" value="${ci.cruUser!}"></p>
		<p><span class="fontred">&nbsp;</span>2、付款人和债务人关系：</p>
		<p><input type="text" name="ci.cruUserShip" class="input1" value="${ci.cruUserShip!}"></p>
		<p><span class="fontred">*</span>3、手机：</p>
		<p><input type="text" name="ci.cruPhone" id="cruPhone" class="input1" value="${ci.cruPhone!}"></p>
		<p><span class="fontred">&nbsp;</span>4、电话：</p>
		<p><input type="text" name="ci.crutel" class="input1" value="${ci.crutel!}"></p>
		<p><span class="fontred">*</span>3、当前地址：</p>
		<p><input type="text" name="ci.cruAdrress" class="input1" value="${ci.cruAdrress!}"></p>
		<p><span class="fontred">*</span>5、付款证明：</p>
		<p> <input type="text" id="uploadidcard" name="ci.crufileAdress" class="input1 hidden" value="${ci.crufileAdress!}">
		<p><span class="fontred">*</span>6、催收金额：</p>
		<p> <input type="text" id="uploadidcard" name="ci.crufileAdress" class="input1 hidden" value="${ci.crufileAdress!}">
		<#if ci.crufileAdress??>
			已上传
		</#if>
		</p>
		<p> <iframe name="iframeUpload" src="${request.contextPath}/findPeopleAction!toPage?pageName=upload" width="350" height="35" frameborder=0  SCROLLING="no" ></iframe></p> 
	</div>
		<div class="contentxr1">
		<#if ci.proFlag?? && ci.proFlag=='4'>
			<p><span class="fontred">您已经提交认证，请耐心等待工作人员与您联系，谢谢合作！！！</span></p>
		 <#elseif ci.proFlag?? && ci.proFlag=='5'>
		 	<p><span class="fontred">您的信息审核不通过，原因为：${ci.infoText!}</span></p>
			<input type="button" onclick="savePro(4)" class="reg2btn" value="提交审核">
		 <#elseif ci.proFlag?? && ci.proFlag=='6'>
		 	<p><span class="fontred">恭喜您，您的信息已通过审核</span></p>
		 <#else>
		<input type="button" onclick="savePro(2)" class="reg2btn" value="保存">
		<input type="button" onclick="savePro(4)" class="reg2btn" value="提交审核">
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
