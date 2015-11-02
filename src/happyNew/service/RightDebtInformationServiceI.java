package happyNew.service;

import java.util.List;

import happyNew.entity.FindPeopleInformation;
import happyNew.entity.RightDebtInformation;

public interface RightDebtInformationServiceI {
	

	public List<RightDebtInformation> getList(RightDebtInformation rd,int getEntStr,int pageNum);
	public List<RightDebtInformation> getViewList(RightDebtInformation rd,int getEntStr,int pageNum);
	public List<RightDebtInformation> getVerList(RightDebtInformation rd,int getEntStr,int pageNum);
	public int getAllInt(RightDebtInformation rd);
	public void addEntity(RightDebtInformation rd);
	public void updateEntity(RightDebtInformation rd);
	public RightDebtInformation getEntityById(int id);
	public void deleteEntity(RightDebtInformation rd);
	public void verRightDebt(RightDebtInformation rd);
}
