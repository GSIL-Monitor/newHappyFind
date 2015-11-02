<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String type = request.getParameter("type");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
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
    	var userType='<%=type%>';
        if(userType==1){
        	$("#userType").html("个人用户")
        	
        }else if(userType==2){
        	$("#userType").html("债权方企业用户")
        }else if(userType==3){
        	$("#userType").html("催收方企业用户")
        }
    	$("#userType").addClass("userType");
    })
    
    
    function regUser(){
    	$.ajax({
	                type: "POST",
	                url:"<%=path%>/regAction!addUser.action?",
	                data:$('#regUser').serialize(),// 你的formid
	                success: function(data) {
		                var type=data;
		                	if(type==1){
		                		$("#tan").show();
		                	}
		                }
	       });
    }
        
    </script>
  <body>
  <!--  TOP  -->
  <%@include file="top.jsp"%>
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
	    
	    
	<form id="regUser" method="post">
    <div class="reg21">
        <div class="reg2con">
            <div class="fl">
            <p class="regp"></p>
                <div class="int">
                    <span class="intface userface" style="background-position: 0px 0px;"></span>
                    <input type="text" placeholder="用户名：字母、数字" class="user" id="account"  name="user.userName">
                    <span class="ts" id="ts_account" style="display: none;">用户名必须输入。</span>
                </div>
                <div class="int">
                    <span class="intface pwdface" style="background-position: 0px -60px;"></span>
                    <input type="password" placeholder="密码：字母或数字" class="pwd" id="pwd" name="user.userPass" >
                    <span class="ts" id="ts_pwd" style="display: inline;">密码长度为6-22位。</span>
                </div>
                <div class="int">
                    <span class="intface pwd1face" style="background-position: 0px -60px;"></span>
                    <input type="password" placeholder="确认密码：重新输入上面填写的密码" class="pwd1" id="rePwd" >
                    <span class="ts" id="ts_rePwd" style="display: inline;">请再次输入密码。</span>
                </div>
                <div class="int">
                     <span class="intface renface1" style="background-position: 0px -185px;"></span>
                    <input class="ren1" type="text" placeholder="请输入验证码" id="imgCodeNum" >                    
                    <span class="ts" id="ts_imgCodeNum" style="display: inline;">请输入验证码</span>
                </div>
                <div class="int">
                    <span class="intface phoface" style="background-position: 0px -120px;"></span>
                    <input type="text" placeholder="手机号码" class="pho" id="phone" >
                     <span class="code" id="sendCode"><span id="sendCodeSecond">获取验证码</span></span>
                    <span class="ts" id="ts_phone" style="display: inline;">请输入手机号。</span>
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
            <button onclick="regUser()" class="reg2btn">提交</button>
            </p>
        </div>
        
      <div class="tan" id="tan">
    	<p class="regsuc">注册成功<span>
   	  </div>
	<!-- bottom -->
	<%@include file="bottom.jsp"%>
	<!-- bottomend -->
</body>
</html>
