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
    	<div class="title">催收信息</div>
    	 <form id="QualityConfirmform"  method="post">
        <div class="addcon">
        	<ul id="litable">
        	 <input name="ci.moduser" value="${ci.moduser!}" class="hide" >
        	 <input name="ci.id" value="${ci.id!}" class="hide" >
        	 <div class="datatbl">
                	<table>
                    	<tr class="bg">
                        	<th>付款人</th>
                        	<td>${ci.cruUser!}</td>
                        	<th>付款人和债务人关系</th>
                        	<td>${ci.cruUserShip!}</td>
                        </tr>
                        <tr class="bg">
                        	<th>当前联系手机</th>
                        	<td>${ci.cruPhone!}</td>
                        	<th>电话</th>
                        	<td>${ci.crutel!}</td>
                        </tr>
                        <tr class="bg">
                        	<th>当前地址</th>
                        	<td>${ci.cruAdrress!}</td>
                        	<th>付款证明</th>
                        	<td>${ci.crufileAdress!}</td>
                        </tr>   
                        <tr class="bg">
                        	<th>催收金额</th>
                        	<td>${ci.cuishouMony!}</td>
                        	<th>提交时间</th>
                        	<td>${ci.submitTime!}</td>
                        </tr>  
                        <th>审核意见</th>
                            <td> 
                            	<input type="radio" name="ci.proFlag" class="proFlag" value="6" checked=checked onclick="trunValue(4)">通过 
                            	<input type="radio" name="ci.proFlag" value="5" class="proFlag"  onclick="trunValue(3)">不通过
                            </td>
                            <th></th>
                        	<td></td>
                        </tr>
                        <tr id="butrong" style="display:none"> 
                        	<th>不通过的原因</th>
                        	<td colspan=3> <input type="text" name="ci.infoText" style="width:400px;">
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
	                url:"${request.contextPath}/mangerAction!varComInfo.action",
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


