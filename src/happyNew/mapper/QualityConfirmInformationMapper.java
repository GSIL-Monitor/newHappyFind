package happyNew.mapper;

import java.util.List;



import org.apache.ibatis.annotations.Param;

import happyNew.entity.QualityConfirmInformation;

public interface QualityConfirmInformationMapper {
	
	/**
	 * 
	 * @return
	 */
	public List<QualityConfirmInformation> getList(QualityConfirmInformation qc);
	
	public void addEntity(QualityConfirmInformation qc);
	public void updateEntity(QualityConfirmInformation qc);
	public QualityConfirmInformation getEntityById(@Param("id")int id);
	public QualityConfirmInformation getEntityByUserId(@Param("userId")int userId);
	public void deleteEntity(QualityConfirmInformation qc);
	public void verQualityConfirm(QualityConfirmInformation qc) ;
	
	
}
