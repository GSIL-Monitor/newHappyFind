<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/view/viewstyle.css">
    <!--[if lt IE 9 ]>
    <link href="css/view/styleie.css" rel="stylesheet" type="text/css"/>
    <![endif]-->
   	<script type="text/javascript" src="js/view/jquery.js"></script>
   	<script type="text/javascript" src="js/jquery-form.js"></script>
    <script>
   		
   		function buttonOnClick() {
   			var uploadfilename = $("#uploadfile").val();
			if(uploadfilename!=""&&uploadfilename!="undefined"){
			alert(uploadfilename);
   				$('#uploadform').ajaxSubmit({
                     success: function (data) {
                    	 var dataV=data;
                         if(dataV=='1'){
                         	alert("上传失败");
                         }else{
                         	alert("上传成功");
                         	window.parent.addupload(dataV,uploadfilename);
                         }
                          
                         }
                }); 
   			 }
		}
    </script>
  <body>
 <div>
		<form id="uploadform"   action="${request.contextPath}/uploadAction!uploadFile.action" enctype="multipart/form-data"  method="post">
					<input type="text" name="fileFileName" id="fileFileName" style="display:none">
					<input id="uploadfile" type="file" name="file" class="upload" > <input type="button" value="上传" onclick="buttonOnClick()" class="uploadbutton" />
		</form>
</body>
</html>