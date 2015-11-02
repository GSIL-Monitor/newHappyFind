<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>乐寻管理平台-审核寻人信息</title>
<script type="text/javascript" src="${request.contextPath}/js/jquery-1.8.3.min.js"></script>
<script language="javascript" type="text/javascript" src="${request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
<link href="${request.contextPath}/CVE.css" rel="stylesheet" type="text/css" />
<style>
.addPrice{width:800px;height:900px;}
</style>
</head>

<body>
	<div class="addbox addPrice">
    	<div class="title">审核寻人信息</div>
    	 <form id="FindPeopleform"  method="post">
        <div class="addcon">
        	<ul id="litable">
        	 <input name="fp.moduser" value="${fp.moduser!}" class="hide" >
        	 <input name="fp.id" value="${fp.id!}" class="hide" >
        	 <div class="datatbl">
                	<table>
                    	<tr class="bg">
                        	<th>被寻人员姓名</th>
                        	<td>${fp.name!}</td>
                        	<th>被寻人身份证</th>
                        	<td>${fp.idcard!}</td>
                        </tr>
                        <tr class="bg">
                        	<th>年龄</th>
                        	<td>${fp.age!}</td>
                        	<th>籍贯（省，市）</th>
                        	<td>${fp.origin!}</td>
                        </tr>
                        <tr class="bg">
                        	<th>居住地（区，路）</th>
                        	<td>${fp.residence!}</td>
                        	<th>债券发生地</th>
                        	<td>${fp.rightsplace!}</td>
                        </tr>   
                        <tr class="bg">
                        	<th>原联系方式1</th>
                        	<td>${fp.phonenumber!}</td>
                        	<th>原联系方式2</th>
                        	<td>${fp.phonenumber1!}</td>
                        </tr>  
                        <th>原联系方式3</th>
                        	<td>${fp.phonenumber2!}</td> 
                        <th>失踪天数</th>
                        	<td>${fp.missingday!}</td>
                        </tr>  
                        <tr class="bg">
                        	<th>借款协议</th>
                        	<td>${fp.loanagreement!}</td>
                        	<th>描述</th>
                        	<td>${fp.description!}</td>
                        </tr>    
                        <tr class="bg">
                        	<th>被催收人ID复印件</th>
                        	<td>${fp.idcardcopy!}</td>
                        	<th>借贷合同</th>
                        	<td>${fp.loancontract!}</td>
                        </tr>  
                        <tr class="bg">
                        <th>发布方类别</th>
                        	<td>${fp.publishtype!}</td>
                        <th>审核类型</th>
                            <td><input type="radio" name="fp.proFlag" value="3">不通过 <input type="radio" name="fp.proFlag" value="4">通过 </td>
                        </tr>           
                    </table>
                </div>
            </ul>
        </div>
        <div class="btncon">
        	<input type="button" value="保存" class="cancel ml10" onclick="subFindPeople();"/>
        	<input type="button" value="取消" class="cancel ml10" onclick="window.parent.hiddeniframes()"/>
        </div>
        </form>
    </div>
</body>
</html>
<script>
	function subFindPeople(){
		$.ajax({
	                cache: true,
	                type: "POST",
	                url:"${request.contextPath}/mangerAction!verFindPeople.action",
	                data:$('#FindPeopleform').serialize(),// 你的formid
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


