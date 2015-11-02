package happyNew.service;

import happyNew.entity.QualityConfirmInformation;
import happyNew.mapper.QualityConfirmInformationMapper;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service(value="qualityConfirmInformationService")
public class QualityConfirmInformationServiceImpl implements QualityConfirmInformationServiceI {

	private QualityConfirmInformationMapper QualityConfirmInformationMapper;
	
	@Autowired
	public void setQualityConfirmMapper(QualityConfirmInformationMapper QualityConfirmInformationMapper) {
		this.QualityConfirmInformationMapper = QualityConfirmInformationMapper;
	}
	
	
	public QualityConfirmInformationMapper getCotentyingkuiMapper() {
		return QualityConfirmInformationMapper;
	}


	public List<QualityConfirmInformation> getList(QualityConfirmInformation qc) {
		return QualityConfirmInformationMapper.getList(qc);
	}


	public void addEntity(QualityConfirmInformation qc) {
		QualityConfirmInformationMapper.addEntity(qc);
		
	}
	
	public void updateEntity(QualityConfirmInformation qc) {
		QualityConfirmInformationMapper.updateEntity(qc);
		
	}


	public QualityConfirmInformation getEntityById(int id) {
		return QualityConfirmInformationMapper.getEntityById(id);
	}


	public void deleteEntity(QualityConfirmInformation qc) {
		QualityConfirmInformationMapper.deleteEntity(qc);
	}


	public QualityConfirmInformation getEntityByUserId(int userId) {
		// TODO Auto-generated method stub
		return QualityConfirmInformationMapper.getEntityByUserId(userId);
	}


	public void verQualityConfirm(QualityConfirmInformation qc) {
		QualityConfirmInformationMapper.verQualityConfirm(qc);
	}


}
