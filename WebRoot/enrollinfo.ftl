<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/view/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/view/reset.css">
    <link rel="stylesheet" type="text/css" href="css/view/common.css">
    <link rel="stylesheet" type="text/css" href="css/view/head.css">
    <link rel="stylesheet" type="text/css" href="css/view/logon.css">
    <!--[if lt IE 9 ]>
    <link href="css/view/styleie.css" rel="stylesheet" type="text/css"/>
    <![endif]-->
    <!--<script src="js/hm.js"></script>-->
    <!--[if IE 6]>
	<script type="text/javascript" src="js/view/alpha.js"></script>
	<![endif]--> 
    <link rel="stylesheet" type="text/css" href="css/view/index.css">
	<script type="text/javascript" src="js/view/jquery.js"></script>
  <script type="text/javascript">
    $(function(){
    	var userType='${type}';
        if(userType==1){
        	$("#userType").html("个人用户")
        }else if(userType==2){
        	$("#userType").html("债权方企业用户")
        }else if(userType==3){
        	$("#userType").html("催收方企业用户")
        }
        $("#userFlag").val(userType);
    	$("#userType").addClass("userType");
		 
		 //检查用户名
		$("#account").blur(function(){
		 	if($(this).val()==""||$(this).val()==" "){
		 		$("#ts_account").show();
		 	}else{
		 		$("#ts_account").hide();
		 		$.ajax({
	                type: "POST",
	                url:"${request.contextPath}/regAction!getCountByUserName.action",
	                data:$('#regUser').serialize(),// 你的formid
	                success: function(data) {
		                var type=data;
		                	if(type==1){
		                		$("#ts_account1").show();
		                	}else{
		                		$("#ts_account1").hide();
		                	}
		               }
	       		});
		 	}
		 });
		 
		  //检查pwd
		 $("#pwd").blur(function(){
		 	if($(this).val()==""||$(this).val()==" "||$(this).val().length<6||$(this).val().length>22){
		 		$("#ts_pwd").show();
		 	}else{
		 		$("#ts_pwd").hide();
		 	}
		 })
		 //检查pwd二次
		  $("#rePwd").blur(function(){
		 	if($(this).val()==""||$(this).val()==" " || $(this).val()!=$("#pwd").val()){
		 		$("#ts_rePwd").show();
		 	}else{
		 		$("#ts_rePwd").hide();
		 	}
		 })
		 
		  //检查验证码
		  $("#imgCodeNum").blur(function(){
		 	if($(this).val()==""||$(this).val()==" "){
		 		$("#ts_imgCodeNum").show();
		 	}else{
		 		$("#ts_imgCodeNum").hide();
		 	}
		 })
		 
		   //检查手机号
		  $("#phones").blur(function(){
		  if(checkphone($(this).val())){
			 	if($(this).val()==""||$(this).val()==" "){
			 		$("#ts_phone").show();
			 	}else{
			 		$("#ts_phone").hide();
			 	}
		 	}else{
		 		$("#ts_phone").show();
		 	}
		 })
		 
		 //检查手机验证码
		  $("#codeNum").blur(function(){
		 	if($(this).val()==""||$(this).val()==" "){
		 		$("#ts_codeNum").show();
		 	}else{
		 		$("#ts_codeNum").hide();
		 	}
		 })
    })
    
    function checkInfo(){
    var flag=0;
    	 //检查姓名
		 	if($("#account").val()==""||$("#account").val()==" "){
		 		$("#ts_account").show();
		 		flag=1;
		 	}else{
		 		$("#ts_account").hide();
		 	}
		  //检查pwd
		 	if($("#pwd").val()==""||$("#pwd").val()==" "||$("#pwd").val().length<6||$("#pwd").val().length>22){
		 		
		 		$("#ts_pwd").show();
		 		flag=1;
		 	}else{
		 		$("#ts_pwd").hide();
		 	}
		 //检查pwd二次
		 	if($("#rePwd").val()==""||$("#rePwd").val()==" " || $("#rePwd").val()!=$("#pwd").val()){
		 		$("#ts_rePwd").show();
		 		flag=1;
		 	}else{
		 		$("#ts_rePwd").hide();
		 	}
		 
		  //检查验证码
		 //	if($("#imgCodeNum").val()==""||$("#imgCodeNum").val()==" " ){
		// 		$("#ts_imgCodeNum").show();
		 //		flag=1;
		 //	}else{
		 //		$("#ts_imgCodeNum").hide();
		 //	}
		 
		   //检查手机号
		   
		 	if($("#phones").val()==""||$("#phone").val()==" "){
		 		$("#ts_phone").show();
		 		flag=1;
		 	}else{
		 		$("#ts_phone").hide();
		 	}
		 
		 //检查手机验证码
		 	if($("#codeNum").val()==""||$("#codeNum").val()==" "){
		 		$("#ts_codeNum").show();
		 		flag=1;
		 	}else{
		 		$("#ts_codeNum").hide();
		 	}
		 	return flag;
    }
    
    
    function logonbtn(){
    	 $(".pop").fadeIn(300);
		 $("#loading-mask").fadeIn(300);
    }
    
    function regUser(){
       if(checkInfo()==0){
    	$.ajax({
	                type: "POST",
	                url:"${request.contextPath}/regAction!addUser.action",
	                data:$('#regUser').serialize(),// 你的formid
	                success: function(data) {
		                var type=data;
		                	if(type==1){
		                		$("#loading-mask1").show();
		                		$("#tan").show();
		                	}
		                }
	       });
	       }
    }
    
        function checkphone(phone){
        	var tel = phone; //获取手机号
        	var telReg = !!tel.match(/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/);
        	return telReg
        }
    </script>
  <body>
  <!--  TOP  -->
  <#include "top.ftl">
  <!--  TOPEND  -->
  	 <!-- banner -->
		<div class="bannerlogn">
		    <div class="banner_boxlogon">
		        <ul class="banner_imglogon">
		            <li style="display: list-item;" class="itemlilogon2"><a href="javascript:void(0);"></a></li>
		        </ul>      
		 	</div>   
		</div>
		
		<div id="dingjia" class="shenfenpro_zhai">
			<div class="shenfenprotitle">
		                 <h3>
		                 		<span class="line"></span>
		                 		<a title="快速注册">快速注册 <span id="userType" class="userType"></span>
		                 </h3>
		    </div>
	    
	    
	<form  id="regUser" method="post">
    <div class="reg21">
        <div class="reg2con">
            <div class="fl">
            <p class="regp"></p>
                <div class="int">
                	 <input type="text"  id="userFlag"  name="user.userFlag" style="display:none">
                    <span class="intface userface" style="background-position: 0px 0px;"></span>
                    <input type="text" placeholder="用户名：字母、数字" class="user" id="account"  name="user.userName">
                    <span class="ts" id="ts_account" style="display: none;">用户名必须输入。</span>
                    <span class="ts" id="ts_account1" style="display: none;">用户名已有，换一个吧~。</span>
                </div>
                <div class="int">
                    <span class="intface pwdface" style="background-position: 0px -60px;"></span>
                    <input type="password" placeholder="密码：字母或数字" class="pwd" id="pwd" name="user.userPass" >
                    <span class="ts" id="ts_pwd" style="display: none;">密码长度为6-22位。</span>
                </div>
                <div class="int">
                    <span class="intface pwd1face" style="background-position: 0px -60px;"></span>
                    <input type="password" placeholder="确认密码：重新输入上面填写的密码" class="pwd1" id="rePwd" >
                    <span class="ts" id="ts_rePwd" style="display: none;">请再次输入密码。</span>
                </div>
                <div class="int hidden">
                     <span class="intface renface1" style="background-position: 0px -185px;"></span>
                    <input class="ren1" type="text" placeholder="请输入验证码" id="imgCodeNum" >                    
                    <span class="ts" id="ts_imgCodeNum" style="display: none;">请输入验证码</span>
                </div>
                <div class="int">
                    <span class="intface phoface" style="background-position: 0px -120px;"></span>
                    <input type="text" placeholder="手机号码" class="pho" id="phones" name="user.userPhone">
                     <span class="code" id="sendCode"><span id="sendCodeSecond">获取验证码</span></span>
                    <span class="ts" id="ts_phone" style="display: none;">请输入手机号。</span>
                </div>
                <div class="int">
                    <span class="intface renface" style="background-position: 0px -185px;"></span>
                    <input type="text" placeholder="手机认证：请填写收到的验证码" class="ren" id="codeNum">
                    <span class="ts" id="ts_codeNum" style="display: none;">验证码不能为空</span>
                </div>
                <p class="regtt">
                <input class="reg_check" type="checkbox" id="agreement" checked="checked">我已阅读并同意平台注册协议
                </p>
            </div>
            </form>
            <div class="fr reg2r">
            <h3> 乐寻平台服务协议</h3>
            </div>
            <div style="clear:both;"></div>
            <p class="reg2next">
            <input type="button" onclick="regUser()" class="reg2btn" value="提交"></button>
            </p>
        </div>
 		</div>
 		</div>       
 <div>
 <!--弹窗-->
      <div class="tan" id="tan">
	    	<p class="regsuc"><span>注册成功!!</span></br>
	    	<!--<a herf="#" class="tanaaa" >继续添加信息</a>&nbsp;&nbsp;&nbsp;&nbsp;-->
	    	<a herf="#" class="tanaaa" onclick="">随便看看</a>&nbsp;&nbsp;&nbsp;&nbsp;
	    	<a herf="#" class="tanaaa" onclick="logonbtn()">马上登陆</a></p>
   	  </div>
   	  <div id="loading-mask1"></div>

	<!-- bottom -->
	  <#include "bottom.ftl">
	<!-- bottomend -->
</body>
</html>
