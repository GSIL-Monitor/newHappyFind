package happyNew.entity;

public class RightDebtInformation {
	private int id;
	private String bianhaoId;//编号
	private String type;//1定价标；2竞价标
	private String rightname;//债权人姓名
	private String rightaddress;//债权人地址
	private String rightProvince;//债权发生省
	private String rightcity;//债权发生市
	private String rightdist;//债权发生区
	private String rightphone;//债权人电话
	private String rightidcard; //债权人身份证号或营业执照注册号
	private String rightcontact;  //债权人联系人
	private String rightcontactphone; //债权方联系人电话
	private String rightamount;  //债权金额
	private String disposalmethod;  //期望处置方式及回报
	private String latedays;  //逾期时间
	private String guaranteemethod;   //担保方式
	private String collectionmeasures;  //催收措施
	private String isSusong;  //是否诉讼
	private String isPanjue;  //是否判决
	private String voucher; //上传相关凭证地址
	private String rightdesc;  //债权描述
	private String debtname;   //债务方姓名
	private String debtaddress;   //债务方地址
	private String debtphone1;  //债务方电话1
	private String debtphone2;  //债务方电话2
	private String debtphone3;  //债务方电话3
	private String debtidcard; //债务方证件
	private String debtiscontact;  //1可联系；2已失联
	private String debtispay;   //1可以；2不可以；3不确定
	private String modtime;  //录入时间
	private String moduser;  //录入人
	private String updateTime;  //
	private String deleteFlag; //删除标识
	private String endTime; //满标时间
	private String salprsent;//佣金比例
	private String bateprsent;//折扣比例
	private String proType; //标的状态
	private String infoText; //标的备注（审核不通过原因）
	
	
	public String getInfoText() {
		return infoText;
	}
	public void setInfoText(String infoText) {
		this.infoText = infoText;
	}
	public void setProType(String proType) {
		this.proType = proType;
	}
	public String getRightProvince() {
		return rightProvince;
	}
	public void setRightProvince(String rightProvince) {
		this.rightProvince = rightProvince;
	}
	public String getRightcity() {
		return rightcity;
	}
	public void setRightcity(String rightcity) {
		this.rightcity = rightcity;
	}
	public String getRightdist() {
		return rightdist;
	}
	public void setRightdist(String rightdist) {
		this.rightdist = rightdist;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getRightname() {
		return rightname;
	}
	public void setRightname(String rightname) {
		this.rightname = rightname;
	}
	public String getRightaddress() {
		return rightaddress;
	}
	public void setRightaddress(String rightaddress) {
		this.rightaddress = rightaddress;
	}
	public String getRightphone() {
		return rightphone;
	}
	public void setRightphone(String rightphone) {
		this.rightphone = rightphone;
	}
	public String getRightidcard() {
		return rightidcard;
	}
	public void setRightidcard(String rightidcard) {
		this.rightidcard = rightidcard;
	}
	public String getRightcontact() {
		return rightcontact;
	}
	public void setRightcontact(String rightcontact) {
		this.rightcontact = rightcontact;
	}
	public String getRightcontactphone() {
		return rightcontactphone;
	}
	public void setRightcontactphone(String rightcontactphone) {
		this.rightcontactphone = rightcontactphone;
	}
	public String getRightamount() {
		return rightamount;
	}
	public void setRightamount(String rightamount) {
		this.rightamount = rightamount;
	}
	public String getDisposalmethod() {
		return disposalmethod;
	}
	public void setDisposalmethod(String disposalmethod) {
		this.disposalmethod = disposalmethod;
	}
	public String getLatedays() {
		return latedays;
	}
	public void setLatedays(String latedays) {
		this.latedays = latedays;
	}
	public String getGuaranteemethod() {
		return guaranteemethod;
	}
	public void setGuaranteemethod(String guaranteemethod) {
		this.guaranteemethod = guaranteemethod;
	}
	public String getCollectionmeasures() {
		return collectionmeasures;
	}
	public void setCollectionmeasures(String collectionmeasures) {
		this.collectionmeasures = collectionmeasures;
	}
	public String getVoucher() {
		return voucher;
	}
	public void setVoucher(String voucher) {
		this.voucher = voucher;
	}
	public String getRightdesc() {
		return rightdesc;
	}
	public void setRightdesc(String rightdesc) {
		this.rightdesc = rightdesc;
	}
	public String getDebtname() {
		return debtname;
	}
	public void setDebtname(String debtname) {
		this.debtname = debtname;
	}
	public String getDebtaddress() {
		return debtaddress;
	}
	public void setDebtaddress(String debtaddress) {
		this.debtaddress = debtaddress;
	}
	public String getDebtphone1() {
		return debtphone1;
	}
	public void setDebtphone1(String debtphone1) {
		this.debtphone1 = debtphone1;
	}
	public String getDebtphone2() {
		return debtphone2;
	}
	public void setDebtphone2(String debtphone2) {
		this.debtphone2 = debtphone2;
	}
	public String getDebtphone3() {
		return debtphone3;
	}
	public void setDebtphone3(String debtphone3) {
		this.debtphone3 = debtphone3;
	}
	public String getDebtidcard() {
		return debtidcard;
	}
	public void setDebtidcard(String debtidcard) {
		this.debtidcard = debtidcard;
	}
	public String getDebtiscontact() {
		return debtiscontact;
	}
	public void setDebtiscontact(String debtiscontact) {
		this.debtiscontact = debtiscontact;
	}
	public String getDebtispay() {
		return debtispay;
	}
	public void setDebtispay(String debtispay) {
		this.debtispay = debtispay;
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
	public String getBianhaoId() {
		return bianhaoId;
	}
	public void setBianhaoId(String bianhaoId) {
		this.bianhaoId = bianhaoId;
	}
	public String getIsSusong() {
		return isSusong;
	}
	public void setIsSusong(String isSusong) {
		this.isSusong = isSusong;
	}
	public String getIsPanjue() {
		return isPanjue;
	}
	public void setIsPanjue(String isPanjue) {
		this.isPanjue = isPanjue;
	}
	public String getSalprsent() {
		return salprsent;
	}
	public void setSalprsent(String salprsent) {
		this.salprsent = salprsent;
	}
	public String getBateprsent() {
		return bateprsent;
	}
	public void setBateprsent(String bateprsent) {
		this.bateprsent = bateprsent;
	}
	public String getProType() {
		return proType;
	}
	public String getDeleteFlag() {
		return deleteFlag;
	}
	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	

	
	
	
	
}
