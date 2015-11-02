package happyfind.action;

import happyNew.entity.CompetitiveInformation;
import happyNew.entity.FindPeopleInformation;
import happyNew.service.CompetitiveInformationServiceI;
import happyNew.service.FindPeopleInformationServiceI;

import happyNew.entity.RightDebtInformation;
import happyNew.service.RightDebtInformationServiceI;

import happyNew.entity.GetRewardInformation;
import happyNew.service.GetRewardInformationServiceI;

import happyNew.entity.QualityConfirmInformation;
import happyNew.service.QualityConfirmInformationServiceI;

import happyfind.entity.BorrowInformation;
import happyfind.entity.SystemLog;
import happyfind.service.BorrowInformationServiceI;
import happyfind.service.SystemLogServiceI;
import happyfind.utils.CommonData;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

@ParentPackage(value="basePackage")
@Namespace("/")
@Action(value="mangerAction")
@Results(value = {
@Result(name ="borrow", location = "/manger/borrowInfoList.ftl"),
@Result(name ="update", location = "/manger/addBorrow.ftl"),
@Result(name ="addBorrow", location = "/manger/addBorrow.ftl"),
@Result(name ="main", location = "/manger/indexManage.ftl"),
@Result(name ="shenheFindPeople", location = "/manger/shenheFindPeople.ftl"),
@Result(name ="shenheGetReward", location = "/manger/shenheGetReward.ftl"),
@Result(name ="shenheRightDebt", location = "/manger/shenheRightDebt.ftl"),
@Result(name ="shenheQualityConfirm", location = "/manger/shenheQualityConfirm.ftl"),
@Result(name ="shenheComInfo", location = "/manger/shenheComInfo.ftl"),


})
public class MangerAction {
	
	//参数
	private String pageName;
	private int borrowId;
	private BorrowInformation bf = new BorrowInformation();
	private BorrowInformationServiceI borrowInformationService;
	
	private int id;
	private FindPeopleInformation fp = new FindPeopleInformation();
	private FindPeopleInformationServiceI findPeopleInformationService;
	
	private GetRewardInformation grf = new GetRewardInformation();
	private GetRewardInformationServiceI getRewardInformationService;
	
	private RightDebtInformation rd = new RightDebtInformation();
	private RightDebtInformationServiceI rightDebtInformationService;
	
	private QualityConfirmInformation qc = new QualityConfirmInformation();
	private QualityConfirmInformationServiceI qualityConfirmInformationService;
	
	private CompetitiveInformation ci = new CompetitiveInformation();
	private CompetitiveInformationServiceI competitiveInformationService;
	
	private SystemLog log = new SystemLog();
	private SystemLogServiceI systemLogService;
	
	//数据列表
	List<BorrowInformation> borrowlist=new ArrayList<BorrowInformation>();
	//时间参数
	Date dateTime = new Date();
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:MM:ss");
	String dateTimes = df.format(dateTime);
	
	public String toPageList(){
		borrowlist=borrowInformationService.getList(bf);
		return pageName;
	}
	public String toPage(){
		if(pageName.equals("update")){
			bf=borrowInformationService.getEntityById(borrowId);
		}
		else if(pageName.equals("shenheFindPeople")){
			fp=findPeopleInformationService.getEntityById(id);
		}
		else if(pageName.equals("shenheGetReward")){
			grf=getRewardInformationService.getEntityById(id);
		}
		else if(pageName.equals("shenheRightDebt")){
			rd=rightDebtInformationService.getEntityById(id);
		}
		else if(pageName.equals("shenheQualityConfirm")){
			qc=qualityConfirmInformationService.getEntityById(id);
		}
		else if(pageName.equals("shenheComInfo")){
			ci=competitiveInformationService.getEntityById(id);
		}
		return pageName;
	}
	
	public String addBorrow(){
		bf.setUpdateTime(dateTimes);
		if(bf.getId()==0){
			borrowInformationService.addEntity(bf);
			systemLogService.addEntity(log);
		}else{
			borrowInformationService.updateEntity(bf);
		}
		return pageName;
	}
	
	
	public void verFindPeople() throws IOException{
		findPeopleInformationService.verFindPeople(fp);
	}
	
