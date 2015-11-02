<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/view/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/view/reset.css">
    <link rel="stylesheet" type="text/css" href="css/view/common.css">
    <link rel="stylesheet" type="text/css" href="css/view/head.css">
    <link rel="stylesheet" type="text/css" href="css/view/logon.css">
    <link rel="stylesheet" type="text/css" href="css/view/list.css">
    <!--[if lt IE 9 ]>
    <link href="${request.contextPath}/css/view/styleie.css" rel="stylesheet" type="text/css"/>
    <![endif]-->
    <script type="text/javascript">
        function toPage(type){
        	window.location.href="${request.contextPath}/regAction!toPage?pageName=addUser&type="+type;
        }
    </script>
    <!--[if IE 6]>
	<script type="text/javascript" src="${request.contextPath}/js/view/alpha.js"></script>
	<![endif]--> 
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/css/view/index.css">
   	<script type="text/javascript" src="${request.contextPath}/js/view/jquery.js"></script>
   	 <script src="${request.contextPath}/js/view/CityJson.js" type="text/javascript"></script>
    <script src="${request.contextPath}/js/view/ProJson.js" type="text/javascript"></script>
    <script src="${request.contextPath}/js/view/DistrictJson.js" type="text/javascript"></script>
   	 <script src="${request.contextPath}/js/city.js" type="text/javascript"></script>
   	<script>
   	$(function(){
   	 //选中首页标签
         $(".headcon li").removeClass("navactive");
         $("#xlist").addClass("navactive");
   	})
   	
	function getOrigin(documentid,originpro,origincity,origindist){
		var proName=getOriginPro(originpro);
		var cityName=getOriginCity(origincity);
		var distName=getOriginDist(origindist);
		$("#"+documentid).html(proName);
	}
										
										
   	</script>
  <body>
  <!--  TOP  -->
  <#include "../top.ftl">
  <!--  TOPEND  -->
	<div class="zhao1">
		<div class="zhao1con">
			<ul class="zhaoul">
				<li class="listper">寻人标</li>
			</ul>
			<div>
				<div class="zhao_tab1 show" id="zhaoPara">
<p class="zhao_tab1p"></p>
<table cellspacing="0">
	<tbody>
		
		<tr>
			<td class="zhao_tab1tdl">户籍地区：</td>
			<td>
				   <select id="selProvince" class="pubselect" name="fp.originpro" >
				        <option value="">--省份--</option>
				   </select>
				   <select id="selCity" class="pubselect" >
				        <option value="">--城市--</option>
				   </select>
				   <select id="selDistrict" class="pubselect" name="fp.origindist" >
				        <option value="">--区/县--</option>
				   </select>
		    </td>
		</tr>
	<tr>
		<td class="zhao_tab1tdl">失踪天数：</td>
		<td>
			<input type="radio" name="lateTime" checked="checked" class="tabradcheck" value="0">不限 
			<input type="radio" name="lateTime" class="tabradcheck" value="1">半年内 
			<input type="radio" name="lateTime" class="tabradcheck" value="2">一年内 
			<input type="radio" name="lateTime" class="tabradcheck" value="3">两年内 
			<input type="radio" name="lateTime" class="tabradcheck" value="4">两年以上</td>
	</tr>
	
</tbody></table>
<p class="zhao_tab1p2">
	<a href="javaScript:;" class="query" onclick="queryInfo(1)" id="doQuery">搜索</a>
</p>
</div>
			</div>
		</div>
	</div>
	<div class="zhao2" id="zhao2">
			
		<ul class="zhaoul">
				<li class="listper">标的列表</li>
			</ul>
	</div>
	<div class="zhao3con">
		<div id="queryMsg">
			<#list FindPeoplelist as FindPeople>
			<div class="zhaolist">
				<div class="zhaolistl">
				<h3>${FindPeople.id!}</h3>
				<p class="quan">姓名:<span class="jine">${FindPeople.name!}</span></p>
			</div>
			<div class="zhaolistm">
				<table cellspacing="0">  
					<tbody>
						<tr>   
							  <td>失踪天数</td>
							  <td class="leftboer1">户籍地区</td>   
							  <td class="leftboer1">债权凭证</td>   
						</tr>  
						<tr>  
							 <td ><span class="tablenum">${FindPeople.missingday!}</span></td>
							 <td class="leftboer1"><span class="tablenum" id="${FindPeople.id!}"></span></td>   
							 <script>
							 			var originpro='${FindPeople.originpro!}';
							 			var origincity='${FindPeople.origincity!}';
							 			var origindist='${FindPeople.origindist!}';
							 			getOrigin('${FindPeople.id!}',originpro,origincity,origindist);
							 </script>
							 <td class="leftboer1"><span class="tablenum">${FindPeople.loanagreement!}</span></td>   
					</tbody>
				</table>
			</div>
			<div class="zhaolistr">
				<p class="zhaolistrp"><a href="${request.contextPath}/findPeopleAction!toPage?pageName=xunrenInfo&id=${FindPeople.id!}" target="_blank" class="listbtn">应标</a></p>
				<p>时间：${FindPeople.updateTime!}</p></div>
			</div>
		</#list>
			
			<div id="pager">
				<ul class="page">
    			<a href="/Index/debt/p/1" class="pageNoClick" value="1">&lt;上一页${pageNum!}==${pageInt!}==${pageAll!}</a>
    			 <#if (pageInt-2 > 0)>
    				<a href="/Index/debt/p/1" value="1" class="dq">${pageInt-2!}</a>
    			</#if>
    			<#if (pageInt-1>0)>
    				<a href="/Index/debt/p/2" value="2">${pageInt-1!}</a>
    			</#if>
    			<#if pageInt??>
    			<a href="/Index/debt/p/621" value="621">${pageInt!}</a>
    			</#if>
    			<#if (pageAll>pageInt)>
    			<a href="/Index/debt/p/621" value="621">${pageAll!}</a>
    			<a href="/Index/debt/p/2" value="2">下一页&gt;</a>  
    			</#if>
    			  
    			</ul>
			</div>
	</div>
 </div>	
<!-- bottom -->
   <#include "../bottom.ftl">
<!-- bottomend -->

</body></html>

