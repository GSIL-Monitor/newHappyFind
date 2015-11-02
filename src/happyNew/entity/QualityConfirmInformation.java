package happyNew.entity;

public class QualityConfirmInformation {
	
	private int id;
	private String type;//1个人 2 债权 3 催收
	private String userid;//用户id
	private String username;//个人用户姓名
	private String idcard;//个人用户身份证号
	private String profession;//个人用户职业
	private String province; //个人用户所在地省份
	private String prefecturecity;  //个人用户所在地地级市
	private String area; //个人用户所在地市区
	private String uploadidcard;  //个人用户上传身份证
	private String email;  //个人用户邮箱
	private String companyname;  //企业名称
	private String companyidcard;   //企业证件号
	private String companyprovince;  //企业所在地省份
	private String companyprefecturecity; //企业用户所在地地级市
	private String companyarea;  //企业所在地市区
	private String uploadcompanyareaidcard;   //企业上传证件
	private String legalname;   //企业法定代表人
	private String companysize;  //企业规模
	private String companyemail;  //企业邮箱
	private String modtime;  //录入时间
	private String moduser;  //债务方电话2
	private String updateTime;  //债务方电话3
	private String deleteFlag; //债务方证件
	private String infoFlag; //用户信息状态
	private String infoText; //备注
	
	public String getInfoText() {
		return infoText;
	}
	public void setInfoText(String infoText) {
		this.infoText = infoText;
	}
	public String getInfoFlag() {
		return infoFlag;
	}
	public void setInfoFlag(String infoFlag) {
		this.infoFlag = infoFlag;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getPrefecturecity() {
		return prefecturecity;
	}
	public void setPrefecturecity(String prefecturecity) {
		this.prefecturecity = prefecturecity;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getUploadidcard() {
		return uploadidcard;
	}
	public void setUploadidcard(String uploadidcard) {
		this.uploadidcard = uploadidcard;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getCompanyidcard() {
		return companyidcard;
	}
	public void setCompanyidcard(String companyidcard) {
		this.companyidcard = companyidcard;
	}
	public String getCompanyprovince() {
		return companyprovince;
	}
	public void setCompanyprovince(String companyprovince) {
		this.companyprovince = companyprovince;
	}
	public String getCompanyprefecturecity() {
		return companyprefecturecity;
	}
	public void setCompanyprefecturecity(String companyprefecturecity) {
		this.companyprefecturecity = companyprefecturecity;
	}
	public String getCompanyarea() {
		return companyarea;
	}
	public void setCompanyarea(String companyarea) {
		this.companyarea = companyarea;
	}
	public String getUploadcompanyareaidcard() {
		return uploadcompanyareaidcard;
	}
	public void setUploadcompanyareaidcard(String uploadcompanyareaidcard) {
		this.uploadcompanyareaidcard = uploadcompanyareaidcard;
	}
	public String getLegalname() {
		return legalname;
	}
	public void setLegalname(String legalname) {
		this.legalname = legalname;
	}
	public String getCompanysize() {
		return companysize;
	}
	public void setCompanysize(String companysize) {
		this.companysize = companysize;
	}
	public String getCompanyemail() {
		return companyemail;
	}
	public void setCompanyemail(String companyemail) {
		this.companyemail = companyemail;
	}
	public String getModtime() {
		return modtime;
	}
	public void setModtime(String modtime) {
		this.modtime = modtime;
	}
	public String getModuser() {
		return moduser;
	}
	public void setModuser(String moduser) {
		this.moduser = moduser;
	}
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	public String getDeleteFlag() {
		return deleteFlag;
	}
	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	
	
	
	
}
