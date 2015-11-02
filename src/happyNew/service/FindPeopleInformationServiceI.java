package happyNew.service;

import java.util.List;

import happyNew.entity.FindPeopleInformation;

public interface FindPeopleInformationServiceI {
	

	public List<FindPeopleInformation> getList(FindPeopleInformation fp,int pageNum,int PageInt);
	public int getAllInt(FindPeopleInformation fp);
	public void addEntity(FindPeopleInformation fp);
	public void updateEntity(FindPeopleInformation fp);
	public FindPeopleInformation getEntityById(int id);
	public void deleteEntity(FindPeopleInformation fp);
	public void verFindPeople(FindPeopleInformation fp);
	

}
