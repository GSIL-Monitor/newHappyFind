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
   	 <script type="text/javascript" src="${request.contextPath}/js/view/index.js"></script>
   	<link rel="stylesheet" type="text/css" href="${request.contextPath}/css/view/viewstyle.css">
   	<script src="${request.contextPath}/js/view/CityJson.js" type="text/javascript"></script>
    <script src="${request.contextPath}/js/view/ProJson.js" type="text/javascript"></script>
    <script src="${request.contextPath}/js/view/DistrictJson.js" type="text/javascript"></script>
   	<script src="${request.contextPath}/js/city.js" type="text/javascript"></script>
    <script>
    	
    	function updateXiaoXi(id,type){
    	    alert(type);
    		if (type==0){
   		   	$.ajax({
	                url:"${request.contextPath}/viewManAction!updateXiaoXiFlag.action?userId="+id,
	                async: false,
	                error: function(request) {
	                },
	                success: function(data) {
	                	var type = data;
	                	if (type==1){
	                		$("#chakan"+id).html("已查看");
	                	}
	                }
	            });
	            	
    		}
   		}
   		
		 $(function(){
		  	 $(".popList_closed").click(function(){
					 $(".popList").fadeOut(300);
					 $("#loading-mask").fadeOut(300);
			 	})
		  })
   		
   		
   		function deleteXiaoXi(id){
	       	$.ajax({
	                cache: true,
	                type: "POST",
	                url:"${request.contextPath}/viewManAction!deleteXiaoXiFlag.action?userId="+id,
	                async: false,
	                error: function(request) {
	                    alert("删除失败！");
	                },
	                success: function(data) {
	                	alert('删除成功！');
	                	$("#"+id).remove();
	                }
	            });
   			}
   			
    </script>
  <body>
  	<div class="titlecon">
			<ul class="titleul">
				<li class="titlelist">系统消息</li>
			</ul>
			<p class="tiship"></P>
			
	</div>
    <div class="datatbl">
                	<table cellspacing="0">
                    	<tr class="bg">
                        	<th>时间</th>
                        	<th>消息类型</th>
                        	<th>消息内容</th>
                        	<th>消息是否查看</th>
                        	<th>操作</th>
                        </tr>
                        <#list xiaoxiList as xiaoxi>
			                    <tr id="${xiaoxi.id!}">
			                        <td>${xiaoxi.modtime!}</td>
			                        <td>${xiaoxi.xiaoxiname!}</td>
			                        <td> ${xiaoxi.xiaoxidesc!}</td>
			                        <td id="chakan${xiaoxi.id!}">
			                       			<#if (xiaoxi.xiaoxiFlag=='0')>未查看
			                        		<#elseif (xiaoxi.xiaoxiFlag=='1')>已查看</#if>
			                        </td>
			                        <td>
			                        		<img src="image/manger/0812309.png" class="updateiton" onclick="updateXiaoXi('${xiaoxi.id!}','${xiaoxi.xiaoxiFlag!}');" title="查看"></img>
			                        		<img src="image/manger/delete.png" class="deleteiton" onclick="deleteXiaoXi('${xiaoxi.id!}')"  title="删除"></img>
			                        </td>
			                    </tr>
                     	</#list>
                    </table>
   </div>
</body>
</html>
