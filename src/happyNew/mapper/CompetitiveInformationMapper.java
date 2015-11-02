package happyNew.mapper;

import java.util.List;



import org.apache.ibatis.annotations.Param;

import happyNew.entity.CompetitiveInformation;

public interface CompetitiveInformationMapper {
	
	/**
	 * 
	 * @return
	 */
	public List<CompetitiveInformation> getList(CompetitiveInformation ci);
	public List<CompetitiveInformation> getVerList(CompetitiveInformation ci);
	public void addEntity(CompetitiveInformation fp);
	public void addComInfo(CompetitiveInformation fp);
	public void updateEntity(CompetitiveInformation fp);
	public void deleteEntity(CompetitiveInformation fp);
	public void verCompetitive(CompetitiveInformation ci);
	public void checkNoCompetitive(CompetitiveInformation ci);
	public int getAll(@Param(value="proId")int proId);
	public CompetitiveInformation getEntityById(@Param(value="id")int id);
	
	
}
