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
    	
    	function updateFindPeople(peopleId){
   		   	window.parent.selectcheckup("curr6",peopleId);
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
	                url:"${request.contextPath}/RightDebtAction!deleteRightDebt.action?id="+peopleId,
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
   				var url="${request.contextPath}/RightDebtAction!getCompeList?pageName=checkComList&id="+id;
				 $(".popList").fadeIn(300);
				 $("#loading-mask").fadeIn(300);
				 $('#iframe_window_idt').attr("src",url).width(800).height(300);;
   		}
   		
   		function getPro(pro,id){
			var proName="保密";
			if(pro!=''&&pro!=null){
				proName=getOriginPro(pro);
			}
			$("#pro"+id).html(proName);
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
                        	<th>类型</th>
                        	<th>编号</th>
                        	<th>金额</th>
                        	<th>发生地</th>
                        	<th>标的状态</th>
                        	<th>操作</th>
                        </tr>
                        <#list RightDebtlist as rightd>
			                    <tr>
			                        <td> <#if (rightd.type?? && rightd.type=='1')>定价标<#else>竞价标</#if></td>
			                        <td id="bianhao${rightd.id!}"><script>getBianhao('${rightd.id!}','${rightd.type!}')</script></td>
			                        <td>${rightd.rightamount!}万元</td>
			                        <td id="pro${rightd.id!}"><script>getPro('${rightd.rightProvince!}','${rightd.id!}');</script></td>
			                        <td ><#if (rightd.proType?? && rightd.proType=='1')>保存
			                        		<#elseif (rightd.proType?? && rightd.proType=='2')>已提交
			                        		<#elseif (rightd.proType=='3')>审核未通过  <font color=red title="原因：${rightd.infoText!'无'}">?</font>
			                        		<#elseif (rightd.proType=='4')>等待应（竞）标
			                        		<#elseif (rightd.proType=='5')>待选中标者
			                        		<#elseif (rightd.proType=='7')>已竞标完成</#if>
			                        </td>
			                        <td>
			                        		<#if (rightd.proType?? && (rightd.proType=='1'||rightd.proType=='3'))>
			                        		<img src="image/manger/0812309.png" class="updateiton" onclick="updateFindPeople('${rightd.id!}')" title="修改"></img>
			                        		<img src="image/manger/delete.png" class="deleteiton" onclick="deleteFindPeople('${rightd.id!}')"  title="删除"></img>
			                        		<#elseif (rightd.proType=='5')>
			                        		<img src="image/manger/check.jpg" class="updateiton" onclick="openList('${rightd.id!}')" title="选中标"></img>
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
