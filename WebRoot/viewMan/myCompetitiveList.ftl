<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <!--[if lt IE 9 ]>
    <link href="css/view/styleie.css" rel="stylesheet" type="text/css"/>
    <![endif]-->
    <!--[if IE 6]>
	<script type="text/javascript" src="${request.contextPath}/js/view/alpha.js"></script>
	<![endif]--> 
   	<script type="text/javascript" src="${request.contextPath}/js/view/jquery.js"></script>
   	<link rel="stylesheet" type="text/css" href="${request.contextPath}/css/view/viewstyle.css">
   	 <script type="text/javascript" src="${request.contextPath}/js/view/index.js"></script>
    <script>
    	function addCompInfo(peopleId){
   		   	window.parent.selectcheckup("curr11",peopleId);
   		}
   		
   		function deleteFindPeople(peopleId){
	       	$.ajax({
	                cache: true,
	                type: "POST",
	                url:"${request.contextPath}/GetRewardAction!deleteGetReward.action?id="+peopleId,
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
				<li class="titlelist">我的标的</li>
			</ul>
			<p class="tiship"></P>
			
	</div>
                <div class="datatbl">
                	<table cellspacing="0">
                    	<tr class="bg">
                        	<th>标的编号</th>
                        	<th>标的类型</th>
                        	<th>标的金额</th>
                        	<th>竞价比例</th>
                        	<th>竞价时间</th>
                        	<th>竞价结果</th>
                        	<th>操作</th>
                        </tr>
                        <#list competitiveList as compe>
			                    <tr id="${compe.id!}">
			                        <td id="bianhao${compe.proId!}"><script>getBianhao('${compe.proId!}','${compe.type!}')</script></td>
			                        <td><#if compe.type??&&compe.type=='1'>定价标<#elseif compe.type=='2'>竞价标</#if></td>
			                        <td>${compe.prorightamount!}</td>
			                        <td>${compe.proPrsent!}%</td>
			                        <td>${compe.modtime!}</td>
			                        <td><#if compe.proFlag??&&compe.proFlag=='1'>竞标中<#elseif compe.proFlag??&&compe.proFlag=='2'>竞价成功
			                        		<#elseif compe.proFlag??&&compe.proFlag=='3'>竞价失败
			                        		<#elseif compe.proFlag??&&compe.proFlag=='4'>等待结标
			                        		<#elseif compe.proFlag??&&compe.proFlag=='5'>审核不通过<font color=red title="原因：${compe.infoText!'无'}">?</font>
			                        		<#elseif compe.proFlag??&&compe.proFlag=='6'>已结标
			                        		</#if></td>
			                        <td><#if compe.proFlag??&&(compe.proFlag=='2' || compe.proFlag=='5')><img src="image/manger/0812309.png" class="updateiton" onclick="addCompInfo('${compe.id!}')" title="添加、修改催收成果"></img></#if></td>
			                    </tr>
                     	</#list>
                    </table>
                </div>
</body>
</html>