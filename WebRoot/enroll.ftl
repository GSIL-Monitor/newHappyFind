<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/view/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/view/reset.css">
    <link rel="stylesheet" type="text/css" href="css/view/common.css">
    <link rel="stylesheet" type="text/css" href="css/view/head.css">
    <link rel="stylesheet" type="text/css" href="css/view/logon.css">
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
  	 <!-- banner -->
		<div class="bannerlogn">
		    <div class="banner_boxlogon">
		        <ul class="banner_imglogon">
		            <li style="display: list-item;" class="itemlilogon"><a href="javascript:void(0);"></a></li>
		        </ul>      
		 	</div>   
		</div>
		
	<div id="dingjia" class="shenfenpro_zhai">
	<div class="shenfenprotitle">
                 <h3>
                 		<span class="line"></span>
                 		<a title="选择身份">选择身份
                 </h3>
            </div>
	<div class="reg1">
        <div class="reg1con">
            <div class="fl reg1side" id="Wtf" onclick="toPage(1)">
                <h3 class="reg1tit">个人</h3>
                <div class="reg1pic">
                    <span class="reg1wei"></span>
                </div>
            </div>
            <div class="fr reg1side" id="Dlf">
                <h3 class="reg1tit">企业</h3>
                <div class="reg1pic">
     					<table>
     						<tbody>
     							<tr>
     								<td id="zhaiquan" onclick="toPage(2)"><p><span class="regtitle">债权方</span></p><span class="reg1dai"></span></td>
     								<td id="cuishou" class="protdr" onclick="toPage(3)"><p><span class="regtitle">催收方</span></p><span class="reg1cui"></span></td>
     							</tr>
     						</tbody>
     					</table>
                </div>
            </div>
            <div style="clear:both;"></div>
            <p class="reg1next">
           		 <!--  <a href="javascript:;" onclick="toRegister()">下一步</a> -->
            </p>
        </div>
    </div>
 </div>
	<!-- bottom -->
  	<#include "bottom.ftl">
	<!-- bottomend -->
</body>
</html>