	public void varGetReward() throws IOException{
		getRewardInformationService.varGetReward(grf);
		fp.setProFlag(CommonData.XUNRENMANBIAO);
		fp.setId(grf.getXunrenzizengid());
		findPeopleInformationService.verFindPeople(fp);
	}
	public void varRightDebt() throws IOException{
		rightDebtInformationService.verRightDebt(rd);
	}
	public void varQualityConfirm() throws IOException{
		qualityConfirmInformationService.verQualityConfirm(qc);
	}
	
	public void varComInfo() throws IOException{
		competitiveInformationService.verCompetitive(ci);
	}
	

	public void deleteBorrow(){
		bf.setUpdateTime(dateTimes);
		bf.setDeleteFlag(1);
		bf.setId(borrowId);
		borrowInformationService.deleteEntity(bf);
	}

	public String getPageName() {
		return pageName;
	}

	public void setPageName(String pageName) {
		this.pageName = pageName;
	}

	public BorrowInformationServiceI getBorrowInformationService() {
		return borrowInformationService;
	}
	
	@Autowired
	public void setBorrowInformationService(
			BorrowInformationServiceI borrowInformationService) {
		this.borrowInformationService = borrowInformationService;
	}

	public List<BorrowInformation> getBorrowlist() {
		return borrowlist;
	}

	public void setBorrowlist(List<BorrowInformation> borrowlist) {
		this.borrowlist = borrowlist;
	}

	public BorrowInformation getBf() {
		return bf;
	}

	public void setBf(BorrowInformation bf) {
		this.bf = bf;
	}
	public int getBorrowId() {
		return borrowId;
	}
	public void setBorrowId(int borrowId) {
		this.borrowId = borrowId;
	}
	public SystemLog getLog() {
		return log;
	}
	public void setLog(SystemLog log) {
		this.log = log;
	}
	public SystemLogServiceI getSystemLogService() {
		return systemLogService;
	}
	public void setSystemLogService(SystemLogServiceI systemLogService) {
		this.systemLogService = systemLogService;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public FindPeopleInformation getFp() {
		return fp;
	}
	public void setFp(FindPeopleInformation fp) {
		this.fp = fp;
	}
	public FindPeopleInformationServiceI getFindPeopleInformationService() {
		return findPeopleInformationService;
	}
	@Autowired
	public void setFindPeopleInformationService(
			FindPeopleInformationServiceI findPeopleInformationService) {
		this.findPeopleInformationService = findPeopleInformationService;
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
	@Autowired
	public void setQualityConfirmInformationService(
			QualityConfirmInformationServiceI qualityConfirmInformationService) {
		this.qualityConfirmInformationService = qualityConfirmInformationService;
	}
	
	public QualityConfirmInformation getQc() {
		return qc;
	}
	public void setQc(QualityConfirmInformation qc) {
		this.qc = qc;
	}
	public QualityConfirmInformationServiceI qualityConfirmInformationService() {
		return qualityConfirmInformationService;
	}
	@Autowired
	public void setRightDebtInformationService(
			RightDebtInformationServiceI rightDebtInformationService) {
		this.rightDebtInformationService = rightDebtInformationService;
	}
	
	public RightDebtInformation getRd() {
		return rd;
	}
	public void setRd(RightDebtInformation rd) {
		this.rd = rd;
	}
	public RightDebtInformationServiceI rightDebtInformationService() {
		return rightDebtInformationService;
	}
	public CompetitiveInformation getCi() {
		return ci;
	}
	public void setCi(CompetitiveInformation ci) {
		this.ci = ci;
	}
	public CompetitiveInformationServiceI getCompetitiveInformationService() {
		return competitiveInformationService;
	}
	@Autowired
	public void setCompetitiveInformationService(
			CompetitiveInformationServiceI competitiveInformationService) {
		this.competitiveInformationService = competitiveInformationService;
	}
	
	
	
}
