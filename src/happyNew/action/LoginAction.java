package happyNew.action;

import happyNew.entity.LoginUser;
import happyNew.entity.XiaoXiInformation;
import happyNew.service.LoginUserServiceI;
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
@Action(value="regAction")
@Results(value = {
@Result(name ="addUser", location = "/enrollinfo.ftl"),
@Result(name ="top", location = "/top.ftl"),
@Result(name ="bottom", location = "/bottom.ftl"),
@Result(name ="index", location = "/index.ftl"),
@Result(name ="enroll", location = "/enroll.ftl"),
@Result(name ="memManager", location = "/memManager.ftl"),

})
public class LoginAction {
	private LoginUser user;
	private String type="0";
	private String pageName;
	private int userId;
	private LoginUserServiceI userService;
	
	//消息系统
	private XiaoXiInformation xiaoxi = new XiaoXiInformation();
	private XiaoXiInformationServiceI xiaoxiService;
	
	Date dateTime = new Date();
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:MM:ss");
	String dateTimes = df.format(dateTime);
	HttpServletResponse response = ServletActionContext.getResponse(); 
	HttpServletRequest request = ServletActionContext.getRequest(); 
	HttpSession session = request.getSession();
	
	public String toPage(){
		if(pageName.equals("update")){
			user=userService.getEntityById(userId);
		}
		return pageName;
	}
	public void addUser() throws Exception{
		System.out.print(user.getUserName());
		user.setZcTime(dateTimes);
		String sucessType="0";
		try{
			if(user.getUserId()==0){
				userService.addEntity(user);
				addSysXiaoxi(user.getUserName());
			}else{
				userService.updateEntity(user);
			}
			sucessType="1";
		}catch(Exception e){
			e.printStackTrace();
		}
		response.setCharacterEncoding("UTF-8");
		response.getWriter().println(sucessType);
	}
	
	public void addSysXiaoxi(String userName){
		xiaoxi.setModtime(dateTimes);
		xiaoxi.setUserid(userName);
		xiaoxi.setXiaoxiname(CommonData.getXiaoxiName(CommonData.ZHUCE));
		xiaoxi.setXiaoxitype(CommonData.ZHUCE);
		xiaoxi.setXiaoxidesc(userName+","+CommonData.getXiaoxiDesc(CommonData.ZHUCE));
		xiaoxi.setXiaoxiFlag("0");
		xiaoxiService.addEntity(xiaoxi);
	}
	
	public void updatePass() throws Exception{
		String sucessType="0";
		try{
			userService.updatePass(user);
			sucessType = "1";
		}catch(Exception e){
			e.printStackTrace();
		}
		response.setCharacterEncoding("UTF-8");
		response.getWriter().println(sucessType);
	}
	
	
	public void logonUser() throws IOException{
		response.setCharacterEncoding("UTF-8");
		String userName= user.getUserName();
		String passWord = user.getUserPass();
		String passwd = getPassByUserName();
		String sucessType = "0";
		if(passWord.equals(passwd)){
			sucessType="1";
		}
		LoginUser users =userService.getPassByUserName(userName);
		if(users!=null){
			session.setAttribute("user", users);
		}
		response.getWriter().println(sucessType);
	}
	public String logonOut() throws IOException{
		response.setCharacterEncoding("UTF-8");
		session.setAttribute("user", null);
		return "index";
	}
	
	public String getPassByUserName() throws IOException{
		LoginUser users =userService.getPassByUserName(user.getUserName());
		String usersPass= null;
		String sucessType = "0";
		if(users!=null){
			usersPass=users.getUserPass();
		}
		if(StrTools.isNotNull(usersPass)){
			sucessType="1";
		}
		if(pageName!=null&&pageName.equals("checkUserName")){
			response.getWriter().println(sucessType);
		}
		return usersPass;
	}
	public void getCountByUserName() throws IOException{
		LoginUser users =userService.getPassByUserName(user.getUserName());
		String usersName= null;
		String sucessType = "0";
		if(users!=null){
			usersName=users.getUserName();
		}
		if(StrTools.isNotNull(usersName)){
			sucessType="1";
		}
		response.getWriter().println(sucessType);
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
	public XiaoXiInformation getXiaoxi() {
		return xiaoxi;
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
