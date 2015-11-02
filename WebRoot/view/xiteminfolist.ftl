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
<!--寻人标------------------>
<div class="pro1" id="pro1">
   <div id="xunren" class="pro_zhai">
            <div class="protitle">
                 <h3>
                 		<span class="line"></span>
                 		<a href="#" title="产品介绍">寻人标（资方发布寻人申请，知情者提供最新线索）
                 		<span></span>
                 </h3>
                 <a href="${request.contextPath}/findPeopleAction!toPageList?pageName=list" class="morepro">更多标的+</a>
            </div>
            <#list FindPeoplelist as FindPeople>
        		<div class="pro_list">  
       	     		 <div class="pro_num pro_num1">
	        	    	<p class="pro_numtxt">${FindPeople.name!}</p>
        	     		<p class="pro_api">${FindPeople.id!}</p>     
          			</div>  
		        		<div class="pro_listcon">
   	     					<table cellspacing="0">     
   	     						<tbody>
   	     							<tr> <td width=135px>户籍</td><td class="protdr">失踪天数</td></tr>
   	     							<tr> <td><span class="tablenum"><#if FindPeople.originpro??>${FindPeople.originpro}<#else>保密中</#if></span></td>     
   	     									 <td class="protdr"><span class="tablenum1">${FindPeople.missingday!}</span>天</td></tr>     
   	     						</tbody>
   	     					</table>       
		        	     	<a href="" class="probtn">应标</a> 
		        	  </div>          
        		</div>
        		</#list>
	</div>
</div> 
</body>
</html>