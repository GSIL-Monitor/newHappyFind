<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>乐寻管理平台-添加借贷信息</title>
<script type="text/javascript" src="../js/jquery-1.3.2.min.js"></script>
<script language="javascript" type="text/javascript" src="../js/My97DatePicker/WdatePicker.js"></script>
<link href="../CVE.css" rel="stylesheet" type="text/css" />
<style>
.addPrice{width:700px;height:600px;}
</style>
</head>

<body>
	<div class="addbox addPrice">
    	<div class="title">添加借贷信息</div>
    	 <form id="borrowform"  method="post">
        <div class="addcon">
        	<ul id="litable">
        	 <input name="bf.moduser" value="admin" class="hide" >
        	 <input name="bf.id" value="${bf.id!}" class="hide" >
        	 <div class="datatbl">
                	<table>
                    	<tr class="bg">
                        	<th>姓名</th>
                        	<td> <input name="bf.name" class="defText1" value="${bf.name!}"></td>
                        	<th>I D</th>
                        	<td> <input name="bf.idCard" class="defText1" value='${bf.idCard!}'></td>
                        </tr>
	                    <tr>
	                       	<th>状态</th>
                        	<td> <select name="bf.status" id="status" class="defText1" >
			                        	<option value="逾期" >逾期</option>
					                	<option value="欺诈">欺诈</option>
					                	<option value="失联">失联</option>
					                	<option value="其他">其他</option>
			                        	</select>
			                 </td>
                        	<th>来源</th>
                        	<td> <select name="bf.source" id="source" class="defText1">
			                        	<option value="银行" >银行</option>
					                	<option value="P2P">P2P</option>
					                	<option value="小贷公司">小贷公司</option>
					                	<option value="担保公司">担保公司</option>
					                	<option value="个人">个人</option>
					                	<option value="资产管理">资产管理</option>
					                	<option value="其他机构">其他机构</option>
			                        </select>
                        	</td>
	                    </tr>
	                    <tr>
	                       	<th>时间</th>
                        	<td> <input name="bf.modtime" id="modtime" type="text"  class="data defText1" id="startTime" onClick="WdatePicker()" readonly="readonly" /></td>
	                    	<th></th>
                        	<td> </td>
	                    </tr>
                    </table>
                </div>
            </ul>
        </div>
        <div class="btncon">
        	<input type="button" value="保存" class="cancel ml10" onclick="subBorrow();"/>
        	<input type="button" value="取消" class="cancel ml10" onclick="window.parent.hiddeniframes()"/>
        </div>
        </form>
    </div>
</body>
</html>
<script>
	function subBorrow(){
		$.ajax({
	                cache: true,
	                type: "POST",
	                url:"${request.contextPath}/mangerAction!addBorrow.action",
	                data:$('#borrowform').serialize(),// 你的formid
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
		
$(function(){
	$('#source').val('${bf.source!}');
	$('#status').val('${bf.status!}');
	$('#modtime').val('${bf.modtime!}');
})
</script>
