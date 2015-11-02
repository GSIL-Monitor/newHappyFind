package happyNew.entity;

public class CompetitiveInformation {
	private int id;
	private int proId; //标的id
	private String proPrsent;//标的竞标比例
	private String modtime;   //录入时间
	private String moduser;  //竞标人
	private String updateTime; //更新时间
	private String deleteFlag;  //删除标识
	private String proFlag;  //标的状态 1中标
	
	//中标后填写
	private String cruPhone;  //当前手机联系方式
	private String cruAdrress; //当前地址
	private String crutel; //当前电话
	private String cruUser; //当前付款人
	private String cruUserShip; //当前付款人与债务人关系
	private String crufileAdress; //当前上次文件地址
	private String infoText; //审核不通过的原因
	private String submitTime; //提交审核时间
	private String cuishouMony; //催收金额
	
	private String proBianhao; //扩展字段
	private String type; //扩展字段（定价还是竞价）
	private String prorightamount; //债权金额
	private String moduserType; //竞标人类型
	
	
	
	public String getCuishouMony() {
		return cuishouMony;
	}
	public void setCuishouMony(String cuishouMony) {
		this.cuishouMony = cuishouMony;
	}
	public String getModuserType() {
		return moduserType;
	}
	public void setModuserType(String moduserType) {
		this.moduserType = moduserType;
	}
	public String getProrightamount() {
		return prorightamount;
	}
	public void setProrightamount(String prorightamount) {
		this.prorightamount = prorightamount;
	}
	public String getProBianhao() {
		return proBianhao;
	}
	public void setProBianhao(String proBianhao) {
		this.proBianhao = proBianhao;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProId() {
		return proId;
	}
	public void setProId(int proId) {
		this.proId = proId;
	}
	public String getProPrsent() {
		return proPrsent;
	}
	public void setProPrsent(String proPrsent) {
		this.proPrsent = proPrsent;
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
	public String getProFlag() {
		return proFlag;
	}
	public void setProFlag(String proFlag) {
		this.proFlag = proFlag;
	}
	public String getCruPhone() {
		return cruPhone;
	}
	public void setCruPhone(String cruPhone) {
		this.cruPhone = cruPhone;
	}
	public String getCruAdrress() {
		return cruAdrress;
	}
	public void setCruAdrress(String cruAdrress) {
		this.cruAdrress = cruAdrress;
	}
	public String getCrutel() {
		return crutel;
	}
	public void setCrutel(String crutel) {
		this.crutel = crutel;
	}
	public String getCruUser() {
		return cruUser;
	}
	public void setCruUser(String cruUser) {
		this.cruUser = cruUser;
	}
	public String getCrufileAdress() {
		return crufileAdress;
	}
	public void setCrufileAdress(String crufileAdress) {
		this.crufileAdress = crufileAdress;
	}
	public String getCruUserShip() {
		return cruUserShip;
	}
	public void setCruUserShip(String cruUserShip) {
		this.cruUserShip = cruUserShip;
	}
	public String getInfoText() {
		return infoText;
	}
	public void setInfoText(String infoText) {
		this.infoText = infoText;
	}
	public String getSubmitTime() {
		return submitTime;
	}
	public void setSubmitTime(String submitTime) {
		this.submitTime = submitTime;
	}
	
	
	
	
}
