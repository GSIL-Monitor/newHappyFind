package happyNew.entity;

public class LoginUser {
	private int userId;//用户名
	private String userName;//用户名
	private String userPass;//密码
	private String userPhone;//手机
	private String userFlag;//用户类型 1个人、2企业债权 3 企业催收
	private String userType;//催收方还是债务方
	private String zcTime;//注册时间
	private String sysType;//用户账号状态
	
	
	
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
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
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserFlag() {
		return userFlag;
	}
	public void setUserFlag(String userFlag) {
		this.userFlag = userFlag;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getZcTime() {
		return zcTime;
	}
	public void setZcTime(String zcTime) {
		this.zcTime = zcTime;
	}
	public String getSysType() {
		return sysType;
	}
	public void setSysType(String sysType) {
		this.sysType = sysType;
	}
	
	
	
	
}
