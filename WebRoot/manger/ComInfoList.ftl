<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>乐寻平台管理后台</title>
<link href="CVE.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${request.contextPath}/js/view/index.js"></script>
</head>
<body id="value">
<div class="dataCon">
	<div class="tab">
            	<ul>
                	<li class="current">催收列表</li> 
                </ul>
     </div>
     <div class="space"></div>
    	<div class="mode">
	    	<div class="theme">
	    	<form id="FindPeopleForm" method="post" action="${request.contextPath}/findPeopleAction!toPageList?pageName=FindPeople">
	    	
            			<input type="button" id="submitbtidborrow" class="btn" value="查&nbsp;&nbsp;&nbsp;询" onclick="subFindPeople()"/>
            </form>
            	
	         </div>
                <div class="datatbl">
                	<table>
                    	<tr class="bg">
                        	<th>项目编号</th>
                        	<th>竞标者</th>
                        	<th>催收金额</th>
                        	<th>提交时间</th>
                        	<th>状态</th>
                        	<th>操作</th>
                        </tr>
                        <#list CompetitiveList as comp>
                    <tr>
                        <td id="bianhao${comp.proId!}"><script>getBianhao('${comp.proId!}','${comp.type!}')</script></td>
                        <td>${comp.moduser!}</td>
                        <td>${comp.id!}</td>
                        <td>${comp.submitTime!}</td>
                        <td>${comp.proFlag!}</td>
                        <td><img src="image/manger/0812309.png" class="update" onclick="updateFindPeople('${comp.id!}')" title="审核"></img>
                        </td>
                    </tr>
                     </#list>
                    </table>
                </div>
            </div>
  </div>
</div>
<div id="qwindow_maskt" class="qwindow_mask " style="opacity: 0.5;z-index:30000;width:1349px;height:900px;background-color: rgb(84, 84, 84);"></div>
    <div id="qwindowt" class="qwindow " style="top:120px; left:393px;z-index:30000;opacity:1;visibility:visible;">
    	<iframe id="iframe_window_idt" frameborder="0" scrolling="" src="" ></iframe>
    </div>
  </body>
</html>
<script>
function subFindPeople(){
	$("#FindPeopleForm").submit();
}

function addFindPeople(){
			var url="${request.contextPath}/FindPeopleAction!toPage?pageName=addFindPeople";
			$('#iframe_window_idt').attr("src",url).width(900).height(600);
			$('#qwindow_maskt').show();
			$('#qwindowt').show();
}

function updateFindPeople(id){
	var url="${request.contextPath}/mangerAction!toPage?pageName=shenheComInfo&id="+id;
			$('#iframe_window_idt').attr("src",url).width(900).height(400);
			$('#qwindow_maskt').show();
			$('#qwindowt').show();
}

function addGetReward(id){
	var url="${request.contextPath}/GetRewardAction!toPage?pageName=addgetReward&rewardId="+id;
			$('#iframe_window_idt').attr("src",url).width(700).height(300);
			$('#qwindow_maskt').show();
			$('#qwindowt').show();
}

function addFindPeople(id){
     var url="${request.contextPath}/FindPeopleAction!toPage?pageName=addFindPeople&id="+id;
			$('#iframe_window_idt').attr("src",url).width(700).height(300);
			$('#qwindow_maskt').show();
			$('#qwindowt').show();
}


	
function hiddeniframes(){
				$('#qwindow_maskt').hide();
				$('#qwindowt').hide();
}
			
function hiddeniframesandsub(){
				$('#qwindow_maskt').hide();
				$('#qwindowt').hide();
				$("#rewardForm").submit();
}

</script>
