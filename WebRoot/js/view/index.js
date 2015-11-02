/**
 * Created by chenpengxu on 15-6-3.
 */


function num3(num){
	if(num.toString().length>=4) return num;
	var str="";
	for(var i=num.toString().length;i<4;i++)
	 str +="0";
	return str + num.toString();
}

function getBianhao(proId,type){
		var bianhao;
		if(type=='1'){
			bianhao="LX12"+num3(proId);
		}else if(type=='2'){
			bianhao="LX22"+num3(proId);
		}else if(type=='3'){
			bianhao="LX32"+num3(proId);
		}
		$('#bianhao'+proId).html(bianhao);
}

