package happyNew.service;

import happyNew.entity.CompetitiveInformation;
import happyNew.mapper.CompetitiveInformationMapper;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service(value="competitiveInformationService")
public class CompetitiveInformationServiceImpl implements CompetitiveInformationServiceI {

	private CompetitiveInformationMapper competitiveInformationMapper;
	
	
	

	public List<CompetitiveInformation> getList(CompetitiveInformation ci) {
		return competitiveInformationMapper.getList(ci);
	}

	public void addEntity(CompetitiveInformation ci) {
		competitiveInformationMapper.addEntity(ci);
	}
	
	public void updateEntity(CompetitiveInformation ci) {
		competitiveInformationMapper.updateEntity(ci);
	}

	public void deleteEntity(CompetitiveInformation ci) {
		competitiveInformationMapper.deleteEntity(ci);
	}

	public void verCompetitive(CompetitiveInformation ci) {
		competitiveInformationMapper.verCompetitive(ci);
		
	}

	public int getAll(int proId) {
		return competitiveInformationMapper.getAll(proId);
	}

	public void checkNoCompetitive(CompetitiveInformation ci) {
		competitiveInformationMapper.checkNoCompetitive(ci);
	}
	
	

	public CompetitiveInformationMapper getCompetitiveInformationMapper() {
		return competitiveInformationMapper;
	}
	
	@Autowired
	public void setCompetitiveInformationMapper(
			CompetitiveInformationMapper competitiveInformationMapper) {
		this.competitiveInformationMapper = competitiveInformationMapper;
	}

	public CompetitiveInformation getEntityById(int id) {
		// TODO Auto-generated method stub
		return competitiveInformationMapper.getEntityById(id);
	}

	public void addComInfo(CompetitiveInformation ci) {
		// TODO Auto-generated method stub
		competitiveInformationMapper.addComInfo(ci);
	}

	public List<CompetitiveInformation> getVerList(CompetitiveInformation ci) {
		// TODO Auto-generated method stub
		return competitiveInformationMapper.getVerList(ci);
	}


}
