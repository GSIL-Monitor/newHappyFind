<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>乐寻管理平台-添加悬赏信息</title>
<script type="text/javascript" src="${request.contextPath}/js/jquery-1.3.2.min.js"></script>
<script language="javascript" type="text/javascript" src="${request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
<link href="${request.contextPath}/CVE.css" rel="stylesheet" type="text/css" />
<style>
.addPrice{width:700px;height:600px;}
</style>
</head>

<body>
	<div class="addbox addPrice">
    	<div class="title">添加悬赏信息</div>
    	 <form id="rewardform"  method="post">
        <div class="addcon">
        	<ul id="litable">
        	 <input name="rf.moduser" value="admin" class="hide" >
        	 <input name="rf.id" value="${rf.id!}" class="hide" >
        	 <div class="datatbl">
                	<table>
                    	<tr class="bg">
                        	<th>客户姓名</th>
                        	<td> <input name="rf.name" class="defText1" value="${rf.name!}"></td>
                        	<th>客户身份证号码</th>
                        	<td> <input name="rf.idCard" class="defText1" value='${rf.idCard!}'></td>
                        </tr>
                        <tr class="bg">
                        	<th>贷款金额</th>
                        	<td> <input name="rf.loanmount" class="defText1" value="${rf.loanmount!}"></td>
                        	<th>贷款时间</th>
                        	<td> <input name="rf.loantime" id="loantime" type="text"  class="data defText1"  onClick="WdatePicker()"  readonly="readonly" /></td>
                        </tr>
                         <tr class="bg">
                        	<th>欠款金额</th>
                        	<td> <input name="rf.arrearsamount" class="defText1" value="${rf.arrearsamount!}"></td>
                        	<th>联系方式1</th>
                        	<td> <input name="rf.contactnumber1" class="defText1" value='${rf.contactnumber1!}'></td>
                        </tr>
                           <tr class="bg">
                        	<th>联系方式2</th>
                        	<td> <input name="rf.contactnumber2" class="defText1" value="${rf.contactnumber2!}"></td>
                        	<th>联系方式3</th>
                        	<td> <input name="rf.contactnumber3" class="defText1" value='${rf.contactnumber3!}'></td>
                        </tr>
                        <tr class="bg">
                        	<th>悬赏金额</th>
                        	<td> <input name="rf.rewardamount" class="defText1" value="${rf.rewardamount!}"></td>
                        </tr>
                       
                    </table>
                </div>
            </ul>
        </div>
        <div class="btncon">
        	<input type="button" value="保存" class="cancel ml10" onclick="subReward();"/>
        	<input type="button" value="取消" class="cancel ml10" onclick="window.parent.hiddeniframes()"/>
        </div>
        </form>
    </div>
</body>
</html>
<script>
	function subReward(){
		$.ajax({
	                cache: true,
	                type: "POST",
	                url:"${request.contextPath}/RewardAction!addReward.action",
	                data:$('#rewardform').serialize(),// 你的formid
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
