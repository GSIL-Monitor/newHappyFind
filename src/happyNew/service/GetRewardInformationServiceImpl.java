package happyNew.service;

import happyNew.entity.FindPeopleInformation;
import happyNew.entity.GetRewardInformation;
import happyNew.mapper.GetRewardInformationMapper;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service(value="getrewardInformationService")
public class GetRewardInformationServiceImpl implements GetRewardInformationServiceI {

	private GetRewardInformationMapper GetRewardInformationMapper;
	
	@Autowired
	public void setRewardMapper(GetRewardInformationMapper GetRewardInformationMapper) {
		this.GetRewardInformationMapper = GetRewardInformationMapper;
	}
	
	
	public GetRewardInformationMapper getCotentyingkuiMapper() {
		return GetRewardInformationMapper;
	}


	public List<GetRewardInformation> getList(GetRewardInformation grf,int pageNum,int PageInt) {
		return GetRewardInformationMapper.getList(grf,pageNum,PageInt);
	}


	public void addEntity(GetRewardInformation grf) {
		GetRewardInformationMapper.addEntity(grf);
		
	}
	
	public void updateEntity(GetRewardInformation grf) {
		GetRewardInformationMapper.updateEntity(grf);
		
	}


	public GetRewardInformation getEntityById(int id) {
		// TODO Auto-generated method stub
		return GetRewardInformationMapper.getEntityById(id);
	}


	public void deleteEntity(GetRewardInformation grf) {
		// TODO Auto-generated method stub
		GetRewardInformationMapper.deleteEntity(grf);
	}

	public int getAllInt(GetRewardInformation grf) {
		return GetRewardInformationMapper.getAllInt(grf);
	}
	
	public void varGetReward(GetRewardInformation grf) {
		GetRewardInformationMapper.varGetReward(grf);
		
	}
	public GetRewardInformation getEntity(GetRewardInformation grf) {
		return GetRewardInformationMapper.getEntity(grf);
		
	}
	

}
