package happyNew.service;

import java.util.List;

import happyNew.entity.QualityConfirmInformation;

public interface QualityConfirmInformationServiceI {
	

	public List<QualityConfirmInformation> getList(QualityConfirmInformation qc);
	public void addEntity(QualityConfirmInformation qc);
	public void updateEntity(QualityConfirmInformation qc);
	public QualityConfirmInformation getEntityById(int id);
	public QualityConfirmInformation getEntityByUserId(int userId);
	public void deleteEntity(QualityConfirmInformation qc);
	public void verQualityConfirm(QualityConfirmInformation qc);

}
