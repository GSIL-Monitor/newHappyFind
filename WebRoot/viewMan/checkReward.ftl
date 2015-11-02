<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
   	<link rel="stylesheet" type="text/css" href="css/view/viewstyle.css">
   
  <body>
                <div class="datatbl">
                	<table cellspacing="0">
                    	<tr class="bg">
                        	<th>应标人</th>
                        	<th>应标人类型</th>
                        	<th>期望赏金</th>
                        	<th>应标时间</th>
                        	<th>操作</th>
                        </tr>
                        <#list getrewardlist as reward>
			                    <tr>
			                        <td>${reward.moduser!}</td>
			                        <td><#if (reward.moduserType?? && reward.moduserType=='2')>企业<#else>个人</#if></td>
			                        <td>${reward.qiwangshangjin!}元</td>
			                        <td>${reward.modtime!}</td>
			                        <td>
			                        <#if reward.proFlag?? && reward.proFlag == '6'>
			                        <a href="#" onclick="turnInfo()">点击查看详情</a>
			                        <#else>
			                        <a href="#" onclick="openInfo('${reward.qiwangshangjin!}','${reward.id!}')">缴费查看</a>
			                        </#if>
			                        </td>
			                    </tr>
                     </#list>
                    </table>
                </div>
                
</body>
</html>
	<script>
   	function openInfo(value,proId){
   		var textV = "此次查看信息会收取"+value+"元费用，确认查看么？"
   			if(window.confirm(textV)){
                 alert("确定");
	   			url="${request.contextPath}/GetRewardAction!checkJingbiao.action?getrewardId="+proId;
	   			$.ajax({
		                type: "POST",
		                url:url,
		                success: function(data) {
			                var type=data;
			                	if(type==1){
			                		alert("操作成功！");
			                	}
			                }
		       });
   		}
   	}
   	</script>