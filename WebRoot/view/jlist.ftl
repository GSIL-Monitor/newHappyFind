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
    <link href="css/view/styleie.css" rel="stylesheet" type="text/css"/>
    <![endif]-->
	<script type="text/javascript" src="${request.contextPath}/js/view/alpha.js"></script>
	<script type="text/javascript" src="${request.contextPath}/js/view/alpha.js"></script>
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/css/view/index.css">
   	<script type="text/javascript" src="${request.contextPath}/js/view/jquery.js"></script>
   	 <script src="${request.contextPath}/js/view/CityJson.js" type="text/javascript"></script>
    <script src="${request.contextPath}/js/view/ProJson.js" type="text/javascript"></script>
    <script src="${request.contextPath}/js/view/DistrictJson.js" type="text/javascript"></script>
   	 <script src="${request.contextPath}/js/city.js" type="text/javascript"></script>
   	 <script type="text/javascript" src="${request.contextPath}/js/view/index.js"></script>
   	 <script>
     
	   	$(function(){
	   	 //选中首页标签
	         $(".headcon li").removeClass("navactive");
	         $("#jlist").addClass("navactive");
	         
	        var latedays = '${rd.latedays!}';
   			$("#latedays"+latedays).attr("checked","checked");
   			
   			var rightamount = '${rd.rightamount!}';
   			$("#rightamount"+rightamount).attr("checked","checked");
	         
	         
	   	})
   	
   	   function toPage(type){
        	window.location.href="${request.contextPath}/regAction!toPage?pageName=addUser&type="+type;
        }
        
	  	function getPro(pro,id){
			var proName="保密";
			if(pro!=''&&pro!=null){
				proName=getOriginPro(pro);
			}
			$("#"+id).html(proName);
		}
		function queryInfo(){
			$("#jlistForm").submit();
		}
   	</script>
  <body>
  <!--  TOP  -->
  <#include "../top.ftl">
  <!--  TOPEND  -->
  <form id="jlistForm" method="post" action="${request.contextPath}/RightDebtAction!toViewPageList?pageName=jlist">
	<div class="zhao1">
		<div class="zhao1con">
			<ul class="zhaoul">
				<li class="listper">竞价标</li>
			</ul>
			<div>
				<div class="zhao_tab1 show" id="zhaoPara">
					<p class="zhao_tab1p"></p>
					<table cellspacing="0">
						<tbody>
							<tr>
								<td class="zhao_tab1tdl">户籍地区：</td>
								<td>
									   <select id="selProvince" class="pubselect" name="rd.rightProvince" >
									        <option value="">--省份--</option>
									   </select>
									   <select id="selCity" class="pubselect" name="rd.rightcity">
									        <option value="">--城市--</option>
									   </select>
									   <select id="selDistrict" class="pubselect" name="rd.rightdist" >
									        <option value="">--区/县--</option>
									   </select>
							    </td>
							</tr>
						<tr>
							<td class="zhao_tab1tdl">逾期时间：</td>
							<td>
								<input type="radio" name="rd.latedays" id="latedays0" checked="checked" class="tabradcheck" value="0">不限 
								<input type="radio" name="rd.latedays" id="latedays1" class="tabradcheck" value="1">半年内 
								<input type="radio" name="rd.latedays" id="latedays2" class="tabradcheck" value="2">一年内 
								<input type="radio" name="rd.latedays" id="latedays3" class="tabradcheck" value="3">两年内 
								<input type="radio" name="rd.latedays" id="latedays4" class="tabradcheck" value="4">两年以上</td>
						</tr>
						<tr>
							<td class="zhao_tab1tdl">债权金额：</td>
							<td>
								<input type="radio" name="rd.rightamount" id="rightamount0" class="tabradcheck" checked="checked" value="0">不限 
								<input type="radio" name="rd.rightamount" id="rightamount1" class="tabradcheck" value="1">10万以下 
								<input type="radio" name="rd.rightamount" id="rightamount2" class="tabradcheck" value="2">10~100万 
								<input type="radio" name="rd.rightamount" id="rightamount3" class="tabradcheck" value="3">100万以上
							</td>
						</tr>
					</tbody></table>
					<p class="zhao_tab1p2">
						<a  class="query" onclick="queryInfo()" id="doQuery">搜索</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</form>
	<div class="zhao2" id="zhao2">
		<ul class="zhaoul">
				<li class="listper">标的列表</li>
		</ul>
	</div>
	
	<div class="zhao3con">
		<div id="queryMsg">
		<!-- list1-->
		<#list RightDebtlist as rightDe>
			<div class="zhaolist">
				<div class="zhaolistl">
				<h3 id="bianhao${rightDe.id!}"><script>getBianhao('${rightDe.id!}','${rightDe.type!}')</script></h3>
				<p class="quan">债权金额:<span class="jine">${rightDe.rightamount!}</span>万元</p>
			</div>
			<div class="zhaolistm">
				<table cellspacing="0">  
					<tbody>
						<tr>   
								  <td >逾期时间</td>   
								  <td class="leftboer1">所在地</td>   
								  <td class="leftboer1">债权凭证</td>  
						</tr>  
						<tr>   <td ><span class="tablenum">${rightDe.latedays!}天</span></td>   
								 <td class="leftboer1"><span class="tablenum" id="${rightDe.id!}"><script>getPro('${rightDe.rightProvince!}','${rightDe.id!}');</script></span></td>   
								 <td class="leftboer1"><span class="tablenum"><#if rightDe.voucher??>有<#else>无</#if></span></td></tr>  
					</tbody>
					</table>
			</div>
			<div class="zhaolistr">
				<p class="zhaolistrp"><a href="${request.contextPath}/RightDebtAction!toPage?pageName=myproInfo&id=${rightDe.id!}" target="_blank" class="listbtn">竞标</a></p>
				<p>时间：${rightDe.updateTime!}</p></div>
			</div>
			</#list>
			<!-- list1end-->
			<div id="pager">
				<ul class="page">
    			<a href="/Index/debt/p/1" class="pageNoClick" value="1">&lt;上一页</a>
    			<a href="/Index/debt/p/1" value="1" class="dq">1</a>
    			<a href="/Index/debt/p/2" value="2">2</a>
    			<a href="/Index/debt/p/3" value="3">3</a>
    			<span class="omit">···</span>
    			<a href="/Index/debt/p/621" value="621">621</a>
    			<a href="/Index/debt/p/2" value="2">下一页&gt;</a>    
    			</ul>
			</div>
	</div>
 </div>	
<!-- bottom -->
   <#include "../bottom.ftl">
<!-- bottomend -->

</body></html>

<script>
var companyprovince='${rd.rightProvince!}';
var companyprefecturecity='${rd.rightcity!}';
var companyarea='${rd.rightdist!}';
selectedOriginPro(companyprovince);
selectedOriginCity(companyprefecturecity);
selectedOriginDist(companyarea);
</script>


