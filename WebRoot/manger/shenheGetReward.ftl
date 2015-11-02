<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>乐寻管理平台-审核领赏信息</title>
<script type="text/javascript" src="${request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script language="javascript" type="text/javascript" src="${request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
<link href="${request.contextPath}/CVE.css" rel="stylesheet" type="text/css" />
<style>
.addPrice{width:800px;height:900px;}
</style>
</head>

<body>
	<div class="addbox addPrice">
    	<div class="title">审核领赏信息</div>
    	 <form id="GetRewardform"  method="post">
        <div class="addcon">
        	<ul id="litable">
        	 <input name="grf.moduser" value="${grf.moduser!}" class="hide" >
        	 <input name="grf.id" value="${grf.id!}" class="hide" >
        	 <input name="grf.xunrenzizengid" value="${grf.xunrenzizengid!}" class="hide" >
        	 <div class="datatbl">
                	<table>
                    	<tr class="bg">
                        	<th>被寻人员姓名</th>
                        	<td>${grf.name!}</td>
                        	<th>被寻人身份证号码</th>
                        	<td>${grf.idcard!}</td>
                        </tr>
                        <tr class="bg">
                        	<th>身高</th>
                        	<td>${grf.shengao!}</td>
                        	<th>体重</th>
                        	<td>${grf.tizhong!}</td>
                        </tr>
                        <tr class="bg">
                        	<th>被寻人特点</th>
                        	<td>${grf.tedian!}</td>
                        	<th>提供联系方式1</th>
                        	<td>${grf.contactnumber1!}</td>
                        </tr>   
                        <tr class="bg">
                        	<th>提供联系方式2</th>
                        	<td>${grf.contactnumber2!}</td>
                        	<th>提供联系方式3</th>
                        	<td>${grf.contactnumber3!}</td>
                        </tr>  
                        <th>相关描述</th>
                        	<td>${grf.description!}</td> 
                        <th>相关凭证</th>
                        	<td>${grf.pingzheng!}</td>
                        </tr>  
                        <tr class="bg">
                        	<th>期望赏金</th>
                        	<td>${grf.qiwangshangjin!}</td>
                        	<th>竞标优势</th>
                        	<td>${grf.jingbiaoyoushi!}</td>
                        </tr>  
                        <tr class="bg">  
                       		 <th>审核类型</th>
                            <td><input type="radio" name="grf.proFlag" value="3">不通过 <input type="radio" name="grf.proFlag" value="4">通过 </td>
                         	<th>&nbsp;</th>
                        	<td>&nbsp;</td>
                        </tr>   
                    </table>
                </div>
            </ul>
        </div>
        <div class="btncon">
        	<input type="button" value="保存" class="cancel ml10" onclick="subGetReward();"/>
        	<input type="button" value="取消" class="cancel ml10" onclick="window.parent.hiddeniframes()"/>
        </div>
        </form>
    </div>
</body>
</html>
<script>
	function subGetReward(){
		$.ajax({
	                cache: true,
	                type: "POST",
	                url:"${request.contextPath}/mangerAction!varGetReward.action",
	                data:$('#GetRewardform').serialize(),// 你的formid
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
</script>


