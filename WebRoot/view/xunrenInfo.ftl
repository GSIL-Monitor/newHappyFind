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
	                url:"${request.contextPath}/GetRewardAction!addGetReward.action",
	                data:$('#getRewordForm').serialize(),// 你的formid
	                success: function(data) {
	                	 var type=data;
		                	if(type==1){
		               				alert("操作成功，请耐心等待审核结果~")
		               				window.location.href="${request.contextPath}/viewManAction!toPage?pageName=memMan&selecurrt=curr12"
		               			}else if(type==2){
		               				alert("来晚啦，该标的已经满标~看看别的吧~~")
		               			}else{
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
			getOrigin("orgin",'${fp.originpro!}','${fp.origincity!}','${fp.origindist!}')
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
					<li class="titlelist">标的编号：${fp.id!}</li>
				</ul>
			</div>
			<div class="lineaa">
				<div class="linecon">
					<ul class="lineul">
						<li class="listper">标的详情</li>
					</ul>
				<div>
					<div class="contentxr">
					<p>1、被寻人姓名：${fp.name!}</p>
					<p>2、被寻人ID号：${fp.idcard!}</p>
					<p id="orgin">3、被寻人籍贯：</p>
					<p>4、被寻人详细地址：${fp.residence!}</p>
					<p>5、债权发生地：${fp.rightsplace!}</p>
					<p>6、联系方式</p>
					<p>联系方式（1）:${fp.phonenumber!}</p>
					<p>联系方式（2）${fp.phonenumber1!}</p>
					<p>联系方式（3）${fp.phonenumber2!} </p>
					<p>1、失踪天数：${fp.missingday!}天</p>
					<p>2、发布方类别：${fp.publishtype!}</p>
					<p>3、相关描述：</p>
					<p>${fp.description!}"</p>
					<p>4、相关凭证：（包含被寻人身份证复印件及相关借款协议证明等附件）<a href="${request.contextPath}/uploadAction!downFile?fileFileName=${fp.idcardcopy!}" style="color:red"=>下载</a></p>
					</div>
				</div>
		</div>
		<form id="getRewordForm">
		<input type="text" id="xunrenid" name="grf.xunrenid" class="input1" style="display:none" value="${fp.id!}">
				<div class="linecon">
					<ul class="lineul">
						<li class="listper">应标详情</li>
					</ul>
				<div>
					<div class="contentxr">
					<input type="text" id="" name="grf.xunrenzizengid" class="input1 hidden" value="${fp.id!}" >
					<input type="text" id="" name="grf.id" class="input1 hidden" value="${grf.id!}" >
					<#if user??>
					<input type="text" id="" name="grf.moduser" class="input1 hidden" value="${user.userName!}" >
					</#if>
					<input type="text" id="proFlag" name="grf.proFlag" class="input1 hidden" value="${fp.proFlag!}" >
					<p><span class="fontred">*</span>1、被寻人姓名：${fp.name!}</p>
					<p style="display:none"><input type="text" id="idcard" name="grf.name" class="input1" value="${fp.name!}" ></p>
					<p><span class="fontred">*</span>2、被寻人ID号：${fp.idcard!}</p>
					<p style="display:none"><input type="text" id="idcard" name="grf.idcard" class="input1" value="${fp.idcard!}" ></p>
					<p><span class="fontred">*</span>3、被寻人身高：</p>
					<p><input type="text" id="idcard" name="grf.shengao" class="input1" value="${grf.shengao!}"></p>
					<p><span class="fontred">*</span>4、被寻人体重：</p>
					<p><input type="text" id="residence" name="grf.tizhong" class="input1" value="${grf.tizhong!}"></p>
					<p><span class="fontred">*</span>5、被寻人特点：</p>
					<p><input type="text" name="grf.tedian" class="input1"></p>
					<p><span class="fontred">*</span>6、联系方式</p>
					<p><span class="fontred ">*</span>联系方式（1）<input type="text" name="grf.contactnumber1" class="input1" value="${grf.contactnumber1!}"></p>
					<p><span class="fontred">&nbsp;</span>联系方式（2）<input type="text" name="grf.contactnumber2" class="input1" value="${grf.contactnumber2!}"></p>
					<p><span class="fontred">&nbsp;</span>联系方式（3）<input type="text" name="grf.contactnumber3" class="input1" value="${grf.contactnumber3!}"> </p>
					<p>3、相关描述：</p>
					<textarea class="pub_text" name="grf.description" value="${grf.description!}"></textarea>
					<p>4、相关凭证：（照片）</p>
					<p> <iframe name="iframeUpload" src="${request.contextPath}/findPeopleAction!toPage?pageName=upload" width="350" height="35" frameborder=0  SCROLLING="no" ></iframe>  
					</p>
					<p>4、期望赏金：</p>
					<p><input type="text" id="qiwangshangjin" name="grf.qiwangshangjin" class="input1" >元</p>
					<p>3、竞标优势：</p>
					<textarea class="pub_text" name="grf.jingbiaoyoushi" value="${grf.jingbiaoyoushi!}"></textarea>
					<#if user??>
					<div class="contentxr1">
					<input type="button" onclick="savePro(2)" class="reg2btn" value="提交审核">
					</div>
					</#if>
					</div>
				</form>	
				</div>
		</div>
  	</div>
  </div>
 <!-- bottom -->
   <#include "../bottom.ftl">
<!-- bottomend -->
</form>
</body>
</html>