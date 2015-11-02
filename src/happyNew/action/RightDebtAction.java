package happyNew.action;

import happyNew.entity.CompetitiveInformation;
import happyNew.entity.LoginUser;
import happyNew.entity.RightDebtInformation;
import happyfind.entity.SystemLog;
import happyNew.service.CompetitiveInformationServiceI;
import happyNew.service.RightDebtInformationServiceI;
import happyfind.service.SystemLogServiceI;
import happyfind.utils.CommonData;
import happyfind.utils.*;

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
@Action(value="RightDebtAction")
@Results(value = {
@Result(name ="RightDebt", location = "/manger/RightDebtList.ftl"),
@Result(name ="addRightDebt", location = "/viewMan/addRightDebt.ftl"),
@Result(name ="update", location = "/view/updateRightDebt.ftl"),
@Result(name ="jlist", location = "/view/jlist.ftl"),
@Result(name ="dlist", location = "/view/dlist.ftl"),
@Result(name ="diteminfolist", location = "/view/diteminfolist.ftl"),
@Result(name ="jiteminfolist", location = "/view/jiteminfolist.ftl"),
@Result(name ="mypro", location = "/viewMan/myProList.ftl"),
@Result(name ="index", location = "/index.ftl"),
@Result(name ="myproInfo", location = "/view/proInfo.ftl"),
@Result(name ="bid", location = "/viewMan/bid.ftl"),
@Result(name ="myCompetitiveLista", location = "/viewMan/myCompetitiveList.ftl"),
@Result(name ="checkComList", location = "/viewMan/checkComList.ftl"),
@Result(name ="updateComInfo", location = "/viewMan/comInfo.ftl"),
@Result(name ="toVerPageList", location = "/manger/ComInfoList.ftl"),

})
public class RightDebtAction {
	//参数
	private String pageName;
	private int id;
	private String type;
	private String userId;
	
	//分页参数
	private int pageNum=10;
	private int pageInt=1;
	private int pageAll=1;
	//时间参数
	Date dateTime = new Date();
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:MM:ss");
	String dateTimes = df.format(dateTime);
	
	private RightDebtInformation rd = new RightDebtInformation();
	private RightDebtInformationServiceI RightDebtInformationService;
	
	//数据列表
	List<RightDebtInformation> RightDebtlist=new ArrayList<RightDebtInformation>();
	List<CompetitiveInformation> CompetitiveList=new ArrayList<CompetitiveInformation>();
	
	//用户
	private LoginUser user;
	HttpServletResponse response = ServletActionContext.getResponse(); 
	HttpServletRequest request = ServletActionContext.getRequest(); 
	HttpSession session = request.getSession(); 
	
	//竞标抢标相关
	private CompetitiveInformation ci = new CompetitiveInformation();
	private CompetitiveInformationServiceI competitiveInformationService;

	public String toPageList(){
		user = (LoginUser)session.getAttribute("user");
		if(StrTools.isNotNull(pageName) && pageName.equals("mypro")){
			if(user!=null){
				rd.setModuser(user.getUserName());
			}else{
				pageName = "index";
			}
		}else if(StrTools.isNotNull(pageName) && pageName.equals("diteminfolist")){
			pageNum = 3;
			rd.setProType(CommonData.SHENHETONGGUO);
			rd.setType("1"); //竞价标
		}else if(StrTools.isNotNull(pageName) && pageName.equals("jiteminfolist")){
			pageNum = 3;
			rd.setProType(CommonData.SHENHETONGGUO);
			rd.setType("2"); //竞价标
		}
		RightDebtlist=RightDebtInformationService.getList(rd,getEntStr(),pageNum);
		return pageName;
	}
	public String toViewPageList(){
		if(StrTools.isNotNull(pageName) && pageName.equals("dlist")){
			rd.setProType(CommonData.SHENHETONGGUO);
			rd.setType("1"); //定价标
		}else if(StrTools.isNotNull(pageName) && pageName.equals("jlist")){
			rd.setProType(CommonData.SHENHETONGGUO);
			rd.setType("2"); //竞价标
		}
		RightDebtlist=RightDebtInformationService.getViewList(rd,getEntStr(),pageNum);
		return pageName;
	}
	
	//审核需要
	public String toVerPageList(){
		if(StrTools.isNotNull(pageName) && pageName.equals("RightDebt")){
			rd.setProType(CommonData.TIJIAOSHENHE);
			rd.setType(type);
		}else if(StrTools.isNotNull(pageName) && pageName.equals("RightDebtlist")){
			rd.setType(type);
			pageName="RightDebt";
		}
		RightDebtlist=RightDebtInformationService.getVerList(rd,getEntStr(),pageNum);
		return pageName;
	}
	
	public int getEntStr(){
		int entStr=0;
		entStr=(pageInt-1)*pageNum;
		return entStr;
	}
	
	public int getAllPage(){
		int allInt=0;//条数
		allInt=RightDebtInformationService.getAllInt(rd);
		double allIntd = allInt;
		double pageNumd = pageNum;
		int allPage=(int)Math.ceil(allIntd/pageNumd);
		return allPage;
	}
	
