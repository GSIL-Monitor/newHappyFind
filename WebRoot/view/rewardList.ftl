<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>乐寻平台管理后台</title>
<link href="CVE.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${request.contextPath}/js/jquery-1.3.2.min.js"></script>
</head>
<body id="value">
<div class="dataCon">
	<div class="tab">
            	<ul>
                	<li class="current">悬赏列表</li> 
                </ul>
     </div>
     <div class="space"></div>
    	<div class="mode">
	    	<div class="theme">
	    	<form id="rewardForm" method="post" action="${request.contextPath}/RewardAction!toPageList?pageName=reward">
	    	<span class="title">
	                	姓名：<input name="rf.name" type="text" value="${rf.name!}" class="defText1">
	                	身份证号码：<input name="rf.idCard" type="text" value="${rf.idCard!}" class="defText1">
	                	</span>
            			<input type="button" id="submitbtidborrow" class="btn" value="查&nbsp;&nbsp;&nbsp;询" onclick="subborrow()"/>
            			<input type="button" id="submitbtidborrow" class="btn " value="添加信息"  onclick="addReward()"/>
            </form>
            	
	         </div>
                <div class="datatbl">
                	<table>
                    	<tr class="bg">
                        	<th>姓名</th>
                        	<th>身份证号码</th>
                        	<th>贷款时间</th>
                        	<th>贷款金额</th>
                        	<th>发布日期</th>
                        	<th>悬赏金额</th>
                        	<th>联系方式1</th>
                        	<th>联系方式2</th>
                        	<th>联系方式3</th>
                        	<th>操作</th>
                        </tr>
                        <#list rewardlist as reward>
                    <tr>
                        <td>${reward.name!}</td>
                        <td>${reward.idCard!}</td>
                        <td>${reward.loantime!}</td>
                        <td>${reward.loanmount!}</td>
                        <td>${reward.releasetime!}</td>
                        <td>${reward.rewardamount!}</td>
                        <td>${reward.contactnumber1!}</td>
                        <td>${reward.contactnumber2!}</td>
                        <td>${reward.contactnumber3!}</td>
                        <td><img src="image/0812309.png" class="update" onclick="updatereward('${reward.id!}')" title="修改"></img>
                        		<img src="image/delete.png" class="delete" onclick="deletereward('${reward.id!}')"  title="删除"></img></td>
                    </tr>
                     </#list>
                    </table>
                </div>
            </div>
  </div>
</div>
<div id="qwindow_maskt" class="qwindow_mask " style="opacity: 0.5;z-index:30000;width:1349px;height:800px;background-color: rgb(84, 84, 84);"></div>
    <div id="qwindowt" class="qwindow " style="top:120px; left:393px;z-index:30000;opacity:1;visibility:visible;">
    	<iframe id="iframe_window_idt" frameborder="0" scrolling="no" src="" ></iframe>
    </div>
  </body>
</html>
<script>
function subreward(){
	$("#rewardForm").submit();
}

function addReward(){
			var url="${request.contextPath}/RewardAction!toPage?pageName=addReward";
			$('#iframe_window_idt').attr("src",url).width(700).height(300);
			$('#qwindow_maskt').show();
			$('#qwindowt').show();
}

function deletereward(rewardid){
			$.ajax({
	                cache: true,
	                type: "POST",
	                url:"${request.contextPath}/RewardAction!deleteBorrow.action?rewardId="+rewardid,
	                async: false,
	                error: function(request) {
	                    alert("删除失败！");
	                },
	                success: function(data) {
	                	alert('删除成功！');
	                	$("#rewardForm").submit();
	                }
	            });
}

function updatereward(rewardid){
	var url="${request.contextPath}/RewardAction!toPage?pageName=update&rewardId="+rewardid;
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
