package happyNew.service;

import java.util.List;

import happyNew.entity.FindPeopleInformation;
import happyNew.entity.GetRewardInformation;

public interface GetRewardInformationServiceI {
	

	public List<GetRewardInformation> getList(GetRewardInformation grf,int pageNum,int PageInt);
	public int getAllInt(GetRewardInformation grf);
	public void addEntity(GetRewardInformation grf);
	public void updateEntity(GetRewardInformation grf);
	public GetRewardInformation getEntityById(int id);
	public void deleteEntity(GetRewardInformation grf);
	public void varGetReward(GetRewardInformation grf);
	public GetRewardInformation getEntity(GetRewardInformation grf);
	
}
