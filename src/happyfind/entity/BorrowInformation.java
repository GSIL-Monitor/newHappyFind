package happyfind.entity;

public class BorrowInformation {

	private int id;
	private String name;
	private String idCard;
	private String status;
	private String source;
	private String modtime; //
	private String moduser;  //
	private String updateTime;  //
	private int deleteFlag;   //1是已删除
	public String getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(String updateTime) {
		this.updateTime = updateTime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getIdCard() {
		return idCard;
	}
	public String getStatus() {
		return status;
	}
	public int getDeleteFlag() {
		return deleteFlag;
	}
	public void setDeleteFlag(int deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	

	
	
	
}
