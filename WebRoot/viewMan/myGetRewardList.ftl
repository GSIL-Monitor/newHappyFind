<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <!--[if lt IE 9 ]>
    <link href="css/view/styleie.css" rel="stylesheet" type="text/css"/>
    <![endif]-->
    <!--[if IE 6]>
	<script type="text/javascript" src="js/view/alpha.js"></script>
	<![endif]--> 
   	<script type="text/javascript" src="js/view/jquery.js"></script>
   	<link rel="stylesheet" type="text/css" href="css/view/viewstyle.css">
    <script>
    
    	function updateReward(peopleId){
   		   	//window.parent.selectcheckup("curr5",peopleId);
   		   	window.location.href="${request.contextPath}/findPeopleAction!toPage?pageName=xunrenInfo&id="+peopleId;
   		}
   		
   		function deleteReward(peopleId){
	       	$.ajax({
	                cache: true,
	                type: "POST",
	                url:"${request.contextPath}/GetRewardAction!deleteGetReward.action?getrewardId="+peopleId,
	                async: false,
	                error: function(request) {
	                    alert("删除失败！");
	                },
	                success: function(data) {
	                	alert('删除成功！');
	                	$("#"+peopleId).remove();
	                }
	            });
   			}
    </script>
  <body>
  	<div class="titlecon">
			<ul class="titleul">
				<li class="titlelist">寻人标列表</li>
			</ul>
			<p class="tiship"></P>
			
	</div>
                <div class="datatbl">
                	<table cellspacing="0">
                    	<tr class="bg">
                        	<th>姓名</th>
                        	<th>身份证号码</th>
                        	<th>债券发生地</th>
                        	<th>标的状态</th>
                        	<th>操作</th>
                        </tr>
                        <#list getrewardlist as reward>
			                    <tr id="${reward.id!}">
			                        <td>${reward.name!}</td>
			                        <td>${reward.idcard!}</td>
			                        <td>${reward.rightsplace!}${reward.xunrenzizengid!}</td>
			                        <td>
			                       	<#if reward.proFlag??&&reward.proFlag=='2'>提交审核
			                       	<#elseif reward.proFlag??&&reward.proFlag=='3'>审核不通过
			                       	<#elseif reward.proFlag??&&reward.proFlag=='4'>竞标中
			                       	<#elseif reward.proFlag??&&reward.proFlag=='5'>中标
			                       	<#elseif reward.proFlag??&&reward.proFlag=='6'>未中标
			                       	</#if>
			                        </td>
			                        <td>
			                        	<#if reward.proFlag??&&reward.proFlag=='3'>
			                        		<img src="image/manger/0812309.png" class="updateiton" onclick="updateReward('${reward.xunrenzizengid!}')" title="修改"></img>
			                        		<img src="image/manger/delete.png" class="deleteiton" onclick="deleteReward('${reward.id!}')"  title="删除"></img>
			                       	<#elseif reward.proFlag??&&reward.proFlag=='5'>中标
			                       	</#if>
			                    </tr>
                     </#list>
                    </table>
                </div>
</body>
</html>