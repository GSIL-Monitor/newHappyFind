<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="baidu-site-verification" content="VQEzsMe84L">
    <title>HappyFind</title>
    <meta charset="utf-8">
    <meta name="”viewport”" content="”width=device-width," initial-scale="1″">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="format-detection" content="telephone=no,address=no,email=no">
    <!-- 强制将页面布局为一列 -->
    <meta name="mobileOptimized" content="width">
    <meta name="handheldFriendly" content="true">
    <!-- 允许用户使用全屏模式浏览 -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link rel="stylesheet" type="text/css" href="css/view/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/view/reset.css">
    <link rel="stylesheet" type="text/css" href="css/view/common.css">
    <link rel="stylesheet" type="text/css" href="css/view/head.css">
    
    <!--[if lt IE 9 ]>
    <link href="css/view/styleie.css" rel="stylesheet" type="text/css"/>
    <![endif]-->
    <!--<script src="js/hm.js"></script>-->
    <script type="text/javascript">
        var _IE_VERSION = (function(){
            var v = 3, div = document.createElement('div'), all = div.getElementsByTagName('i');
            while (
                    div.innerHTML = '<!--[if gt IE ' + (++v) + ']><i></i><![endif]-->',
                            all[0]
                    );
            if (v > 4){
                document.documentElement.className += " ie" + v;
            }
            return v > 4 ? v : false ;
        }());
    </script>
    <!--[if IE]>
    <link rel="stylesheet" type="text/css" href="css/styleie.css" />
    <![endif]-->
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="js/view/html5.js" type="text/javascript"></script>
    <script src="js/view/excanvas.js" type="text/javascript"></script>
    <script src="js/view/compiled.js" type="text/javascript"></script>
    <![endif]-->
    <!--[if IE 6]>
	<script type="text/javascript" src="js/view/alpha.js"></script>
	<![endif]--> 
    <link rel="stylesheet" type="text/css" href="css/view/index.css">
   	<script type="text/javascript" src="js/view/jquery.js"></script>
  
   	<script>
   	 	 var time = "";
         var index = 1;
         $(function () {
         //选中首页标签
         $(".headcon li").removeClass("navactive");
         $("#shouye").addClass("navactive");
         
         //数字变化
             showimg(index);
             $(".banner_bt li").click(function () {
             	clearTimeout(time);
                var icon=$(this).attr("id");
               	$(".banner_bt li").removeClass("now").eq(icon-1).addClass("now");
             	$(".banner_img li").hide().stop(true,true).eq(icon-1).fadeIn("slow");
             	index=$(this).text()> 4 ? 1 :parseInt($(this).attr("id"))+1;
                time = setTimeout("showimg(" + index + ")", 4000);
             })
             $(".banner_prev").click(function () {
             	clearTimeout(time);
               	 $(".banner_bt li").removeClass("now").eq(index-1).addClass("now");
             	$(".banner_img li").hide().stop(true,true).eq(index-1).fadeIn("slow");
             	index = index -1 < 1 ? 4 : index-1;
                time = setTimeout("showimg(" + index + ")", 4000);
             })
             $(".banner_next").click(function () {
             	clearTimeout(time);
               	 $(".banner_bt li").removeClass("now").eq(index-1).addClass("now");
             	$(".banner_img li").hide().stop(true,true).eq(index-1).fadeIn("slow");
             	index = index + 1 > 4 ? 1 : index + 1;
                time = setTimeout("showimg(" + index + ")", 4000);
             })
             
         });
 
         function showimg(num) {
             index = num;
             $(".banner_bt li").removeClass("now").eq(index-1).addClass("now");
             $(".banner_img li").hide().stop(true,true).eq(index-1).fadeIn("slow");
             index = index + 1 > 4 ? 1 : index + 1;
             time = setTimeout("showimg(" + index + ")", 4000);
         }
    </script>
  <body>
  <!--  TOP  -->
  <#include "top.ftl">
  <!--  TOPEND  -->
  	<div class="ldbody">
  	 <!-- banner -->
		<div class="banner">
		    <div class="banner_box">
		        <ul class="banner_img">
		            <li style="display: list-item;" class="itemli1"><a href="javascript:void(0);"></a></li>
		            <li class="itemli2"><a href="javascript:void(0);"></a></li>
		            <li class="itemli3"><a href="javascript:void(0);"></a></li>
		            <li class="itemli4"><a href="javascript:void(0);"></a></li>
		        </ul>      
		        <ul class="banner_bt"><li class="now" id="1"></li><li id="2"></li><li id="3"></li><li id="4"></li></ul>
		    	<div class="banner_bt_box">
		        	<a href="javascript:;" class="banner_prev"></a>
		        	<a href="javascript:;" class="banner_next"></a>
		     	</div>       
		 	</div>   
		</div> 
		<!-- bannerend -->
	<!-- zhuti -->
	<div class="container">
		<!-- number -->
    	<div class="number">
        	<div class="numbercon">
            	<table cellspacing="0">
             		<tbody>
             			<tr class="numtr1">
			                <td id="totalMoney"><span class="timer " id="count-number" data-to="847" data-speed="1500"></span>位</td>
			                <td id="totalCount"><span class="timer zheng" data-to="710" data-speed="2000">710</span>次</td>
			                <td id="totalWtf"> <span class="timer zheng" data-to="422" data-speed="2000">422</span>家</td>
		                </tr>     
                		<tr class="numtr2">
		                    <td>签约律师</td>
		                    <td>催收服务人员 </td>
		                    <td>签约机构</td> 
                		</tr>
             		</tbody>
           	 	</table>
        	</div>
    	</div>
    	<!-- numberend -->
    	<!-- jieshao -->
		<div class="ld-desc-c row">
    		<div class="desc-title">智能&nbsp;•&nbsp;专业&nbsp;•&nbsp;高效&nbsp;•&nbsp;便捷</div>
            <div class="col-xs-6 col-md-6 desc">
            <div class="desc-img">
                <img src="./image/view/word.jpg" width="54" hight="34">
            </div>
            <div class="desc-txt">
                	<p>快速匹配</p>
	                <p>回款迅速</p>
	                <p>招人便捷</p>
	                <p>成功率高</p>
            		<div>
                    	<a href="">我要发标</a>
                	</div>
            	</div>
        	</div>
        	<div class="col-xs-6 col-md-6 desc">
            <div class="desc-img">
                <img src="./image/view/look.jpg" width="54" hight="34">
            </div>
            <div class="desc-txt">
	                <p>海量客源</p>
	                <p>按单结算</p>
	                <p>海量客源</p>
	                <p>按单结算</p>
                <div>
                    <a href="">我要收单</a>
                </div>
            </div>
        </div>
        <!-- jieshaoend -->
	</div>
	<!-- zhuti -->
	<!-- biaodilist -->
	<iframe src="diteminfolist.html" width="100%"  height="350px" frameborder="0" id="iframe_id" scrolling="no" class="cpRgt"></iframe>
	<iframe src="jiteminfolist.html" width="100%"  height="350px" frameborder="0" id="iframe_id" scrolling="no" class="cpRgt"></iframe>
	<iframe src="xiteminfolist.html" width="100%"  height="350px" frameborder="0" id="iframe_id" scrolling="no" class="cpRgt"></iframe>
	<!-- biaodilistend -->
	</div>
</div>
<!-- bottom -->
<div id="sink-bg-blank" class="container">&nbsp;</div>
   <#include "bottom.ftl">
<!-- bottomend -->
</body>
</html>
 	<script type="text/javascript" src="js/view/count.js"></script>
