<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <link rel="stylesheet" type="text/css" href="css/view/logon.css">
  <script type="text/javascript" src="js/view/jquery.js"></script>
  <script>
  $(function(){
  	 $(".closed").click(function(){
			 $(".pop").fadeOut(300);
			 $("#loading-mask").fadeOut(300);
	 	})
	 	$("#loginin").click(function(){
			 $(".pop").fadeIn(300);
			 $("#loading-mask").fadeIn(300);
		 })
		 
		 
  })
  function loginUser(){
  	$.ajax({
	                type: "POST",
	                url:"${request.contextPath}/regAction!logonUser.action",
	                data:$('#logonForm').serialize(),// 你的formid
	                success: function(data) {
		                var type=data;
		                	if(type==1){
		                		$("#checkUser").hide();
		                		window.location.href="${request.contextPath}/viewManAction!toPage?pageName=memMan"
		                	}else{
		                		$("#checkUser").show();
		                	}
		                }
	       });
  }
  
  </script>
  </head>
  <body>
    <div class="head">
        <div class="head1">
            <div class="head1con">
               <div class="head1conr">
                <#if (user??)>
                <span class="member"  id="logining"><a href="#">${user.userName}</a>|<a href="${request.contextPath}/viewManAction!toPage?pageName=memMan">我的乐寻</a>|<a href="${request.contextPath}/regAction!logonOut.action">退出</a></span>  
                <#else>
                   <span class="member" id="ustatus">
                	<a href="#" id="loginin">登录</a> |<a href="${request.contextPath}/regAction!toPage?pageName=enroll">注册</a></span>
                </#if>
               </div>
            </div>
        </div>
        <div class="headcon">
            <a href=""><img src="image/view/logobk.png"  height="64px" width="363px"></a>
            <ul>
                <li><a href="${request.contextPath}/regAction!toPage?pageName=index" id="shouye" >首页</a></li>
                <li><a href="${request.contextPath}/RightDebtAction!toPageList?pageName=dlist" id="dlist">定价标</a></li>
                <li><a href="${request.contextPath}/RightDebtAction!toPageList?pageName=jlist" id="jlist">竞价标</a></li>
                <li><a href="${request.contextPath}/findPeopleAction!toPageList?pageName=list" target="_blank" id="xlist">寻人标</a></li>
                <li><a href="">联系我们</a></li>
         </ul>
        </div>
    </div>
    <!--    登陆 -->
    <div id="loading-mask"></div>
    <div class="pop login"  id="loginin" >
    <div class="pop_con">
        <p class="closed">关闭</p>
        <div class="loginTab">
            <ul>
                <li class="current">用户登录</li>
            </ul>
        </div>
        <div class="loginTag">
            <div class="loginCon_c">
                <form id="logonForm"action="" method="">
                    <ul class="pop_list clearfix">
                        <li>
                            <label class="pop_name">用户名</label>
                            <div class=" int2">
                                <input type="text" placeholder="请填写账号" class="user"  id="loginuserName" name="user.userName">
                            </div>
                        </li>
                        <li>
                            <label class="pop_name">密码</label>
                             <div class=" int2">
                                 <input type="password" placeholder="请填写密码" class="pwd" id="loginpwd" name="user.userPass" >
                            </div>
                        </li>
                          <li style="display:none" id="checkUser">
                          	<label class="pop_name"></label>
                            <div class=" int2"><span style="color:red">用户名或密码有误 </span></div>
                        </li>
                        
                        <li class="btn_info">
                            <input type="button" class="c_btn loginBtn mg" onclick="loginUser()"/>
                        </li>
                    </ul>
                </form>
            </div>
        </div>
    </div>
</div>
  </body>
</html>
