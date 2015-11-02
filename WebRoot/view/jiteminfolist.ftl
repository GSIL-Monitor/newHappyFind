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
    	<div id="jingjia" class="pro_zhai">
	        <div class="protitle">
	            <h3>
	          		<span class="line"></span>
	          		<a href="#" title="产品介绍">竞价标（接单方出各自佣金价格，有委托方选择，决定中标）
	          		<span></span>
	            </h3>
	            <a href="${request.contextPath}/RightDebtAction!toPageList?pageName=jlist" class="morepro">更多标的+</a>
	        </div>
            <#list RightDebtlist as rightDe>
		        <div class="pro_list">  
		       	      <div class="pro_num pro_num2">
		        	    	<p class="pro_numtxt">${rightDe.rightamount}万元</p>
	        	     		<p class="pro_api">${rightDe.bianhaoId!}</p>     
			          </div>     
		       	<div class="pro_listcon">
					<table cellspacing="0">     
		      	     		<tbody>
		      	     			<tr> <td width=135px>所在地区</td><td class="protdr">逾期天数</td></tr>     
		      	     			<tr> <td><span class="tablenum1">${rightDe.rightProvince!}</span></td>
		      	     				<td class="protdr"><span class="tablenum1">${rightDe.latedays!}</span>天</td></tr>     
		      	     		</tbody>
					 </table>     
		   	     	<a href="" class="probtn">竞标</a> 
		       	</div>          
		      </div>
	        </#list>
	</div> 
</body>
</html>