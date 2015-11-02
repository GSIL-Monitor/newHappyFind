package happyNew.service;

import java.util.List;

import happyNew.entity.CompetitiveInformation;

public interface CompetitiveInformationServiceI {
	

	public List<CompetitiveInformation> getList(CompetitiveInformation ci);
	public List<CompetitiveInformation> getVerList(CompetitiveInformation ci);
	public void addEntity(CompetitiveInformation ci);
	public void addComInfo(CompetitiveInformation ci);
	public CompetitiveInformation getEntityById(int id);
	public void updateEntity(CompetitiveInformation ci);
	public void deleteEntity(CompetitiveInformation ci);
	public void verCompetitive(CompetitiveInformation ci);
	public void checkNoCompetitive(CompetitiveInformation ci);
	public int getAll(int proId);
}
