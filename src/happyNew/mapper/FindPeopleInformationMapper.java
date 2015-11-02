package happyNew.mapper;

import java.util.List;



import org.apache.ibatis.annotations.Param;

import happyNew.entity.FindPeopleInformation;

public interface FindPeopleInformationMapper {
	
	/**
	 * 
	 * @return
	 */
	public List<FindPeopleInformation> getList(@Param(value="fp")FindPeopleInformation fp,@Param("pagestr")int pagestr,@Param("pageNum")int pageNum);
	public int getAllInt(FindPeopleInformation fp);
	public void addEntity(FindPeopleInformation fp);
	public void updateEntity(FindPeopleInformation fp);
	public FindPeopleInformation getEntityById(@Param("id")int id);
	public void deleteEntity(FindPeopleInformation fp);
	public void verFindPeople(FindPeopleInformation fp) ;
	
	
}
