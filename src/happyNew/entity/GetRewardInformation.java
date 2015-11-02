package happyNew.entity;

public class GetRewardInformation {
	private int id;
	private int xunrenzizengid;   //
	
	private String name;  //
	private String idcard;   
	private String shengao;   
	private String tizhong;
	private String tedian;

	private String contactnumber1;
	private String contactnumber2;
	private String contactnumber3;
	private String description;   
	private String pingzheng;
	private String qiwangshangjin;
	private String jingbiaoyoushi;
	private String moduser;  //
	private String modtime; //
	private String updateTime;  //
	private String deleteFlag;   //1是已删除
	private String proFlag;  //标的状态 1保存 2 提交
	
	//扩展字段
	private String moduserType;
	
	public String getModuserType() {
		return moduserType;
	}
	public void setModuserType(String moduserType) {
		this.moduserType = moduserType;
	}
	public String getProFlag() {
		return proFlag;
	}
	public void setProFlag(String proFlag) {
		this.proFlag = proFlag;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public int getXunrenzizengid() {
		return xunrenzizengid;
	}
	public void setXunrenzizengid(int xunrenzizengid) {
		this.xunrenzizengid = xunrenzizengid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getShengao() {
		return shengao;
	}
	public void setShengao(String shengao) {
		this.shengao = shengao;
	}
	public String getTizhong() {
		return tizhong;
	}
	public void setTizhong(String tizhong) {
		this.tizhong = tizhong;
	}
	public String getTedian() {
		return tedian;
	}
	public void setTedian(String tedian) {
		this.tedian = tedian;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPingzheng() {
		return pingzheng;
	}
	public void setPingzheng(String pingzheng) {
		this.pingzheng = pingzheng;
	}
	public String getQiwangshangjin() {
		return qiwangshangjin;
	}
	public void setQiwangshangjin(String qiwangshangjin) {
		this.qiwangshangjin = qiwangshangjin;
	}
	public String getJingbiaoyoushi() {
		return jingbiaoyoushi;
	}
	public void setJingbiaoyoushi(String jingbiaoyoushi) {
		this.jingbiaoyoushi = jingbiaoyoushi;
	}
	public String getModuser() {
		return moduser;
	}
	public void setModuser(String moduser) {
		this.moduser = moduser;
	}
	public String getModtime() {
		return modtime;
	}
	public void setModtime(String modtime) {
		this.modtime = modtime;
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
	public String getContactnumber1() {
		return contactnumber1;
	}
	public void setContactnumber1(String contactnumber1) {
		this.contactnumber1 = contactnumber1;
	}
	public String getContactnumber2() {
		return contactnumber2;
	}
	public void setContactnumber2(String contactnumber2) {
		this.contactnumber2 = contactnumber2;
	}
	public String getContactnumber3() {
		return contactnumber3;
	}
	public void setContactnumber3(String contactnumber3) {
		this.contactnumber3 = contactnumber3;
	}
	
	
	
}
