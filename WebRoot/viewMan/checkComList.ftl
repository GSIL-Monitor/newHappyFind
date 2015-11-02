<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
   	<link rel="stylesheet" type="text/css" href="css/view/viewstyle.css">
   
  <body>
                <div class="datatbl">
                	<table cellspacing="0">
                    	<tr class="bg">
                        	<th>选择</th>
                        	<th>竞标人</th>
                        	<th>竞标人类型</th>
                        	<th>竞标比例</th>
                        	<th>竞标时间</th>
                        </tr>
                        <#list CompetitiveList as comp>
			                    <tr>
			                        <td> <input type="radio"  name="checkCoom" value="${comp.id!}" class="checkCoom" ></td>
			                        <td>${comp.moduser!}</td>
			                        <td><#if (comp.moduserType?? && comp.moduserType=='2')>企业<#else>个人</#if></td>
			                        <td>${comp.proPrsent!}%</td>
			                        <td>${comp.modtime!}</td>
			                    </tr>
                     </#list>
                    </table>
                     <div class="contentxr1">
						<input type="button" onclick="checkUser()" class="reg2btnQueding" value="确定">
					</div>
                </div>
                
</body>
</html>
	<script>
   	function checkUser(){
   		var userId = $(".checkCoom:checked").val();
   		alert(userId);
   		if(userId==undefined){
   			alert("请选择中标者~");
   		}else{
   			var proId = '${id!}';
   			url="${request.contextPath}/RightDebtAction!checkJingbiao.action?userId="+userId+"&id="+proId;
   			$.ajax({
	                type: "POST",
	                url:url,
	                success: function(data) {
		                var type=data;
		                	if(type==1){
		                		alert("操作成功！");
		                		window.parent.parent.selectcheck("curr6");
		                	}
		                }
	       });
   		}
   		
   	}
   	</script>