	public String toPage(){
		if(id!=0){
			rd=RightDebtInformationService.getEntityById(id);
		}
		if(StrTools.isNotNull(pageName) && pageName.equals("myproInfo")){
			user = (LoginUser)session.getAttribute("user");
			ci.setModuser(user!=null?user.getUserName():"");
			ci.setProId(id);
			if(competitiveInformationService.getList(ci).size()>0){
				ci = competitiveInformationService.getList(ci).get(0);
			}
			
		}else if(StrTools.isNotNull(pageName) && pageName.equals("updateComInfo")){
			ci = competitiveInformationService.getEntityById(Integer.parseInt(userId));
		}
		return pageName;
	}
	
	
	public void addRightDebt() throws IOException{
		response.setCharacterEncoding("UTF-8");
		String sucessType="0";
		try {
			rd.setUpdateTime(dateTimes);
			if(rd.getId()==0){
				RightDebtInformationService.addEntity(rd);
			}else{
				RightDebtInformationService.updateEntity(rd);
			}
			sucessType="1";
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			response.getWriter().println(sucessType);
		}
	}
	
	public void addCompetitive() throws IOException{
		response.setCharacterEncoding("UTF-8");
		String sucessType="0";
		try {
			int allCom = competitiveInformationService.getAll(ci.getProId());
			rd = RightDebtInformationService.getEntityById(ci.getProId());
			if(allCom>=3){
				sucessType="2";
			}else if(rd.getProType().equals(CommonData.SHENHETONGGUO)){
				ci.setModtime(dateTimes);
				ci.setProFlag(CommonData.QIANGBIAO);
				if(ci.getId()==0){
					competitiveInformationService.addEntity(ci);
					if(allCom+1>=3){
						rd.setProType(CommonData.MANBIAO);
						RightDebtInformationService.updateEntity(rd);
					}
				}else{
					competitiveInformationService.updateEntity(ci);
				}
				sucessType="1";
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			response.getWriter().println(sucessType);
		}
	}
	
	//
	public void addComInfo() throws IOException{
		response.setCharacterEncoding("UTF-8");
		String sucessType="0";
		user = (LoginUser)session.getAttribute("user");
		if(user!=null){
			try {
				competitiveInformationService.addComInfo(ci);
				sucessType="1";
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				response.getWriter().println(sucessType);
			}
		}else{
			response.getWriter().println(sucessType);
		}
	}
	
	public String getCompeList(){
		user = (LoginUser)session.getAttribute("user");
		if(user!=null){
			if(StrTools.isNotNull(pageName) && pageName.equals("myCompetitiveLista")){
				ci.setModuser(user.getUserName());
				CompetitiveList = competitiveInformationService.getList(ci);
			}
			//选择中标者
			else if(StrTools.isNotNull(pageName) && pageName.equals("checkComList")){
				ci.setProId(id);
				CompetitiveList = competitiveInformationService.getList(ci);
			}else if(StrTools.isNotNull(pageName) && pageName.equals("toVerPageList")){
				ci.setProFlag(CommonData.TIJIAOCUISHOU);
				CompetitiveList = competitiveInformationService.getList(ci);
			}
		}else{
			pageName="index";
		}
		return pageName;
	}
	
	
	public void checkJingbiao() throws IOException{
		String sucessType="0";
		response.setCharacterEncoding("UTF-8");
		try{
			rd.setProType(CommonData.ZHONGBIAO);
			rd.setId(id);
			RightDebtInformationService.verRightDebt(rd);
			ci.setProFlag(CommonData.QIANGZHONGBIAO);
			ci.setId(Integer.parseInt(userId));
			competitiveInformationService.verCompetitive(ci);
			//对胃竞标成功的人员设置状态
			ci.setProFlag(CommonData.QIANGWEIZHONGBIAO);
			ci.setId(Integer.parseInt(userId));
			ci.setProId(id);
			competitiveInformationService.checkNoCompetitive(ci);
			sucessType="1";
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			response.getWriter().println(sucessType);
		}
	}
	
	
	public void deleteRightDebt(){
		rd.setUpdateTime(dateTimes);
		rd.setDeleteFlag("1");
		rd.setId(id);
		RightDebtInformationService.deleteEntity(rd);
	}

	
	public String getPageName() {
		return pageName;
	}

	public void setPageName(String pageName) {
		this.pageName = pageName;
	}

	public RightDebtInformationServiceI RightDebtInformationService() {
		return RightDebtInformationService;
	}
	
	@Autowired
	public void setRightDebtInformationService(
			RightDebtInformationServiceI RightDebtInformationService) {
		this.RightDebtInformationService = RightDebtInformationService;
	}

	public List<RightDebtInformation> getRightDebtlist() {
		return RightDebtlist;
	}

	public void setRightDebtlist(List<RightDebtInformation> RightDebtlist) {
		this.RightDebtlist = RightDebtlist;
	}

	
	public RightDebtInformation getRd() {
		return rd;
	}

	public void setRd(RightDebtInformation rd) {
		this.rd = rd;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public LoginUser getUser() {
		return user;
	}

	public void setUser(LoginUser user) {
		this.user = user;
	}
	
	
	public CompetitiveInformationServiceI getCompetitiveInformationService() {
		return competitiveInformationService;
	}
	@Autowired
	public void setCompetitiveInformationService(
			CompetitiveInformationServiceI competitiveInformationService) {
		this.competitiveInformationService = competitiveInformationService;
	}

	public CompetitiveInformation getCi() {
		return ci;
	}

	public void setCi(CompetitiveInformation ci) {
		this.ci = ci;
	}


	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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

	public void setCompetitiveList(List<CompetitiveInformation> competitiveList) {
		CompetitiveList = competitiveList;
	}
	
	public List<CompetitiveInformation> getCompetitiveList() {
		return CompetitiveList;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	
}
