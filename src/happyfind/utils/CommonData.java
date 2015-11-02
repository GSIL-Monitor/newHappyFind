package happyfind.utils;

public class CommonData {
	public static final String ADDBORROW="addBorrow" ;
	public static final String UPDATEBORROW="updateBorrow" ;
	public static final String ADDREWARD="addReward" ;
	public static final String UPDATEREWARD="updateReward" ;
	public static final String ADDRELEASE="addRelease" ;
	public static final String UPDATERELEASE="updateRelease" ;
	
	public static String getLogKey(String key){
		String keyValue=null;
		if(key.equals("addBorrow")){
			keyValue="添加信贷信息";
		}else if(key.equals("updateBorrow")){
			keyValue="修改信贷信息";
		}else if(key.equals("addReward")){
			keyValue="添加悬赏信息";
		}else if(key.equals("updateReward")){
			keyValue="修改悬赏信息";
		}else if(key.equals("addRelease")){
			keyValue="增加举报信息";
		}else if(key.equals("updateRelease")){
			keyValue="修改举报信息";
		}
		return keyValue;
	}
	
	
	/*保存*/
	public static final String BAOCUN="1" ;
	/*提交审核*/
	public static final String TIJIAOSHENHE="2" ;
	/*审核通过*/
	public static final String SHENHETONGGUO="4" ;
	/*审核不通过*/
	public static final String SHENHEBUTONGGUO="3" ;
	
	/*寻人标领赏*/
	public static final String LINGSHENG="2" ;
	/*寻人标领赏审核通过*/
	public static final String LINGSHENGTONGGUO="4" ;
	/*寻人标领赏审核不通过*/
	public static final String LINGSHENGBUTONGGUO="3" ;
	
	/*寻人标领赏满标*/
	public static final String XUNRENMANBIAO="5" ;
	
	
	/*寻人标领赏中标*/
	public static final String LINGSHENGZHONGBIAO="6" ;
	/*寻人标领赏未中标*/
	public static final String LINGSHENGWEIZHONGBIAO="7" ;
	
	
	/*竞价定价标满标*/
	public static final String MANBIAO="5" ;
	/*竞价定价标确认中标*/
	public static final String ZHONGBIAO="7" ;
	
	/*抢标，竞标中,应标*/
	public static final String QIANGBIAO="1" ;
	/*抢标，竞标中标*/
	public static final String QIANGZHONGBIAO="2" ;
	/*抢标，竞标未中标*/
	public static final String QIANGWEIZHONGBIAO="3" ;
	/*抢标，竞标中标者添加催收信息，提交审核*/
	public static final String TIJIAOCUISHOU="4" ;
	
	
	/**
	 * caiwu
	 * */
	public static final double lingshangprcent=0.2;
	public static final String pingtaiUserName="HappyFindAdmin";
	public static final String LINGSHANGOUT="lingshangout" ;
	public static final String LINGSHANGIN="lingshangin" ;
	public static final String PINGTAILINGSHANG="pingtailingshang" ;
	
	public static String getFinanceKey(String key){
		String keyValue=null;
		if(key.equals("lingshangout")){
			keyValue="查看领赏信息出账";
		}else if(key.equals("lingshangin")){
			keyValue="领赏入账";
		}else if(key.equals("pingtailingshang")){
			keyValue="领赏平台入账";
		}
		return keyValue;
	}
	
	
	/*
	 * 消息系统常量
	 * 
	 * */
	/*注册消息*/
	public static final String ZHUCE="1" ;
	
	public static String getXiaoxiName(String key){
		String keyValue=null;
		if(key.equals("1")){
			keyValue="注册消息";
		}
		return keyValue;
	}
	
	public static String getXiaoxiDesc(String key){
		String keyValue=null;
		if(key.equals("1")){
			keyValue="欢迎您成为乐寻会员，请牢记您的登录账号";
		}
		return keyValue;
	}
	
}
