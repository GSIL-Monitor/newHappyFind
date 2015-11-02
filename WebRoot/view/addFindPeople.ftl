<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>乐寻管理平台-添加寻人信息</title>
<script type="text/javascript" src="${request.contextPath}/js/jquery-1.3.2.min.js"></script>
<script language="javascript" type="text/javascript" src="${request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
<link href="${request.contextPath}/CVE.css" rel="stylesheet" type="text/css" />
<style>
.addPrice{width:700px;height:600px;}
</style>
</head>

<body>
	<div class="addbox addPrice">
    	<div class="title">添加寻人信息</div>
    	 <form id="FindPeopleform"  method="post">
        <div class="addcon">
        	<ul id="litable">
        	 <input name="fp.moduser" value="admin" class="" >
        	 <input name="fp.id" value="${fp.id!}" class="hide" >
        	 <div class="datatbl">
                	<table>
                    	<tr class="bg">
                        	<th>被寻人员姓名</th>
                        	<td> <input name="fp.name" class="defText1" value="${fp.name!}"></td>
                        	<th>被寻人身份证</th>
                        	<td> <input name="fp.idcard" class="defText1" value='${fp.idcard!}'></td>
                        </tr>
                        <tr class="bg">
                        	<th>年龄</th>
                        	<td> <input name="fp.age" class="defText1" value="${fp.age!}"></td>
                        	<th>籍贯（省，市）</th>
                        	<td> <input name="fp.origin" class="defText1" value="${fp.origin!}"></td>
                        </tr>
                        <tr class="bg">
                        	<th>居住地（区，路）</th>
                        	<td> <input name="fp.residence" class="defText1" value="${fp.residence!}"></td>
                        	<th>债券发生地</th>
                        	<td> <input name="fp.rightsplace" class="defText1" value="${fp.rightsplace!}"></td>
                        </tr>   
                        <tr class="bg">
                        	<th>原联系方式1</th>
                        	<td> <input name="fp.phonenumber" class="defText1" value="${fp.phonenumber!}"></td>
                        	<th>原联系方式2</th>
                        	<td> <input name="fp.phonenumber1" class="defText1" value="${fp.phonenumber1!}"></td>
                        	<th>原联系方式3</th>
                        	<td> <input name="fp.phonenumber2" class="defText1" value="${fp.phonenumber2!}"></td>
                        </tr>     
                        <tr class="bg">
                        	<th>失踪天数</th>
                        	<td> <input name="fp.missingday" class="defText1" value="${fp.missingday!}"></td>
                        	<th>借款协议</th>
                        	<td> <input name="fp.loanagreement" class="defText1" value="${fp.loanagreement!}"></td>
                        	<th>描述</th>
                        	<td> <input name="fp.description" class="defText1" value="${fp.description!}"></td>
                        </tr>    
                        <tr class="bg">
                        	<th>被催收人ID复印件</th>
                        	<td> <input name="fp.idcardcopy" class="defText1" value="${fp.idcardcopy!}"></td>
                        	<th>借贷合同</th>
                        	<td> <input name="fp.loancontract" class="defText1" value="${fp.loancontract!}"></td>
                        	<th>发布方类别</th>
                        	<td> <input name="fp.publishtype" class="defText1" value="${fp.publishtype!}"></td>
                        	<th>通过 </th>
                        	<td> <input name="fp.proType" class="defText1" value="3"></td>
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
	                url:"${request.contextPath}/FindPeopleAction!addFindPeople.action",
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
