<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>乐寻平台管理后台</title>
<link href="CVE.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${request.contextPath}/js/jquery-1.8.3.js"></script>
</head>
<body id="value">
<div class="dataCon">
	<div class="tab">
            	<ul>
                	<li class="current">寻人列表</li> 
                </ul>
     </div>
     <div class="space"></div>
    	<div class="mode">
	    	<div class="theme">
	    	<form id="FindPeopleForm" method="post" action="${request.contextPath}/findPeopleAction!toPageList?pageName=FindPeople">
	    	<span class="title">
	                	姓名：<input name="fp.name" type="text" value="${fp.name!}" class="defText1">
	                	身份证号码：<input name="fp.idcard" type="text" value="${fp.idCard!}" class="defText1">
	                	标的审核状态：<select name="fp.proFlag" value="${fp.proFlag!}">
	                		<option value="2">未审核</option>
	                		<option value="4">审核通过</option>
	                		<option value="3">审核不通过</option>
	                	</select>
	                	</span>
            			<input type="button" id="submitbtidborrow" class="btn" value="查&nbsp;&nbsp;&nbsp;询" onclick="subFindPeople()"/>
            </form>
            	
	         </div>
                <div class="datatbl">
                	<table>
                    	<tr class="bg">
                        	<th>姓名</th>
                        	<th>身份证号码</th>
                        	<th>籍贯</th>
                        	<th>居住地</th>
                        	<th>债券发生地</th>
                        	<th>原联系方式1</th>
                        	<th>原联系方式2</th>
                        	<th>原联系方式3</th>
                        	<th>失踪天数</th>
                        	<th>发布方类别</th>
                        	<th>操作</th>
                        </tr>
                        <#list FindPeoplelist as FindPeople>
                    <tr>
                        <td>${FindPeople.name!}</td>
                        <td>${FindPeople.idcard!}</td>
                        <td>${FindPeople.origin!}</td>
                        <td>${FindPeople.residence!}</td>
                        <td>${FindPeople.rightsplace!}</td>
                        <td>${FindPeople.phonenumber!}</td>
                        <td>${FindPeople.phonenumber1!}</td>
                        <td>${FindPeople.phonenumber2!}</td>
                        <td>${FindPeople.missingday!}</td>
                        <td>${FindPeople.publishtype!}</td>
                        <td><img src="image/manger/0812309.png" class="update" onclick="updateFindPeople('${FindPeople.id!}')" title="审核"></img>
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
    alert(1);
	$("#FindPeopleForm").submit();
}

function addFindPeople(){
			var url="${request.contextPath}/FindPeopleAction!toPage?pageName=addFindPeople";
			$('#iframe_window_idt').attr("src",url).width(900).height(600);
			$('#qwindow_maskt').show();
			$('#qwindowt').show();
}

function deleteFindPeople(id){
			$.ajax({
	                cache: true,
	                type: "POST",
	                url:"${request.contextPath}/FindPeopleAction!deleteFindPeople.action?id="+id,
	                async: false,
	                error: function(request) {
	                    alert("删除失败！");
	                },
	                success: function(data) {
	                	alert('删除成功！');
	                	$("#FindPeopleForm").submit();
	                }
	            });
}

function updateFindPeople(id){

	var url="${request.contextPath}/mangerAction!toPage?pageName=shenheFindPeople&id="+id;
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

$(function(){
	var proFlag = '${fp.proFlag}';
	$('#proFlag').val(proFlag);
})
</script>
