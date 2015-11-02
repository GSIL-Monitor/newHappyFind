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
    <!--<script src="js/hm.js"></script>-->
    <script type="text/javascript">
        function toPage(type){
        	window.location.href="${request.contextPath}/regAction!toPage?pageName=addUser&type="+type;
        }
    </script>
    <!--[if IE 6]>
	<script type="text/javascript" src="js/view/alpha.js"></script>
	<![endif]--> 
    <link rel="stylesheet" type="text/css" href="css/view/index.css">
   	<script type="text/javascript" src="js/view/jquery.js"></script>
  <body>
  <!--  TOP  -->
  <#include "top.ftl">
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
			<td class="zhao_tab1tdl">债权地区：</td>
			<td>
				 <select id="zw_province" name="zw_province" class="pubsel"></select>
				 <select id="zw_city" name="zw_city" class="pubsel"></select>
				 <select id="zw_county" name="zw_county" class="pubsel"></select>
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
			<div class="zhaolist">
				<div class="zhaolistl">
				<h3>GR20150923-02</h3>
				<p class="quan">债权金额:<span class="jine">6万</span></p>
			</div>
			<div class="zhaolistm">
				<table cellspacing="0">  
					<tbody>
						<tr>   
								  <td>姓名</td>
								  <td class="leftboer1">逾期时间</td>   
								  <td class="leftboer1">所在地</td>   
								  <td class="leftboer1">债权凭证</td>  
						</tr>  
						<tr>   <td ><span class="tablenum">183天</span></td>
								  <td class="leftboer1"><span class="tablenum">183天</span></td>   
								 <td class="leftboer1"><span class="tablenum">北京市</span></td>   
								 <td class="leftboer1"><span class="tablenum">无</span></td></tr>  
					</tbody>
					</table>
			</div>
			<div class="zhaolistr">
				<p class="zhaolistrp"><a href="" target="_blank" class="listbtn">查看详情</a></p>
				<p>发布时间：2015年09月23日</p></div>
			</div>
			<!-- list1end-->
			
			<div class="zhaolist">
				<div class="zhaolistl">
				<h3>GR20150923-02</h3>
				<p class="quan">债权金额:<span class="jine">6万</span></p>
			</div>
			<div class="zhaolistm">
				<table cellspacing="0">  
					<tbody>
						<tr>   
								  <td>姓名</td>
								  <td>逾期时间</td>   
								  <td class="leftboer1">所在地</td>   
								  <td class="leftboer1">债权凭证</td>  
						</tr>  
						<tr>   <td ><span class="tablenum">183天</span></td>
								  <td ><span class="tablenum">183天</span></td>   
								 <td class="leftboer1"><span class="tablenum">北京市</span></td>   
								 <td class="leftboer1"><span class="tablenum">无</span></td></tr>  
					</tbody>
					</table>
			</div>
			<div class="zhaolistr">
				<p class="zhaolistrp"><a href="" target="_blank" class="listbtn">查看详情</a></p>
				<p>发布时间：2015年09月23日</p></div>
			</div>
			
			<div class="zhaolist">
				<div class="zhaolistl">
				<h3>GR20150923-02</h3>
				<p class="quan">债权金额:<span class="jine">6万</span></p>
			</div>
			<div class="zhaolistm">
				<table cellspacing="0">  
					<tbody>
						<tr>   
								  <td>姓名</td>
								  <td>逾期时间</td>   
								  <td class="leftboer1">所在地</td>   
								  <td class="leftboer1">债权凭证</td>  
						</tr>  
						<tr>   <td ><span class="tablenum">183天</span></td>
								  <td ><span class="tablenum">183天</span></td>   
								 <td class="leftboer1"><span class="tablenum">北京市</span></td>   
								 <td class="leftboer1"><span class="tablenum">无</span></td></tr>  
					</tbody>
					</table>
			</div>
			<div class="zhaolistr">
				<p class="zhaolistrp"><a href="" target="_blank" class="listbtn">查看详情</a></p>
				<p>发布时间：2015年09月23日</p></div>
			</div>
			
			<div class="zhaolist">
				<div class="zhaolistl">
				<h3>GR20150923-02</h3>
				<p class="quan">债权金额:<span class="jine">6万</span></p>
			</div>
			<div class="zhaolistm">
				<table cellspacing="0">  
					<tbody>
						<tr>   
								  <td>姓名</td>
								  <td class="leftboer1">逾期时间</td>   
								  <td class="leftboer1">所在地</td>   
								  <td class="leftboer1">债权凭证</td>  
						</tr>  
						<tr>   <td ><span class="tablenum">XXXX</span></td>
								  <td class="leftboer1"><span class="tablenum">183天</span></td>   
								 <td class="leftboer1"><span class="tablenum">北京市</span></td>   
								 <td class="leftboer1"><span class="tablenum">无</span></td></tr>  
					</tbody>
					</table>
			</div>
			<div class="zhaolistr">
				<p class="zhaolistrp"><a href="" target="_blank" class="listbtn">抢标</a></p>
				<p>发布时间：2015年09月23日</p></div>
			</div>
		
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
   <#include "bottom.ftl">
<!-- bottomend -->

</body></html>