package happyNew.action;

import happyNew.entity.FindPeopleInformation;
import happyNew.entity.GetRewardInformation;
import happyNew.entity.LoginUser;
import happyNew.service.FindPeopleInformationServiceImpl;
import happyNew.service.FindPeopleInformationServiceI;
import happyNew.service.GetRewardInformationServiceI;
import happyfind.service.SystemLogServiceI;
import happyfind.utils.CommonData;
import happyfind.utils.StrTools;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
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
@Action(value="findPeopleAction")
@Results(value = {
@Result(name ="list", location = "/view/xlist.ftl"),
@Result(name ="xiteminfolist", location = "/view/xiteminfolist.ftl"),
@Result(name ="xrMan", location = "/manger/FindPeopleList.ftl"),
@Result(name ="upload", location = "/viewMan/upload.ftl"),
@Result(name ="myXunrenList", location = "/viewMan/myXunrenList.ftl"),
@Result(name ="xunren", location = "/viewMan/xunren.ftl"),
@Result(name ="xunrenInfo", location = "/view/xunrenInfo.ftl"),
@Result(name ="FindPeople", location = "/manger/FindPeopleList.ftl"),
@Result(name ="index", location = "/index.ftl"),

})
public class FindPeopleAction {
	
	//参数
	private String pageName;
	private int id;
	private FindPeopleInformation fp = new FindPeopleInformation();
	private FindPeopleInformationServiceI FindPeopleInformationService;
	
	private GetRewardInformation grf = new GetRewardInformation();
	private GetRewardInformationServiceI getRewardInformationService;
	
	//数据列表
	List<FindPeopleInformation> FindPeoplelist=new ArrayList<FindPeopleInformation>();
	
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
		if(StrTools.isNotNull(pageName) && pageName.equals("xrMan")){
			fp.setProFlag(CommonData.TIJIAOSHENHE);
		}else if(StrTools.isNotNull(pageName) && pageName.equals("list")){
			fp.setProFlag("V"+CommonData.SHENHETONGGUO);
		}else if(StrTools.isNotNull(pageName) && pageName.equals("xiteminfolist")){
			fp.setProFlag(CommonData.SHENHETONGGUO);
			pageNum=3;
		}else if(StrTools.isNotNull(pageName) && pageName.equals("myXunrenList")){
			if(user!=null){
				fp.setModuser(user.getUserName());
			}else{
				pageName = "index";
			}
		}
		System.out.print("pageName=="+pageName);
		FindPeoplelist=FindPeopleInformationService.getList(fp,getEntStr(),pageNum);
		return pageName;
	}
	
	
	public String toPage(){
		if(id!=0){
			fp=FindPeopleInformationService.getEntityById(id);
		}
		if(StrTools.isNotNull(pageName) && pageName.equals("xunrenInfo")){
			user = (LoginUser)session.getAttribute("user");
			if(user!=null){
				grf.setModuser(user.getUserName());
				grf.setXunrenzizengid(id);
				grf = getRewardInformationService.getEntity(grf);
				if(grf==null){
					grf = new GetRewardInformation();
				}
			}else{
				pageName = "index";
			}
		}
		return pageName;
	}
	
	public void addFindPeople() throws IOException{
		response.setCharacterEncoding("UTF-8");
		String sucessType="0";
		try {
			fp.setUpdateTime(dateTimes);
			if(fp.getId()==0){
				FindPeopleInformationService.addEntity(fp);
			}else{
				FindPeopleInformationService.updateEntity(fp);
			}
			sucessType="1";
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			response.getWriter().println(sucessType);
		}
	}
	
	public void deleteFindPeople(){
		fp.setUpdateTime(dateTimes);
		fp.setDeleteFlag("1");
		fp.setId(id);
		FindPeopleInformationService.deleteEntity(fp);
	}

	public int getEntStr(){
		int entStr=0;
		entStr=(pageInt-1)*pageNum;
		return entStr;
	}
	
	public int getAllPage(){
		int allInt=0;//条数
		allInt=FindPeopleInformationService.getAllInt(fp);
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

	public FindPeopleInformationServiceI FindPeopleInformationService() {
		return FindPeopleInformationService;
	}
	
	@Autowired
	public void setFindPeopleInformationService(
			FindPeopleInformationServiceI FindPeopleInformationService) {
		this.FindPeopleInformationService = FindPeopleInformationService;
	}

	public List<FindPeopleInformation> getFindPeoplelist() {
		return FindPeoplelist;
	}

	public void setFindPeoplelist(List<FindPeopleInformation> FindPeoplelist) {
		this.FindPeoplelist = FindPeoplelist;
	}

	public FindPeopleInformation getFp() {
		return fp;
	}

	public void setFp(FindPeopleInformation fp) {
		this.fp = fp;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public FindPeopleInformationServiceI getFindPeopleInformationService() {
		return FindPeopleInformationService;
	}


	public int getPageNum() {
		return pageNum;
	}


	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}


	public int getPageInt() {
		return pageInt;
	}


	public void setPageInt(int pageInt) {
		this.pageInt = pageInt;
	}


	public int getPageAll() {
		return pageAll;
	}


	public void setPageAll(int pageAll) {
		this.pageAll = getAllPage();
	}


	public GetRewardInformation getGrf() {
		return grf;
	}


	public void setGrf(GetRewardInformation grf) {
		this.grf = grf;
	}


	public LoginUser getUser() {
		return user;
	}


	public void setUser(LoginUser user) {
		this.user = user;
	}


	public GetRewardInformationServiceI getGetRewardInformationService() {
		return getRewardInformationService;
	}

	@Autowired
	public void setGetRewardInformationService(
			GetRewardInformationServiceI getRewardInformationService) {
		this.getRewardInformationService = getRewardInformationService;
	}
	
	
	
}
