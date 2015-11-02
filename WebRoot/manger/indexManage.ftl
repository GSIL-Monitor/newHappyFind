<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>乐寻平台管理后台</title>
<link href="CVE.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script>
function openiframe(id,url){
	$("#iframe_id").attr("src",url);
	$("#"+id).addClass("current");
}

</script>
</head>

<body id="value">
	<div class="top">
    	<div class="logo"><h1>乐寻平台管理后台</h1></div>
    </div>
    <div class="content">
  	  <div class="left">
        	<div class="tab">
            	<ul>
                	<li class="current">=====管-理-菜-单=====</li>
                </ul>
            </div>
            <div class="space"></div>
            <!--片库剧-->
            <div class="showList old">
            	<ul>
                	<li onclick='openiframe("xunren","findPeopleAction!toPageList?pageName=xrMan")'><span  id="xunren" >审核寻人标</span><i class="four"></i></li>
                	<li onclick='openiframe("getreward","GetRewardAction!toPageList?pageName=getreward")'><span id="getreward">审核领赏</span><i class="four"></i></li>
                	<li onclick='openiframe("rightdebtd","RightDebtAction!toVerPageList?pageName=RightDebt&type=1")'  id="rightdebtd" ><span >审核定价标</span><i class="four"></i></li>
                	<li onclick='openiframe("rightdebtj","RightDebtAction!toVerPageList?pageName=RightDebt&type=2")'  id="rightdebtj" ><span>审核竞价标</span><i class="four"></i></li>
                	<li onclick='openiframe("rightdebtj","RightDebtAction!getCompeList?pageName=toVerPageList")'  id="rightdebtj" ><span>审核催收信息</span><i class="four"></i></li>
                	<li onclick='openiframe("QualityConfirm","QualityConfirmAction!toPageList?pageName=QualityConfirm&type=1")' id="QualityConfirm"><span>个人用户管理</span><i class="four"></i></li>
                	<li onclick='openiframe("QualityConfirm","QualityConfirmAction!toPageList?pageName=QualityConfirm&type=2")' id="QualityConfirm"><span>企业用户管理</span><i class="four"></i></li>
                	<li><span>平台资金管理</span><i class="four"></i></li>
                	
                </ul>
            </div>
      </div>
      
      <div class="right">
            <iframe src="" width="100%"  height="200px" frameborder="0" id="iframe_id" scrolling="no" class="cpRgt"></iframe>
      </div>
     
    </div>
</body>
</html>
<script>
$("#xunren").trigger("click");
$("#xunren").addClass("current");
</script>
