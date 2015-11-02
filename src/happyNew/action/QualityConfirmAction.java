package happyNew.action;

import happyNew.entity.QualityConfirmInformation;
import happyNew.service.QualityConfirmInformationServiceI;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

@ParentPackage(value="basePackage")
@Namespace("/")
@Action(value="QualityConfirmAction")
@Results(value = {
@Result(name ="QualityConfirm", location = "/manger/QualityConfirmList.ftl"),
//@Result(name ="QualityConfirm", location = "/view/QualityConfirmList.ftl"),
@Result(name ="addQualityConfirm", location = "/view/addQualityConfirm.ftl"),
@Result(name ="update", location = "/view/updateQualityConfirm.ftl"),
})
public class QualityConfirmAction {
	
	//参数
	private String pageName;
	private String type;
	private int id;
	private QualityConfirmInformation qc = new QualityConfirmInformation();
	private QualityConfirmInformationServiceI QualityConfirmInformationService;
	
	List<QualityConfirmInformation> QualityConfirmlist=new ArrayList<QualityConfirmInformation>();
	//时间参数
	Date dateTime = new Date();
	SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:MM:ss");
	String dateTimes = df.format(dateTime);
	HttpServletResponse response = ServletActionContext.getResponse(); 
	
	
	public String toPageList(){
		qc.setType(type);
		QualityConfirmlist=QualityConfirmInformationService.getList(qc);
		return pageName;
	}
	public String toPage(){
		
		if(pageName.equals("update")){
			qc=QualityConfirmInformationService.getEntityById(id);
		}
		return "addQualityConfirm";
	}
	
	public void addQualityConfirm() throws IOException{
		response.setCharacterEncoding("UTF-8");
		String sucessType="0";
		try {
			qc.setUpdateTime(dateTimes);
			if(qc.getId()==0){
				QualityConfirmInformationService.addEntity(qc);
			}else{
				QualityConfirmInformationService.updateEntity(qc);
			}
			sucessType="1";
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			response.getWriter().println(sucessType);
		}
	}
	
	public void deleteQualityConfirm(){
		qc.setUpdateTime(dateTimes);
		qc.setDeleteFlag("1");
		qc.setId(id);
		QualityConfirmInformationService.deleteEntity(qc);
	}

	
	public String getPageName() {
		return pageName;
	}

	public void setPageName(String pageName) {
		this.pageName = pageName;
	}

	public QualityConfirmInformationServiceI QualityConfirmInformationService() {
		return QualityConfirmInformationService;
	}
	
	@Autowired
	public void setQualityConfirmInformationService(
			QualityConfirmInformationServiceI QualityConfirmInformationService) {
		this.QualityConfirmInformationService = QualityConfirmInformationService;
	}

	public List<QualityConfirmInformation> getQualityConfirmlist() {
		return QualityConfirmlist;
	}

	public void setQualityConfirmlist(List<QualityConfirmInformation> QualityConfirmlist) {
		this.QualityConfirmlist = QualityConfirmlist;
	}

	public QualityConfirmInformation getQc() {
		return qc;
	}

	public void setQc(QualityConfirmInformation qc) {
		this.qc = qc;
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
}
