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
    <!--[if IE 6]>
	<script type="text/javascript" src="js/view/alpha.js"></script>
	<![endif]--> 
    <link rel="stylesheet" type="text/css" href="css/view/index.css">
   	<script type="text/javascript" src="js/view/jquery.js"></script>
   	<script type="text/javascript">
        function toPage(type){
        	window.location.href="${request.contextPath}/regAction!toPage?pageName=addUser&type="+type;
        }
    $(function(){
   	 //选中首页标签
         $(".headcon li").removeClass("navactive");
         $("#dlist").addClass("navactive");
   	})
   	</script>
  <body>
  <!--  TOP  -->
  <#include "../top.ftl">
  <!--  TOPEND  -->
	<div class="zhao1">
		<div class="zhao1con">
			<ul class="zhaoul">
				<li class="listper">定价标</li>
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
							<td class="zhao_tab1tdl">逾期时间：</td>
							<td>
								<input type="radio" name="lateTime" checked="checked" class="tabradcheck" value="0">不限 
								<input type="radio" name="lateTime" class="tabradcheck" value="1">半年内 
								<input type="radio" name="lateTime" class="tabradcheck" value="2">一年内 
								<input type="radio" name="lateTime" class="tabradcheck" value="3">两年内 
								<input type="radio" name="lateTime" class="tabradcheck" value="4">两年以上</td>
						</tr>
						<tr>
							<td class="zhao_tab1tdl">债权金额：</td>
							<td>
								<input type="radio" name="zqje" class="tabradcheck" checked="checked" value="0">不限 
								<input type="radio" name="zqje" class="tabradcheck" value="1">10万以下 
								<input type="radio" name="zqje" class="tabradcheck" value="2">10~100万 
								<input type="radio" name="zqje" class="tabradcheck" value="3">100万以上
							</td>
						</tr>
						<tr>
							<td class="zhao_tab1tdl">佣金比例：</td>
							<td>
								<input type="radio" name="pro" class="tabradcheck" checked="checked" value="0">不限 
								<input type="radio" name="pro" class="tabradcheck" value="1">15%以下 
								<input type="radio" name="pro" class="tabradcheck" value="2">15%~20% 
								<input type="radio" name="pro" class="tabradcheck" value="3">20%~25% 
								<input type="radio" name="pro" class="tabradcheck" value="3">25%以上 
							</td>
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
		<!-- list1-->
		<#list RightDebtlist as rightDe>
			<div class="zhaolist">
				<div class="zhaolistl">
				<h3>${rightDe.bianhaoId!}</h3>
				<p class="quan">债权金额:<span class="jine">${rightDe.rightamount}</span></p>
			</div>
			<div class="zhaolistm">
				<table cellspacing="0">  
					<tbody>
						<tr>   
						<#if rightDe.salprsent!!='' >
								  <td>佣金比例</td>
						</#if>
						<#if rightDe.bateprsent!!=''>
								  <td>债权折扣</td>
						</#if>
								  <td class="leftboer1">逾期时间</td>   
								  <td class="leftboer1">所在地</td>   
								  <td class="leftboer1">债权凭证</td>  
						</tr>  
						<tr>   
						<#if rightDe.salprsent!!='' >
								<td ><span class="tablenum">${rightDe.salprsent!} %</span></td>
						</#if>
						<#if rightDe.bateprsent?? >
								<td ><span class="tablenum">${rightDe.bateprsent!} %</span></td>
						</#if>
								  <td class="leftboer1"><span class="tablenum">${rightDe.latedays!}</span></td>   
								 <td class="leftboer1"><span class="tablenum">${rightDe.rightProvince!}</span></td>   
								 <td class="leftboer1"><span class="tablenum"><#if rightDe.voucher??>有<#else>无</#if></span></td></tr>  
					</tbody>
					</table>
			</div>
			<div class="zhaolistr">
				<p class="zhaolistrp"><a href="${request.contextPath}/RightDebtAction!toPage?pageName=myproInfo&id=${rightDe.id!}"  target="_blank" class="listbtn" >抢标</a></p>
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