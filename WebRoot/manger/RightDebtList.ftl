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
                	<li class="current">定价标列表</li> 
                </ul>
     </div>
     <div class="space"></div>
    	<div class="mode">
	    	<div class="theme">
	    	<form id="RightDebtForm" method="post" action="${request.contextPath}/RightDebtAction!toVerPageList?pageName=RightDebtlist">
	    	<span class="title">
	    				<input name="type" type="text" value="${type!}" class="defText1 hidden" >
	                	姓名：<input name="rd.rightname" type="text" value="${rd.rightname!}" class="defText1">
	                	身份证号码：<input name="rd.rightidcard" type="text" value="${rd.rightidcard!}" class="defText1">
	                	标的审核状态：<select name="rd.proType" id=proType >
	                		<option value="2">未审核</option>
	                		<option value="4">审核通过</option>
	                		<option value="3">审核不通过</option>
	                	</select>
	                	</span>
            			<input type="button" id="submitbtidborrow" class="btn" value="查&nbsp;&nbsp;&nbsp;询" onclick="subRightDebt()"/>
            </form>
            	
	         </div>
                <div class="datatbl">
                	<table>
                    	<tr class="bg">
                        	<th>债权人姓名</th>
                        	<th>债权人地址</th>
                        	<th>债权人电话</th>
                        	<th>债权人身份证号或营业执照注册号</th>
                        	<th>债权金额</th>
                        	<th>债务方姓名</th>
                        	<th>债务方地址</th>
                        	<th>标的状态</th>
                        	<th>操作</th>
                        </tr>
                        <#list RightDebtlist as RightDebt>
                    <tr>
                        <td>${RightDebt.rightname!}</td>
                        <td>${RightDebt.rightaddress!}</td>
                        <td>${RightDebt.rightphone!}</td>
                        <td>${RightDebt.rightidcard!}</td>
                        <td>${RightDebt.rightamount!}</td>
                        <td>${RightDebt.debtname!}</td>
                        <td>${RightDebt.debtaddress!}</td>
                        <td><#if (RightDebt.proType??&&RightDebt.proType=='2')>待审核<#elseif (RightDebt.proType??&&RightDebt.proType=='4')>审核通过<#elseif (RightDebt.proType??&&RightDebt.proType=='3')>审核不通过</#if></td>
                        <td><img src="image/manger/0812309.png" class="update" onclick="updateRightDebt('${RightDebt.id!}')" title="审核"></img>
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
function subRightDebt(){
	$("#RightDebtForm").submit();
}

function addRightDebt(){
			var url="${request.contextPath}/RightDebtAction!toPage?pageName=addRightDebt";
			$('#iframe_window_idt').attr("src",url).width(900).height(600);
			$('#qwindow_maskt').show();
			$('#qwindowt').show();
}

function deleteRightDebt(id){
			$.ajax({
	                cache: true,
	                type: "POST",
	                url:"${request.contextPath}/RightDebtAction!deleteRightDebt.action?id="+id,
	                async: false,
	                error: function(request) {
	                    alert("删除失败！");
	                },
	                success: function(data) {
	                	alert('删除成功！');
	                	$("#RightDebtForm").submit();
	                }
	            });
}

function updateRightDebt(id){

	var url="${request.contextPath}/mangerAction!toPage?pageName=shenheRightDebt&id="+id;
			$('#iframe_window_idt').attr("src",url).width(900).height(400);
			$('#qwindow_maskt').show();
			$('#qwindowt').show();
}

function addRightDebt(id){
	var url="${request.contextPath}/RightDebtAction!toPage?pageName=addRightDebt&id="+id;
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
				$("#RightDebtForm").submit();
}

$(function(){
	var proType = '${rd.proType}';
	$('#proType').val(proType);
})
</script>
