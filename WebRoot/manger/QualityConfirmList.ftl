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
                	<li class="current">网站用户管理</li> 
                </ul>
     </div>
     <div class="space"></div>
    	<div class="mode">
	    	<div class="theme">
	    	<form id="QualityConfirmForm" method="post" action="${request.contextPath}/QualityConfirmAction!toPageList?pageName=QualityConfirm">
	    	<span class="title">
	    				<input name="type" type="text" value="${type!}" class="defText1 hidden" >
	                	姓名：<input name="qc.username" type="text" value="${qc.username!}" class="defText1">
	                	身份证号码：<input name="qc.idcard" type="text" value="${qc.idcard!}" class="defText1">
	                	标的审核状态：<select name="qc.infoFlag" id=proType >
	                		<option value="2">未审核</option>
	                		<option value="4">审核通过</option>
	                		<option value="3">审核不通过</option>
	                	</select>
	                	</span>
            			<input type="button" id="submitbtidborrow" class="btn" value="查&nbsp;&nbsp;&nbsp;询" onclick="subQualityConfirm()"/>
            </form>
            	
	         </div>
                <div class="datatbl">
                	<table>
                    	<tr class="bg">
                        	<th>个人用户姓名</th>
                        	<th>个人用户身份证号</th>
                        	<th>个人用户职业</th>
                        	<th>个人用户所在地省份</th>
                        	<th>个人用户所在地地级市</th>
                        	<th>个人用户所在地市区</th>
                        	<th>审核状态</th>
                        	<th>操作</th>
                        </tr>
                        <#list QualityConfirmlist as QualityConfirm>
                    <tr>
                        <td>${QualityConfirm.username!}</td>
                        <td>${QualityConfirm.idcard!}</td>
                        <td>${QualityConfirm.profession!}</td>
                        <td>${QualityConfirm.province!}</td>
                        <td>${QualityConfirm.prefecturecity!}</td>
                        <td>${QualityConfirm.area!}</td>
                        <td><#if (QualityConfirm.infoFlag??&&QualityConfirm.infoFlag=='2')>待审核<#elseif (QualityConfirm.infoFlag??&&QualityConfirm.infoFlag=='4')>审核通过<#elseif (QualityConfirm.infoFlag??&&QualityConfirm.infoFlag=='3')>审核不通过</#if></td>
                        <td><img src="image/manger/0812309.png" class="update" onclick="updateQualityConfirm('${QualityConfirm.id!}')" title="审核"></img>
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
function subQualityConfirm(){
	$("#QualityConfirmForm").submit();
}

function addQualityConfirm(){
			var url="${request.contextPath}/QualityConfirmAction!toPage?pageName=addQualityConfirm";
			$('#iframe_window_idt').attr("src",url).width(900).height(600);
			$('#qwindow_maskt').show();
			$('#qwindowt').show();
}

function deleteQualityConfirm(id){
			$.ajax({
	                cache: true,
	                type: "POST",
	                url:"${request.contextPath}/QualityConfirmAction!deleteQualityConfirm.action?id="+id,
	                async: false,
	                error: function(request) {
	                    alert("删除失败！");
	                },
	                success: function(data) {
	                	alert('删除成功！');
	                	$("#QualityConfirmForm").submit();
	                }
	            });
}

function updateQualityConfirm(id){

	var url="${request.contextPath}/mangerAction!toPage?pageName=shenheQualityConfirm&id="+id;
			$('#iframe_window_idt').attr("src",url).width(900).height(400);
			$('#qwindow_maskt').show();
			$('#qwindowt').show();
}

function addQualityConfirm(id){
	var url="${request.contextPath}/QualityConfirmAction!toPage?pageName=addQualityConfirm&id="+id;
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
