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
   	<script>
   	function showPassText(){
   		$('#showPassText').show();
   	}
   	 function checkInfo(){
   	 var flag=0;
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
		 	return flag
   	 }
   	 
   	function regPass(){
       if(checkInfo()==0){
    	$.ajax({
	                type: "POST",
	                url:"${request.contextPath}/regAction!updatePass.action",
	                data:$('#regUser').serialize(),// 你的formid
	                success: function(data) {
		                var type=data;
		                	if(type==1){
		                		alert("修改成功！")
		                		$('#showPassText').hide();
		                	}
		                }
	       });
	       }
    }
   	</script>
  <body>
  <form  id="regUser" method="post">
 <div>
  	<div class="titlecon">
			<ul class="titleul">
				<li class="titlelist">用户信息</li>
			</ul>
			<p class="tiship"></P>
	</div>
	<div class="lineaa">
		<div class="linecon">
			<ul class="lineul">
				<li class="listper">基本信息</li>
			</ul>
		<div>
		<div class="contentxr">
		<input type="text"  id="userName"  name="user.userName" value="${user.userName!}" style="display:none">
		<p><span class="fontred">&nbsp</span>1、用户名：${user.userName!}</p>
		<p><span class="fontred">&nbsp</span>2、手机号：${user.userPhone!}</p>
		<p><span class="fontred">&nbsp</span>3、<a onclick="showPassText()">修改密码</a></p>
		<div id="showPassText" style="display:none">
				 <div class="int" style="margin-left: 120px;">
                    <span class="intface pwdface" style="background-position: 0px -60px;"></span>
                    <input type="password" placeholder="密码：字母或数字" class="pwd" id="pwd" name="user.userPass" >
                    <span class="ts" id="ts_pwd" style="display: none;">密码长度为6-22位。</span>
                </div>
                <div class="int" style="margin-left: 120px;">
                    <span class="intface pwd1face" style="background-position: 0px -60px;"></span>
                    <input type="password" placeholder="确认密码：重新输入上面填写的密码" class="pwd1" id="rePwd" >
                    <span class="ts" id="ts_rePwd" style="display: none;">请再次输入密码。</span>
                </div>
            	<input type="button" onclick="regPass()" class="reg2btn" style="margin-left: 120px;margin-top: 12px;" value="提交"></button>
	</div>
	</div>
</div>
</form>
</body>
</html>