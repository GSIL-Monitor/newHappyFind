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
    
    	function updateFindPeople(peopleId){
   		   	window.parent.selectcheckup("curr5",peopleId);
   		}
   		
   		 $(function(){
		  	 $(".popList_closed").click(function(){
					 $(".popList").fadeOut(300);
					 $("#loading-mask").fadeOut(300);
			 	})
		  })
   		
   		function deleteFindPeople(peopleId){
	       	$.ajax({
	                cache: true,
	                type: "POST",
	                url:"${request.contextPath}/findPeopleAction!deleteFindPeople.action?id="+peopleId,
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
   			
   			function openList(id){
   				var url="${request.contextPath}/GetRewardAction!toPageList?pageName=checkGetReward&xunrenId="+id;
				 $(".popList").fadeIn(300);
				 $("#loading-mask").fadeIn(300);
				 $('#iframe_window_idt').attr("src",url).width(800).height(300);;
   		}
   		
   		function getBianhao(proId){
   			var bianhao;
   			bianhao="LX32"+num3(proId);
   			$('#'+proId).html(bianhao);
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
                        	<th>编号</th>
                        	<th>姓名</th>
                        	<th>身份证号码</th>
                        	<th>债券发生地</th>
                        	<th>标的状态</th>
                        	<th>操作</th>
                        </tr>
                        <#list FindPeoplelist as FindPeople>
			                    <tr >
			                        <td id="${FindPeople.id!}"><script>getBianhao('${FindPeople.id!}')</script></td>
			                        <td>${FindPeople.name!}</td>
			                        <td>${FindPeople.idcard!}</td>
			                        <td>${FindPeople.rightsplace!}</td>
			                        <td>
			                       			<#if (FindPeople.proFlag?? && FindPeople.proFlag=='1')>保存
			                        		<#elseif (FindPeople.proFlag?? && FindPeople.proFlag=='2')>已提交
			                        		<#elseif (FindPeople.proFlag=='3')>审核未通过
			                        		<#elseif (FindPeople.proFlag=='4')>等待应（竞）标
			                        		<#elseif (FindPeople.proFlag=='5')>待选中标者
			                        		<#elseif (FindPeople.proFlag=='7')>已完标</#if>
			                        </td>
			                        <td>
			                        		<#if (FindPeople.proFlag?? && (FindPeople.proFlag=='1'||FindPeople.proFlag=='3'))>
			                        		<img src="image/manger/0812309.png" class="updateiton" onclick="updateFindPeople('${FindPeople.id!}')" title="修改"></img>
			                        		<img src="image/manger/delete.png" class="deleteiton" onclick="deleteFindPeople('${FindPeople.id!}')"  title="删除"></img>
			                        		<#elseif (FindPeople.proFlag=='5')>
			                        		<img src="image/manger/check.jpg" class="updateiton" onclick="openList('${FindPeople.id!}')" title="选中标"></img>
			                        		</#if>
			                    </tr>
                     </#list>
                    </table>
                </div>
                    <div class="popList "  >
    <div class="popList_con">
        <p class="popList_closed">关闭</p>
        <div class="popList_loginTab">
            <ul>
                <li class="current">选择中标者</li>
            </ul>
        </div>
        <div class="popList_loginTab">
             <iframe id="iframe_window_idt" frameborder="0" scrolling="" src="" ></iframe>
        </div>
    </div>
</div>
</body>
</html>