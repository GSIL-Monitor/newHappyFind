package happyNew.service;

import happyNew.entity.FindPeopleInformation;
import happyNew.entity.RightDebtInformation;
import happyNew.mapper.RightDebtInformationMapper;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service(value="RightDebtInformationService")
public class RightDebtInformationServiceImpl implements RightDebtInformationServiceI {

	private RightDebtInformationMapper RightDebtInformationMapper;
	
	@Autowired
	public void setRightDebtMapper(RightDebtInformationMapper RightDebtInformationMapper) {
		this.RightDebtInformationMapper = RightDebtInformationMapper;
	}
	
	
	public RightDebtInformationMapper getCotentyingkuiMapper() {
		return RightDebtInformationMapper;
	}


	public void addEntity(RightDebtInformation rd) {
		RightDebtInformationMapper.addEntity(rd);
		
	}
	
	public void updateEntity(RightDebtInformation rd) {
		RightDebtInformationMapper.updateEntity(rd);
		
	}


	public RightDebtInformation getEntityById(int id) {
		// TODO Auto-generated method stub
		return RightDebtInformationMapper.getEntityById(id);
	}


	public void deleteEntity(RightDebtInformation rd) {
		// TODO Auto-generated method stub
		RightDebtInformationMapper.deleteEntity(rd);
	}


	public int getAllInt(RightDebtInformation rd) {
		// TODO Auto-generated method stub
		return RightDebtInformationMapper.getAllInt(rd);
	}


	public List<RightDebtInformation> getList(RightDebtInformation rd,
			int getEntStr, int pageNum) {
		// TODO Auto-generated method stub
		return RightDebtInformationMapper.getList(rd,getEntStr,pageNum);
	}
	
	public List<RightDebtInformation> getVerList(RightDebtInformation rd,
			int getEntStr, int pageNum) {
		// TODO Auto-generated method stub
		return RightDebtInformationMapper.getVerList(rd,getEntStr,pageNum);
	}
	
	public void verRightDebt(RightDebtInformation rd) {
		RightDebtInformationMapper.verRightDebt(rd);
		
	}


	public List<RightDebtInformation> getViewList(RightDebtInformation rd,
			int getEntStr, int pageNum) {
		return RightDebtInformationMapper.getViewList(rd,getEntStr,pageNum);
	}


}
