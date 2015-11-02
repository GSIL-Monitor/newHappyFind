package happyNew.action;

import happyNew.entity.FindPeopleInformation;
import happyNew.entity.LoginUser;
import happyNew.entity.QualityConfirmInformation;
import happyNew.entity.XiaoXiInformation;
import happyNew.service.LoginUserServiceI;
import happyNew.service.QualityConfirmInformationServiceI;
import happyNew.service.XiaoXiInformationServiceI;
import happyfind.entity.SystemLog;
import happyfind.service.SystemLogServiceI;
import happyfind.utils.CommonData;
import happyfind.utils.StrTools;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

@ParentPackage(value="basePackage")
@Namespace("/")
@Action(value="viewManAction")
@Results(value = {
@Result(name ="xunren", location = "/viewMan/xunren.ftl"),
@Result(name ="bid", location = "/viewMan/bid.ftl"),
@Result(name ="memMan", location = "/viewMan/memManager.ftl"),
@Result(name ="userinfo", location = "/viewMan/userinfo.ftl"),
@Result(name ="index", location = "/index.ftl"),
@Result(name ="zigeren", location = "/viewMan/zigeren.ftl"),
@Result(name ="ziqiye", location = "/viewMan/ziqiye.ftl"),
@Result(name ="fanceinfo", location = "/viewMan/fanceinfo.ftl"),
@Result(name ="myXiaoXiList", location = "/viewMan/myXiaoXiList.ftl"),

})
public class viewManAction {
	private LoginUser user;
	private String type="0";
	private String pageName;
	private String userName;
	private String selecurrt; //前台页面调转模块
	private int userId;
	private LoginUserServiceI userService;
	Date dateTime = new Date();
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:MM:ss");
	String dateTimes = df.format(dateTime);
	
	HttpServletResponse response = ServletActionContext.getResponse(); 
	HttpServletRequest request = ServletActionContext.getRequest(); 
	HttpSession session = request.getSession();
	
	private FindPeopleInformation fp = new FindPeopleInformation();
	private QualityConfirmInformation qc = new QualityConfirmInformation();
	private QualityConfirmInformationServiceI QualityConfirmInformationService;
	
	//消息系统
	private XiaoXiInformation xiaoxi = new XiaoXiInformation();
	private XiaoXiInformationServiceI xiaoxiService;
	private List<XiaoXiInformation> xiaoxiList;
	
	public XiaoXiInformation getXiaoxi() {
		return xiaoxi;
	}

	public String toPage(){
		user = (LoginUser)session.getAttribute("user");
		if (pageName.equals("moreInfos")){
			if(user!=null && user.getUserFlag().equals("1")){
				pageName="zigeren";
			}else {
				pageName="ziqiye";
			}
		}
		if(user!=null&&StrTools.isNotNull(pageName)){
			userName = user.getUserName();
			qc = QualityConfirmInformationService.getEntityByUserId(user.getUserId());
			if(qc==null){
				qc = new QualityConfirmInformation();
			}
		}else{
			pageName="index";
		}
		return pageName;
	}
	
	public String getSysXiaoxiList(){
		user = (LoginUser)session.getAttribute("user");
		if(user!=null){
			xiaoxi.setUserid(user.getUserName());
			xiaoxiList = xiaoxiService.getList(xiaoxi);
		}else{
			pageName="index";
		}
		return pageName;
	}
	
	public void updateXiaoXiFlag() throws IOException{
		String sucessType="0";
		try{
			xiaoxi.setId(userId);
			xiaoxiService.updateEntity(xiaoxi);
			sucessType = "1";
		}catch(Exception e){
			e.printStackTrace();
		}
		response.setCharacterEncoding("UTF-8");
		response.getWriter().println(sucessType);
	}
	
	public void deleteXiaoXiFlag() throws IOException{
		String sucessType="0";
		try{
			xiaoxi.setId(userId);
			xiaoxiService.deleteEntity(xiaoxi);
			sucessType = "1";
		}catch(Exception e){
			e.printStackTrace();
		}
		response.setCharacterEncoding("UTF-8");
		response.getWriter().println(sucessType);
	}
	
	
	

	public List<XiaoXiInformation> getXiaoxiList() {
		return xiaoxiList;
	}

	public void setXiaoxiList(List<XiaoXiInformation> xiaoxiList) {
		this.xiaoxiList = xiaoxiList;
	}

	//参数
	public LoginUser getUser() {
		return user;
	}
	public void setUser(LoginUser user) {
		this.user = user;
	}
	public String getPageName() {
		return pageName;
	}
	public void setPageName(String pageName) {
		this.pageName = pageName;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public LoginUserServiceI getUserService() {
		return userService;
	}
	public void setUserService(LoginUserServiceI userService) {
		this.userService = userService;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public QualityConfirmInformation getQc() {
		return qc;
	}
	public void setQc(QualityConfirmInformation qc) {
		this.qc = qc;
	}
	public FindPeopleInformation getFp() {
		return fp;
	}
	public void setFp(FindPeopleInformation fp) {
		this.fp = fp;
	}
	
	public QualityConfirmInformationServiceI getQualityConfirmInformationService() {
		return QualityConfirmInformationService;
	}
	@Autowired
	public void setQualityConfirmInformationService(
			QualityConfirmInformationServiceI qualityConfirmInformationService) {
		QualityConfirmInformationService = qualityConfirmInformationService;
	}



	public String getSelecurrt() {
		return selecurrt;
	}



	public void setSelecurrt(String selecurrt) {
		this.selecurrt = selecurrt;
	}
	public void setXiaoxi(XiaoXiInformation xiaoxi) {
		this.xiaoxi = xiaoxi;
	}
	public XiaoXiInformationServiceI getXiaoxiService() {
		return xiaoxiService;
	}
	@Autowired
	public void setXiaoxiService(XiaoXiInformationServiceI xiaoxiService) {
		this.xiaoxiService = xiaoxiService;
	}



}
