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
   	<script type="text/javascript" src="js/view/jquery.js"></script>
   	 <script src="js/view/CityJson.js" type="text/javascript"></script>
    <script src="js/view/ProJson.js" type="text/javascript"></script>
    <script src="js/view/DistrictJson.js" type="text/javascript"></script>
    <script src="js/city.js" type="text/javascript"></script>
    <script>
    
    function savePro(type){
   		    $("#proFlag").val(type);
   			$.ajax({
	                type: "POST",
	                url:"${request.contextPath}/findPeopleAction!addFindPeople.action",
	                data:$('#addFindPeople').serialize(),// 你的formid
	                success: function(data) {
		                var type=data;
		                	if(type==1){
		                		$("#seccestxt").html("操作成功")
		                		$("#loading-mask1").show();
		                		$("#tan").show();
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
    </script>
  <body>
 <div>
<form id="addFindPeople" method="post">
  	<div class="titlecon">
			<ul class="titleul">
				<li class="titlelist">寻人标</li>
			</ul>
	</div>
	<div class="lineaa">
		<div class="linecon">
			<ul class="lineul">
				<li class="listper">被寻人信息</li>
			</ul>
		<div>
		<div class="contentxr">
		<input name="fp.moduser" value="${user.userName!}" class="hidden" >
        <input name="fp.id" value="${fp.id!}" class="" >
		<p><span class="fontred">*</span>1、被寻人姓名：</p>
		<p><input type="text" id="name" name="fp.name" class="input1" value="${fp.name!}"></p>
		<p><span class="fontred">*</span>2、被寻人ID号：</p>
		<p><input type="text" id="idcard" name="fp.idcard" class="input1" value="${fp.idcard!}"></p>
		<p><span class="fontred">*</span>3、被寻人籍贯：</p>
		<p><select id="selProvince" class="pubselect" name="fp.originpro" value="${fp.originpro!}">
		        <option value="0">--省份--</option>
		   </select>
		   <select id="selCity" class="pubselect" name="fp.origincity" value="${fp.origincity!}>
		        <option value="0">--城市--</option>
		   </select>
		   <select id="selDistrict" class="pubselect" name="fp.origindist" value="${fp.origindist!}>
		        <option value="0">--区/县--</option>
		   </select>
		</p>
		<p><span class="fontred">*</span>4、被寻人详细地址：</p>
		<p><input type="text" id="residence" name="fp.residence" class="input1" value="${fp.residence!}"></p>
		<p><span class="fontred">*</span>5、债权发生地：</p>
		<p><input type="text" name="fp.rightsplace" class="input1" value="${fp.rightsplace!}"></p>
		<p><span class="fontred">*</span>6、联系方式</p>
		<p><span class="fontred ">*</span>联系方式（1）<input type="text" name="fp.phonenumber" class="input1" value="${fp.phonenumber!}"></p>
		<p><span class="fontred">&nbsp;</span>联系方式（2）<input type="text" name="fp.phonenumber1" class="input1" value="${fp.phonenumber1!}"></p>
		<p><span class="fontred">&nbsp;</span>联系方式（3）<input type="text" name="fp.phonenumber2" class="input1" value="${fp.phonenumber2!}"> </p>
		</div>
		
		<div class="linecon">
			<ul class="lineul">
				<li class="listper">补充信息</li>
			</ul>
		<div>
		<div class="contentxr">
		<p><span class="fontred">*</span>1、失踪天数：</p>
		<p><input type="text" name="fp.missingday" class="input1" value="${fp.missingday!}">天</p>
		<p><span class="fontred">*</span>2、发布方类别：</p>
		<p><select name="fp.publishtype" class="pubselect" value="${fp.publishtype!}">
			 <option value="1">银行</option>
			 <option value="2">P2P</option>
			 <option value="3">小贷</option>
			 <option value="4">消费金融</option>
			 <option value="5">担保公司</option>
			 <option value="6">个人</option>
			 <option value="7">企业</option>
			 <option value="8">其他</option>
			</select>
		</p>
		<p><span class="fontred">*</span>3、相关描述：</p>
		<textarea class="pub_text" name="fp.description" value="${fp.description!}"></textarea>
		<p><span class="fontred">*</span>4、上传相关凭证：</p>
		<p><span class="fontred">&nbsp;</span>（包含被寻人身份证复印件及相关借款协议证明等附件）</p>
		<p id="uploadfilelistp" style="display:none"><span class="fontred">&nbsp;</span><span id="uploadfilelist">&nbsp;</span>
			&nbsp;&nbsp;&nbsp;&nbsp;<a class="fontred">X</a></p>
		<p> <iframe name="iframeUpload" src="${request.contextPath}/findPeopleAction!toPage?pageName=upload" width="350" height="35" frameborder=0  SCROLLING="no" ></iframe>  
		</p>
		<div class="contentxr1">
		<input type="text" name="fp.proFlag" id="proFlag" style="display:none" vlaue="${fp.proFlag!}">
		<input  type="text" name="fp.idcardcopy" id="idcardcopy" style="display:none" vlaue="${fp.idcardcopy!}">
		<input type="button" onclick="savePro(1)" class="reg2btn" value="保存">
		<input type="button" onclick="savePro(2)" class="reg2btn" value="提交审核">
		</div>
	</div>
</div>
  	<div class="tan" id="tan">
    	<p class="regsuc"><span id="seccestxt"></span></br>
	    	<!--<a herf="#" class="tanaaa" >继续添加信息</a>&nbsp;&nbsp;&nbsp;&nbsp;-->
	    	<a herf="#" class="tanaaa" onclick="reload()" >继续添加</a>&nbsp;&nbsp;&nbsp;&nbsp;
	    	<a herf="#" class="tanaaa" onclick="myxunren()"  >查看标的</a></p>
    	
   	</div>
   	  <div id="loading-mask1"></div>
</form>
</body>
</html>
<script>
