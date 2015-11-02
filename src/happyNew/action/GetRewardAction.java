package happyNew.action;

import happyNew.entity.FindPeopleInformation;
import happyNew.entity.GetRewardInformation;
import happyNew.entity.LoginUser;
import happyNew.service.FindPeopleInformationServiceI;
import happyNew.service.GetRewardInformationServiceI;
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
@Action(value="GetRewardAction")
@Results(value = {
@Result(name ="getreward", location = "/manger/GetRewardList.ftl"),
@Result(name ="addgetReward", location = "/view/addGetReward.ftl"),
@Result(name ="myGetRewardList", location = "/viewMan/myGetRewardList.ftl"),
@Result(name ="checkGetReward", location = "/viewMan/checkReward.ftl"),
})
public class GetRewardAction {
	
	//参数
	private String pageName;
	private int getrewardId;
	private int xunrenId;
	private GetRewardInformation grf = new GetRewardInformation();
	private FindPeopleInformation fp = new FindPeopleInformation();
	private FindPeopleInformationServiceI FindPeopleInformationService;
	private GetRewardInformationServiceI getRewardInformationService;
	//数据列表
	List<GetRewardInformation> getrewardlist=new ArrayList<GetRewardInformation>();
	//时间参数
	Date dateTime = new Date();
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:MM:ss");
	String dateTimes = df.format(dateTime);
	
	//用户
	private LoginUser user;
	HttpServletRequest request = ServletActionContext.getRequest(); 
	HttpServletResponse response = ServletActionContext.getResponse(); 
	HttpSession session = request.getSession();  
	
	//分页参数
	private int pageNum=10;
	private int pageInt=1;
	private int pageAll=1;
	
	
	
	public String toPageList(){
		user = (LoginUser)session.getAttribute("user");
		if(StrTools.isNotNull(pageName) && pageName.equals("myGetRewardList")){
			if(user!=null){
				grf.setModuser(user.getUserName());
			}else{
				pageName = "index";
			}
		}else if (StrTools.isNotNull(pageName) && pageName.equals("checkGetReward")){
			grf.setXunrenzizengid(xunrenId);
		}
		getrewardlist=getRewardInformationService.getList(grf,getEntStr(),pageNum);
		System.out.print(getrewardlist.size());
		return pageName;
	}
	public String toPage(){
		if(pageName.equals("update")){
			grf=getRewardInformationService.getEntityById(getrewardId);
		}
		return pageName;
	}
	public void addGetReward(){
		user = (LoginUser)session.getAttribute("user");
		response.setCharacterEncoding("UTF-8");
		String sucessType="0";
		try {
			if(grf.getId()!=0){
				grf.setUpdateTime(dateTimes);
				getRewardInformationService.updateEntity(grf);
				sucessType="1";
			}else{
				fp = FindPeopleInformationService.getEntityById(grf.getXunrenzizengid());
				if(fp.getProFlag().equals(CommonData.SHENHETONGGUO)){	
					grf.setModtime(dateTimes);
					grf.setModuser(user.getUserName());
					grf.setProFlag(CommonData.LINGSHENG);
					grf.setUpdateTime(dateTimes);
					if(grf.getId()==0){
						getRewardInformationService.addEntity(grf);
					}
					sucessType="1";
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				response.getWriter().println(sucessType);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	
	public void checkJingbiao() throws IOException{
		String sucessType="0";
		response.setCharacterEncoding("UTF-8");
		try{
			grf.setProFlag(CommonData.LINGSHENGZHONGBIAO);
			grf.setId(getrewardId);
			getRewardInformationService.varGetReward(grf);
			sucessType="1";
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			response.getWriter().println(sucessType);
		}
	}
	
	public void deleteGetReward(){
		grf.setUpdateTime(dateTimes);
		grf.setDeleteFlag("1");
		grf.setId(getrewardId);
		getRewardInformationService.deleteEntity(grf);
	}
	
	
	public int getEntStr(){
		int entStr=0;
		entStr=(pageInt-1)*pageNum;
		return entStr;
	}
	
	public int getAllPage(){
		int allInt=0;//条数
		allInt=getRewardInformationService.getAllInt(grf);
		double allIntd = allInt;
		double pageNumd = pageNum;
		int allPage=(int)Math.ceil(allIntd/pageNumd);
		return allPage;
	}

	public String getPageName() {
		return pageName;
	}

	public void setPageName(String pageName) {
		this.pageName = pageName;
	}



	public int getGetrewardId() {
		return getrewardId;
	}
	public void setGetrewardId(int getrewardId) {
		this.getrewardId = getrewardId;
	}
	public GetRewardInformationServiceI getGetRewardInformationService() {
		return getRewardInformationService;
	}
	@Autowired
	public void setGetRewardInformationService(
			GetRewardInformationServiceI getRewardInformationService) {
		this.getRewardInformationService = getRewardInformationService;
	}
	public List<GetRewardInformation> getRewardlist() {
		return getrewardlist;
	}

	public void setGetRewardlist(List<GetRewardInformation> getrewardlist) {
		this.getrewardlist = getrewardlist;
	}


	public GetRewardInformation getGrf() {
		return grf;
	}
	public void setGrf(GetRewardInformation grf) {
		this.grf = grf;
	}

	public List<GetRewardInformation> getGetrewardlist() {
		return getrewardlist;
	}
	public void setGetrewardlist(List<GetRewardInformation> getrewardlist) {
		this.getrewardlist = getrewardlist;
	}
	public int getXunrenId() {
		return xunrenId;
	}
	public void setXunrenId(int xunrenId) {
		this.xunrenId = xunrenId;
	}
	public LoginUser getUser() {
		return user;
	}
	public void setUser(LoginUser user) {
		this.user = user;
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
