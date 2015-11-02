package happyNew.entity;

public class XiaoXiInformation {
	private int id;
	private String xiaoxiname;//消息名称
	private String xiaoxitype;   //消息类别
	private String xiaoxidesc;  //消息内容
	private String modtime; //录入时间
	private String userid;  //消息接收人id
	private String deleteFlag;  //删除标识
	private String xiaoxiFlag;  //是否查看标识
	
	public String getXiaoxiFlag() {
		return xiaoxiFlag;
	}
	public void setXiaoxiFlag(String xiaoxiFlag) {
		this.xiaoxiFlag = xiaoxiFlag;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getXiaoxiname() {
		return xiaoxiname;
	}
	public void setXiaoxiname(String xiaoxiname) {
		this.xiaoxiname = xiaoxiname;
	}
	public String getXiaoxitype() {
		return xiaoxitype;
	}
	public void setXiaoxitype(String xiaoxitype) {
		this.xiaoxitype = xiaoxitype;
	}
	public String getXiaoxidesc() {
		return xiaoxidesc;
	}
	public void setXiaoxidesc(String xiaoxidesc) {
		this.xiaoxidesc = xiaoxidesc;
	}
	public String getModtime() {
		return modtime;
	}
	public void setModtime(String modtime) {
		this.modtime = modtime;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getDeleteFlag() {
		return deleteFlag;
	}
	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
	}


}
