package happyNew.service;

import happyNew.entity.FindPeopleInformation;
import happyNew.mapper.FindPeopleInformationMapper;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service(value="FindPeopleInformationService")
public class FindPeopleInformationServiceImpl implements FindPeopleInformationServiceI {

	private FindPeopleInformationMapper FindPeopleInformationMapper;
	
	@Autowired
	public void setFindPeopleMapper(FindPeopleInformationMapper FindPeopleInformationMapper) {
		this.FindPeopleInformationMapper = FindPeopleInformationMapper;
	}
	
	
	public FindPeopleInformationMapper getCotentyingkuiMapper() {
		return FindPeopleInformationMapper;
	}


	public List<FindPeopleInformation> getList(FindPeopleInformation fp,int pageNum,int pageInt) {
		return FindPeopleInformationMapper.getList(fp,pageNum,pageInt);
	}


	public void addEntity(FindPeopleInformation fp) {
		FindPeopleInformationMapper.addEntity(fp);
		
	}
	
	public void updateEntity(FindPeopleInformation fp) {
		FindPeopleInformationMapper.updateEntity(fp);
		
	}


	public FindPeopleInformation getEntityById(int id) {
		// TODO Auto-generated method stub
		return FindPeopleInformationMapper.getEntityById(id);
	}


	public void deleteEntity(FindPeopleInformation fp) {
		// TODO Auto-generated method stub
		FindPeopleInformationMapper.deleteEntity(fp);
	}


	public int getAllInt(FindPeopleInformation fp) {
		return FindPeopleInformationMapper.getAllInt(fp);
	}

	public void verFindPeople(FindPeopleInformation fp) {
		FindPeopleInformationMapper.verFindPeople(fp);
		
	}

}
