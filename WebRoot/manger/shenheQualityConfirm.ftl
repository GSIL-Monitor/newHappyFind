<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>乐寻管理平台-网站用户管理</title>
<script type="text/javascript" src="${request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script language="javascript" type="text/javascript" src="${request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
<link href="${request.contextPath}/CVE.css" rel="stylesheet" type="text/css" />
<style>
.addPrice{width:800px;height:900px;}
</style>
</head>

<body>
	<div class="addbox addPrice">
    	<div class="title">网站用户管理</div>
    	 <form id="QualityConfirmform"  method="post">
        <div class="addcon">
        	<ul id="litable">
        	 <input name="qc.moduser" value="${qc.moduser!}" class="hide" >
        	 <input name="qc.id" value="${qc.id!}" class="hide" >
        	 <div class="datatbl">
                	<table>
                    	<tr class="bg">
                        	<th>用户id</th>
                        	<td>${qc.userid!}</td>
                        	<th>用户名称</th>
                        	<td>${qc.username!}</td>
                        </tr>
                        <tr class="bg">
                        	<th>用户证件号</th>
                        	<td>${qc.idcard!}</td>
                        	<th>个人用户职业</th>
                        	<td>${qc.profession!}</td>
                        </tr>
                        <tr class="bg">
                        	<th>用户所在地省份</th>
                        	<td>${qc.province!}</td>
                        	<th>用户所在地地级市</th>
                        	<td>${qc.prefecturecity!}</td>
                        </tr>   
                        <tr class="bg">
                        	<th>用户所在地市区</th>
                        	<td>${qc.area!}</td>
                        	<th>用户上传身份证</th>
                        	<td>${qc.uploadidcard!}</td>
                        </tr>  
                        <th>用户邮箱</th>
                        	<td>${qc.email!}</td> 
                        <th>审核类型</th>
                            <td> 
                            	<input type="radio" name="qc.infoFlag" class="infoFlag" value="4" checked=checked onclick="trunValue(4)">通过 
                            	<input type="radio" name="qc.infoFlag" value="3" class="infoFlag"  onclick="trunValue(3)">不通过
                            </td>
                        </tr>
                        <tr id="butrong" style="display:none"> 
                        	<th>不通过的原因</th>
                        	<td colspan=3> <input type="text" name="qc.infoText" style="width:600px;">
                        	</td>
                        </tr>
                    </table>
                </div>
            </ul>
        </div>
        <div class="btncon" >
        	<input type="button" value="保存" class="cancel ml10" onclick="subQualityConfirm();"/>
        	<input type="button" value="取消" class="cancel ml10" onclick="window.parent.hiddeniframes()"/>
        </div>
        </form>
    </div>
</body>
</html>
<script>
	function subQualityConfirm(){
		$.ajax({
	                cache: true,
	                type: "POST",
	                url:"${request.contextPath}/mangerAction!varQualityConfirm.action",
	                data:$('#QualityConfirmform').serialize(),// 你的formid
	                async: false,
	                error: function(request) {
	                    alert("添加失败！");
	                },
	                success: function(data) {
	                	alert('添加成功！');
	                	window.parent.hiddeniframesandsub(); 
	                }
	            });
		}
	function trunValue(valuse){
		if(valuse==3){
			$('#butrong').show();
		}else{
			$('#butrong').hide();
		}
	}
</script>


