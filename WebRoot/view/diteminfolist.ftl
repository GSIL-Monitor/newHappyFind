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
</head>
<body>
<!--定价标------------------>
<div class="pro1" id="pro1">
    	<div id="dingjia" class="pro_zhai">
            <div class="protitle">
                 <h3>
                 		<span class="line"></span>
                 		<a href="#" title="产品介绍">定价标（资产委托方出固定佣金）
                 		<span></span>
                 </h3>
                <a href="${request.contextPath}/RightDebtAction!toPageList?pageName=dlist" class="morepro">更多标的+</a>
            </div>
            <#list RightDebtlist as rightDe>
		        <div class="pro_list">  
		        	    <div class="pro_num">
		        	    	<p class="pro_numtxt">${rightDe.rightamount}万元</p>
	        	     		<p class="pro_api"><span></span>${rightDe.bianhaoId!}</p>     
	        	     	</div>    
			        	<div class="pro_listcon">
			        	     	<table cellspacing="0">     
			        	     		<tbody>
			        	     			<tr> <td width=90px>佣金费率</td><td class="protdr" width=90px>所在地区</td><td class="protdr">逾期天数</td></tr>     
			        	     			<tr> <td><span class="tablenum">${rightDe.salprsent!}</span>%</td>
			        	     				<td class="protdr"><span class="tablenum1">${rightDe.rightProvince!}</span></td>
			        	     				<td class="protdr"><span class="tablenum1">${rightDe.latedays!}</span>天</td></tr>     
			        	     		</tbody>
			        	     	</table>     
			        	     	<a href="" class="probtn">抢标</a> 
			        	</div>          
	        	</div>
	        </#list>
	</div> 
</body>
</html>