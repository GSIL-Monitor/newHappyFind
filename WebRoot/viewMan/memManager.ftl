<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/view/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/view/reset.css">
    <link rel="stylesheet" type="text/css" href="css/view/common.css">
    <link rel="stylesheet" type="text/css" href="css/view/head.css">
    <link rel="stylesheet" type="text/css" href="css/view/logon.css">
    <link rel="stylesheet" type="text/css" href="css/view/list.css">
    <link rel="stylesheet" type="text/css" href="theme/css/style.css">
    <!--[if lt IE 9 ]>
    <link href="css/view/styleie.css" rel="stylesheet" type="text/css"/>
    <![endif]-->
    <!--[if IE 6]>
	<script type="text/javascript" src="js/view/alpha.js"></script>
	<![endif]--> 
    <link rel="stylesheet" type="text/css" href="css/view/index.css">
   	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
   	 <script type="text/javascript">
        $(function(){
        	var liall = $("#menu").nextAll();
        	$("#menu").children('li').click(function(){
        		selectcheck($(this).attr("id"));
        	})
        	var selectcurr = '${selecurrt!}';
        	selectcheck(selectcurr==''?'curr1':selectcurr);
        })
        
        function selectcheck(id){
        	var url="${request.contextPath}/viewManAction!toPage?pageName=";
        	$("#menu").children('li').removeClass("current");
        	if(id=='curr4'){
        		url='${request.contextPath}/RightDebtAction!toPage?pageName=bid';
        	}else if(id=='curr5'){
        		url=url+"xunren";
        	}
        	else if(id=='curr2'){
        		url=url+"system";
        	}
        	else if(id=='curr3'){
        		url=url+"moreInfos"
        	}
        	else if(id=='curr6'){
        		 url="${request.contextPath}/RightDebtAction!toPageList?pageName=mypro";
        	}else if(id=='curr7'){
        		 url="${request.contextPath}/findPeopleAction!toPageList?pageName=myXunrenList";
        	}else if(id=='curr11'){
        		 url="${request.contextPath}/RightDebtAction!getCompeList?pageName=myCompetitiveLista";
        	}else if(id=='curr12'){
        		 url="${request.contextPath}/GetRewardAction!toPageList?pageName=myGetRewardList";
        	}
        	else if(id=='curr9'){
        		 url="${request.contextPath}/RightDebtAction!getAllCompeList?pageName=";
        	}else if(id=='curr8'){
        		 url="${request.contextPath}/financeAction!toPage?pageName=fanceinfo";
        	}
        	else{
        		url=url+"userinfo"
        	}
        	$("#"+id).addClass("current");
        	$("#about").load(url);
        }
        
        function selectcheckup(id,typeId){
        	 var url="${request.contextPath}/viewManAction!toPage?pageName=";
        	$("#menu").children('li').removeClass("current");
        	 if(id=='curr6'){
        		url="${request.contextPath}/RightDebtAction!toPage?pageName=bid&id="+typeId;
        	  }else  if(id=='curr5'){
        	  	url="${request.contextPath}/findPeopleAction!toPage?pageName=xunren&id="+typeId;
        	  }else if(id=='curr11'){
        	  	url="${request.contextPath}/RightDebtAction!toPage?pageName=updateComInfo&userId="+typeId;
        	  }
        	  $("#"+id).addClass("current");
        	  $("#about").load(url);
        }
        
       
    </script>
  <body>
  <!--  TOP  -->
  <#include "../top.ftl">
  <!--  TOPEND  -->
	<div class="zhao1">
		<div class="zhao1con">
			<ul class="zhaoul">
				<li class="listper">会员管理中心</li>
			</ul>
		<div>
	<!--我要悬赏、主体内容-->
		<div class="cons clearfix">
            <div class="consL">
                <ul class="menu" id="menu">
                    <li id="curr1">用户中心</li>
                    <li id="curr2">系统消息</li>
                    <li id="curr3">完善信息</li>
                    <li id="curr8">我的账户</li>
                     <!-- 企业资产方资产或个人-->
                    <li id="curr4">发布资产标</li>
                    <li id="curr6">我的资产标</li>
                    <li id="curr5">发布寻人标</li>
                    <li id="curr7">我的寻人标</li>
                    <!-- 企业催收方-->
                    <li id="curr11">我的竞标</li>
                    <li id="curr12">我的寻人</li>
                </ul>
            </div>
            
            <div class="consR bg">
                <div class="tab_c">
                    <div class="about">
                    	<div id="about">
                       		
                        </div>
                     </div>
                </div>
         </div>   
         </div>
 	</div>
 </div>		
<!-- bottom -->
   <#include "../bottom.ftl">
<!-- bottomend -->

</body></html>