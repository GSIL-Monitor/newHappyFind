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
    <script src="${request.contextPath}/js/view/check.js" type="text/javascript"></script>
    <script>
    function savePro(type){
    		var dotype=1;
		    if(type==2){
		    	dotype = checkData();
		    }
		    if(dotype ==1){
	   		    $("#proType").val(type);
	   			$.ajax({
		                type: "POST",
		                url:"${request.contextPath}/RightDebtAction!addRightDebt.action",
		                data:$('#addRightDebt').serialize(),// 你的formid
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
   		}
   		
   	function checkData(){
   	returnV=1;
   		//验证身份证
   		 var idcode = $("#rightidcard").val();   //债权方id号
   		 var debtidcard = $("#debtidcard").val();   //债务方ID号
   		 //验证电话
   		 var rightphone = $("#rightphone").val(); //债权方电话
   		 var rightcontactphone = $("#rightcontactphone").val(); //债权方电话
   		 var debtphone1 = $("#debtphone1").val(); //债务方联系方式
   		    if(!IdCardValidate(idcode)){
   		    	alert("债权方身份证号不合法~");
   		    	returnV=2;
   		    }else if(!IdCardValidate(debtidcard)){
   		    	alert("债务方身份证号不合法~");
   		    	returnV=2;
   		    }else if(!checkphone(rightphone)){
   		 		alert("请重新输入债权方电话~");
   		 		returnV=2;
   		    }else if(!checkphone(rightcontactphone)){
   		 		alert("请重新输入债权方联系人电话~");
   		 		returnV=2;
   		    }else if(!checkphone(debtphone1)){
   		 		alert("请重新输入债务方联系方式~");
   		 		returnV=2;
   		    }else{
	   		    $(".requred").each(function(){
	    			if($(this).val()==''){
	    				returnV=2;
	    			}
	  			});
  				if(returnV==2){
  					alert("您有必填项没有填写哦~~");
  				}
  			}
  			return returnV;
   	}
   	function trunValue(type){
   		if(type==2){
   			$("td[name='dingjia']").hide();
   		}else{
   			$("td[name='dingjia']").show();
   		}
   	}
   	function reload(){
   			window.parent.selectcheck("curr4");
   	}
   	function myPro(){
   			window.parent.selectcheck("curr6");
   	}
   	function checkSome(){
   		$('#guaranteemethod6').attr("checked",false);
   	}
   	function unCheckSome(){
   		$('#guaranteemethod1').attr("checked",false);
   		$('#guaranteemethod2').attr("checked",false);
   		$('#guaranteemethod3').attr("checked",false);
   		$('#guaranteemethod4').attr("checked",false);
   		$('#guaranteemethod5').attr("checked",false);
   		
   	}
   	
   	$(function(){
   		//处置方式
   		var disposalmethod = '${rd.disposalmethod!}';
   		$("#disposalmethod"+disposalmethod).attr("checked","checked");
   		//标的类型
   		var protype = '${rd.type!}';
   		$("#protype"+protype).attr("checked","checked");
   		trunValue(protype);
   		//担保方式
   		var guaranteemethod= '${rd.guaranteemethod!}';
   		var guaranteemethodlist = guaranteemethod.split(",");
   		for(var i=0;i<guaranteemethodlist.length;i++){
   		  var listi = guaranteemethodlist[i];
   		   if(listi!=''){
   			$("#guaranteemethod"+parseInt(listi)).attr("checked","checked");
   			}
   		}
   		//催收措施
   		var isSusong = '${rd.isSusong!}';
   		$("#isSusong"+isSusong).attr("checked","checked");
   		var isPanjue = '${rd.isPanjue!}';
   		$("#isPanjue"+isPanjue).attr("checked","checked");
   		//正常联系
   		var debtiscontact = '${rd.debtiscontact!}';
   		$("#debtiscontact"+debtiscontact).attr("checked","checked");
   		//还款能力
   		var debtispay = '${rd.debtispay!}';
   		$("#debtispay"+debtispay).attr("checked","checked");
   		//上传的资料
   		var vouchername ='${rd.voucher!}';
   		if(vouchername!=''){
   		$("#uploadfilelist").html(vouchername);
   		$("#uploadfilelistp").show();
   		}
   		//满标时间
   		var endTime='${rd.endTime!}';
   		if(endTime!=''){
   			$("#endTime").val(endTime);
   		}
   	})
   	
   		function addupload(name,path){
   		    $("#uploadfilelistp").show();
   			$("#uploadfilelist").html(name)
   			$("#voucher").val(name)
   		}
    </script>
  <body>
 <div>
 <form id="addRightDebt" method="post">
  	<div class="titlecon">
			<ul class="titleul">
				<li class="titlelist">发布标的</li>
			</ul>
			<p class="tiship">请认真阅读并填写以下文字：带星号（*）的为必填项</P>
	</div>
	<div class="lineaa">
		<div class="linecon">
			<ul class="lineul">
				<li class="listper">债权方信息</li>
			</ul>
		</div>
		<input type="text" name="rd.moduser" class="input1" value="${user.userName}" style="display:none">
		<input type="text" name="rd.id" class="input1" value="${rd.id}" style="display:none">
		<div class="contentxr">
		<p><span class="fontred">*</span>1、债权方姓名：</p>
		<p><input type="text" name="rd.rightname" class="input1 requred" value="${rd.rightname!}" ></p>
		<p><span class="fontred">*</span>2、债权方ID号：</p>
		<p><input type="text" name="rd.rightidcard" id="rightidcard" class="input1 requred" value="${rd.rightidcard!}" ><span id="checkidcard" class="fontred" style="display:none">身份证号不合法</span></p>
		<p><span class="fontred">*</span>4、债权方详细地址：</p>
		<p><input type="text" name="rd.rightaddress"  class="input1 requred" value="${rd.rightaddress!}"></p>
		<p><span class="fontred">*</span>5、债权方电话：</p>
		<p><input type="text" name="rd.rightphone"  id="rightphone" class="input1 requred" value="${rd.rightphone!}"></p>
		<p><span class="fontred">*</span>6、债权方联系人</p>
		<p><input type="text" name="rd.rightcontact"  class="input1 requred"  value="${rd.rightcontact!}"></p>
		<p><span class="fontred">*</span>7、债权方联系人电话</p>
		<p><input type="text" name="rd.rightcontactphone"  id="rightcontactphone" class="input1 requred" value="${rd.rightcontactphone!}"></p>
		</div>
		
		<div class="linecon">
			<ul class="lineul">
				<li class="listper">债权详情</li>
			</ul>
		</div>
		<div class="contentxr">
		<p><span class="fontred">*</span>1、债权金额：</p>
		<p><input type="text" name="rd.rightamount"  class="input1 requred"  value="${rd.rightamount!}">万元</p>
		<p><span class="fontred">*</span>2、标的类型选择：</p>
		<table cellspacing="0" class="pubpp">
            <tbody><tr>
               <td class="thwid"><input type="radio" id="protype1" name="rd.type" value="1" checked="checked" onclick="trunValue(1)">定价标</td>
               <td class="thwid"><input type="radio" id="protype2" name="rd.type" value="2" onclick="trunValue(2)">竞价标</td>
            </tr>
        </tbody></table>
		<p><span class="fontred">*</span>3.处置方式：</p>
		<table cellspacing="0" class="pubpp">
            <tbody>
            <tr>
               <td class="thwid"><input type="radio" id="disposalmethod1" name="rd.disposalmethod" value="1" checked="checked" >催收佣金比例</td><td class="thwid" name="dingjia"><input type="input" name="rd.salprsent"  class="input2" value="${rd.salprsent!}">%</td>
            </tr>
             <tr>
               <td class="thwid"><input type="radio"  id="disposalmethod0" name="rd.disposalmethod" value="0" >债权转让折扣率</td><td class="thwid" name="dingjia"><input type="input" name="rd.bateprsent"  class="input2" value="${rd.bateprsent!}">%</td>
            </tr>
        </tbody></table>
        <p><span class="fontred">*</span>3.债务发生地：</p>
		<p><select id="selProvince" class="pubselect requred" name="rd.rightProvince" >
		        <option value="0">--省份--</option>
		   </select>
		   <select id="selCity" class="pubselect requred" name="rd.rightcity" >
		        <option value="0">--城市--</option>
		   </select>
		   <select id="selDistrict" class="pubselect requred" name="rd.rightdist" >
		        <option value="0">--区/县--</option>
		   </select>
		</p>
		<p><span class="fontred">*</span>4.逾期时间：</p>
		<p><input type="text" name="rd.latedays"  class="input1 requred" value="${rd.latedays!}">天</p>
		<p><span class="fontred">&nbsp;</span>5.担保方式：</p>
		<table cellspacing="0" class="pubpp">
            <tbody><tr>
               <td><input class="pub_check" type="checkbox" id="guaranteemethod1" name="rd.guaranteemethod" value="1" onclick="checkSome()">他人担保</td>
               <td><input class="pub_check" type="checkbox" id="guaranteemethod2" name="rd.guaranteemethod" value="2" onclick="checkSome()">担保公司</td>
               <td><input class="pub_check" type="checkbox" id="guaranteemethod3" name="rd.guaranteemethod" value="3" onclick="checkSome()">  抵押</td>
            </tr>
            <tr>
               <td><input class="pub_check" type="checkbox" id="guaranteemethod4" name="rd.guaranteemethod" value="4" onclick="checkSome()">质押</td>
               <td><input class="pub_check" type="checkbox" id="guaranteemethod5" name="rd.guaranteemethod" value="5" onclick="checkSome()">其他担保</td>
               <td><input class="pub_check" type="checkbox" id="guaranteemethod6" name="rd.guaranteemethod" value="6" onclick="unCheckSome()">无</td>
            </tr>
        </tbody></table>
		
		<p><span class="fontred">*</span>6.催收措施：</p>
		<table cellspacing="0" class="pubpp">
            <tbody><tr>
               <td>（1）是否已在法院起诉：</td>
               <td class="thwid"><input type="radio" id="isSusong1" name="rd.isSusong" value="1" checked="checked">已诉讼</td>
               <td class="thwid"><input type="radio" id="isSusong0" name="rd.isSusong" value="0">未诉讼</td>
            </tr>
            <tr>
               <td>（2）法院是否作出判决：</td>
               <td class="thwid"><input type="radio"  id="isPanjue1" name="rd.isPanjue" value="1" checked="checked">已判决</td>
               <td class="thwid"><input type="radio"  id="isPanjue0" name="rd.isPanjue" value="0">未判决</td>
            </tr>
        </tbody></table>
		<p><span class="fontred">*</span>7.满标时间：</p>
		<p>
			<select id="endTime" class="pubselect requred" name="rd.endTime" >
		        <option value="1">1天</option>
		        <option value="5">5天</option>
		        <option value="10">10天</option>
		        <option value="15">15天</option>
		   </select>
		</p>
		<p><span class="fontred">*</span>8、相关描述：</p>
		<textarea class="pub_text" name="rd.rightdesc"  class="input1 requred" >${rd.rightdesc!}</textarea>
		<p><span class="fontred">*</span>9、上传相关凭证：</p>
		<p><input type="text" name="rd.voucher"  id="voucher" class="input1 hidden requred" value="${rd.voucher!}"></p>
		<p id="uploadfilelistp" style="display:none"><span class="fontred">&nbsp;</span><span id="uploadfilelist" class="fontred">&nbsp;</span>
			&nbsp;&nbsp;&nbsp;&nbsp;</p>
		<p> <iframe name="iframeUpload" src="${request.contextPath}/findPeopleAction!toPage?pageName=upload" width="350" height="35" frameborder=0  SCROLLING="no" ></iframe>  </p>
		</div>
		
		<div class="linecon">
			<ul class="lineul">
				<li class="listper">债务方信息</li>
			</ul>
		<div>
		
		<div class="contentxr">
		<p><span class="fontred">*</span>1、债务方姓名：</p>
		<p><input type="text" name="rd.debtname"  class="input1 requred" value="${rd.debtname!}"></p>
		<p><span class="fontred">*</span>2、债务方地址：</p>
		<p><input type="text" name="rd.debtaddress"  class="input1 requred" value="${rd.debtaddress!}"></p>
		<p><span class="fontred">*</span>3.债务方联系方式：</p>
		<p>&nbsp;<span class="fontred ">*</span>联系方式（1）<input type="text"  id="debtphone1" name="rd.debtphone1"  class="input1 requred"  value="${rd.debtphone1!}"></p>
		<p>&nbsp;<span class="fontred"></span>联系方式（2）<input type="text" name="rd.debtphone2"  class="input1" value="${rd.debtphone2!}"></p>
		<p>&nbsp;<span class="fontred"></span>联系方式（3）<input type="text" name="rd.debtphone3"  class="input1" value="${rd.debtphone3!}"></p>
		<p><span class="fontred">*</span>4.债务方ID号：</p>
		<p><input type="text" id="debtidcard" name="rd.debtidcard"  class="input1 requred" value="${rd.debtidcard!}"> </p>
		<p><span class="fontred">*</span>5.债务人是否能正常联系：</p>
		<table cellspacing="0" class="pubpp">
            <tbody><tr>
               <td class="thwid"><input type="radio" id="debtiscontact1" name="rd.debtiscontact" value="1" checked="checked" >是</td>
               <td class="thwid"><input type="radio"  id="debtiscontact0" name="rd.debtiscontact" value="0" >否</td>
            </tr>
        </tbody></table>
		<p><span class="fontred">*</span>6.债务人是否具有还款能力：</p>
		<table cellspacing="0" class="pubpp">
            <tbody><tr>
               <td class="thwid"><input type="radio" id="debtispay2" name="rd.debtispay" value="1" checked="checked" >是</td>
               <td class="thwid"><input type="radio" id="debtispay0" name="rd.debtispay" value="0" >否</td>
            </tr>
        </tbody></table>
		</div>
		<div class="contentxr1">
		<input type="text" name="rd.proType" id="proType" style="display:none">
		<input type="button" onclick="savePro(1)" class="reg2btn" value="保存">
		<input type="button" onclick="savePro(2)" class="reg2btn" value="提交审核">
		</div>
	</div>
</div>
<div class="tan" id="tan">
    	<p class="regsuc"><span id="seccestxt"></span></br>
	    	<!--<a herf="#" class="tanaaa" >继续添加信息</a>&nbsp;&nbsp;&nbsp;&nbsp;-->
	    	<a herf="#" class="tanaaa" onclick="reload()" >继续添加</a>&nbsp;&nbsp;&nbsp;&nbsp;
	    	<a herf="#" class="tanaaa" onclick="myPro()"  >查看标的</a></p>
    	
  </div>
   	  <div id="loading-mask1"></div>
</form>
</body>
</html>
<script>
var companyprovince='${rd.rightProvince!}';
var companyprefecturecity='${rd.rightcity!}';
var companyarea='${rd.rightdist!}';
selectedOriginPro(companyprovince);
selectedOriginCity(companyprefecturecity);
selectedOriginDist(companyarea);
</script>