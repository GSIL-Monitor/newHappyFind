package happyNew.mapper;

import java.util.List;



import org.apache.ibatis.annotations.Param;

import happyNew.entity.FindPeopleInformation;
import happyNew.entity.GetRewardInformation;

public interface GetRewardInformationMapper {
	
	/**
	 * 
	 * @return
	 */
	public List<GetRewardInformation> getList(@Param("grf")GetRewardInformation grf,@Param("pagestr")int pagestr,@Param("pageNum")int pageNum);
	public int getAllInt(@Param("grf")GetRewardInformation grf);
	public void addEntity(GetRewardInformation grf);
	public void updateEntity(GetRewardInformation grf);
	public GetRewardInformation getEntityById(@Param("id")int id);
	public void deleteEntity(GetRewardInformation grf);
	public void varGetReward(GetRewardInformation grf) ;
	public GetRewardInformation getEntity(GetRewardInformation grf) ;
	
	
}
