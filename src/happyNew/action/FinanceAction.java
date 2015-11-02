package happyNew.action;

import happyNew.entity.Finance;
import happyNew.entity.FindPeopleInformation;
import happyNew.entity.GetRewardInformation;
import happyNew.entity.LoginUser;
import happyNew.service.FinanceServiceI;
import happyNew.service.FindPeopleInformationServiceI;
import happyNew.service.GetRewardInformationServiceI;
import happyNew.service.LoginUserServiceI;
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
@Action(value="financeAction")
@Results(value = {
@Result(name ="index", location = "/index.ftl"),
@Result(name ="fanceinfo", location = "/viewMan/fanceinfo.ftl"),
})
/*
 * 财务模块
 * */
public class FinanceAction {
	private LoginUser user;
	private String pageName;
	private int userId;
	private LoginUserServiceI userService;
	Date dateTime = new Date();
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:MM:ss");
	String dateTimes = df.format(dateTime);
	HttpServletResponse response = ServletActionContext.getResponse(); 
	HttpServletRequest request = ServletActionContext.getRequest(); 
	HttpSession session = request.getSession();
	
	private Finance fin = new Finance();
	private FinanceServiceI financeService;
	
	//领赏
	private GetRewardInformation grf = new GetRewardInformation();
	private GetRewardInformationServiceI getRewardInformationService;
	private int rewardId;
	private FindPeopleInformation fp = new FindPeopleInformation();
	private FindPeopleInformationServiceI FindPeopleInformationService;
	
	
	public String toPage(){
		user = (LoginUser)session.getAttribute("user");
		if(user!=null){
			fin = financeService.getEntityByUserName(user.getUserName());
			if(fin==null){
				fin = new Finance();
			}
		}else{
			pageName = "index";
		}
		return pageName;
	}
	
	//领赏收费功能点
	public void financeReward() throws IOException{
		user = (LoginUser)session.getAttribute("user");
		String sucessType="0";
		response.setCharacterEncoding("UTF-8");
		try{
			grf = getRewardInformationService.getEntityById(rewardId);
			fp = FindPeopleInformationService.getEntityById(grf.getXunrenzizengid());
			//寻人标录入者出账
			double outFinance = Double.parseDouble(grf.getQiwangshangjin());
			fin.setOutFinance(outFinance);
			fin.setUpdateTime(dateTimes);
			fin.setUserName(fp.getModuser());
			fin.setUpdateUser(user.getUserName());
			fin.setFinanceInfo(CommonData.getFinanceKey(CommonData.LINGSHANGOUT));
			financeService.addEntity(fin);
			//算一下总值
			updateTotleFinance(fp.getModuser());
			//领赏录入者入账
			double inFinance = outFinance*(1-CommonData.lingshangprcent);
			fin.setInFinance(inFinance);
			fin.setUpdateTime(dateTimes);
			fin.setUpdateUser(user.getUserName());
			fin.setUserName(grf.getModuser());
			fin.setFinanceInfo(CommonData.getFinanceKey(CommonData.LINGSHANGIN));
			financeService.addEntity(fin);
			//平台入账
			double ptinFinance = outFinance*(CommonData.lingshangprcent);
			fin.setInFinance(ptinFinance);
			fin.setUpdateTime(dateTimes);
			fin.setUpdateUser(user.getUserName());
			fin.setUserName(CommonData.pingtaiUserName);
			fin.setFinanceInfo(CommonData.getFinanceKey(CommonData.PINGTAILINGSHANG));
			financeService.addEntity(fin);
			sucessType="1";
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			response.getWriter().println(sucessType);
		}
	}
	
	public void updateTotleFinance(String userName){
		fin = financeService.getEntityByUserName(user.getUserName());
		if(fin==null){
			fin = new Finance();
			fin.setProFlag("1");
			fin.setUserName(userName);
			financeService.addEntity(fin);
		}
		financeService.updateTotleFinance(userName);
		
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
	@Autowired
	public void setUserService(LoginUserServiceI userService) {
		this.userService = userService;
	}
	public Finance getFin() {
		return fin;
	}
	public void setFin(Finance fin) {
		this.fin = fin;
	}
	public FinanceServiceI getFinanceService() {
		return financeService;
	}
	@Autowired
	public void setFinanceService(FinanceServiceI financeService) {
		this.financeService = financeService;
	}
	public GetRewardInformation getGrf() {
		return grf;
	}

	public void setGrf(GetRewardInformation grf) {
		this.grf = grf;
	}

	public GetRewardInformationServiceI getGetRewardInformationService() {
		return getRewardInformationService;
	}
	@Autowired
	public void setGetRewardInformationService(
			GetRewardInformationServiceI getRewardInformationService) {
		this.getRewardInformationService = getRewardInformationService;
	}
	public int getRewardId() {
		return rewardId;
	}

	public void setRewardId(int rewardId) {
		this.rewardId = rewardId;
	}

	public FindPeopleInformation getFp() {
		return fp;
	}

	public void setFp(FindPeopleInformation fp) {
		this.fp = fp;
	}

	public FindPeopleInformationServiceI getFindPeopleInformationService() {
		return FindPeopleInformationService;
	}
	@Autowired
	public void setFindPeopleInformationService(
			FindPeopleInformationServiceI findPeopleInformationService) {
		FindPeopleInformationService = findPeopleInformationService;
	}
	
}
