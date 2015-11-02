package happyNew.entity;

public class Finance {
	private int id;//自增id
	private int userId;//用户名
	private String userName;//用户名
	private double inFinance;//进账金额
	private double outFinance;//出账金额
	private double stopFinance;//冻结金额
	private double totleFinance;//当前总金额
	private String updateTime; //交易时间
	private String updateUser; //修改人员
	private String financeInfo;//交易备注
	private String proFlag; // 标记是明细还是总计 1是总计
	//虚拟
	private String userType;//用户类型 （个人公司）

	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}


	public String getUpdateUser() {
		return updateUser;
	}


	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}


	public void setUserId(int userId) {
		this.userId = userId;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getFinanceInfo() {
		return financeInfo;
	}


	public void setFinanceInfo(String financeInfo) {
		this.financeInfo = financeInfo;
	}


	public String getUserType() {
		return userType;
	}


	public void setUserType(String userType) {
		this.userType = userType;
	}


	public void setInFinance(double inFinance) {
		this.inFinance = inFinance;
	}


	public void setOutFinance(double outFinance) {
		this.outFinance = outFinance;
	}


	public void setStopFinance(double stopFinance) {
		this.stopFinance = stopFinance;
	}


	public void setTotleFinance(double totleFinance) {
		this.totleFinance = totleFinance;
	}
	public double getInFinance() {
		return inFinance;
	}
	public double getOutFinance() {
		return outFinance;
	}
	public double getStopFinance() {
		return stopFinance;
	}
	public double getTotleFinance() {
		return totleFinance;
	}
	public String getProFlag() {
		return proFlag;
	}
	public void setProFlag(String proFlag) {
		this.proFlag = proFlag;
	}
	
	
}
