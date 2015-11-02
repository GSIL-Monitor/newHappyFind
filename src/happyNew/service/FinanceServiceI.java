package happyNew.service;

import java.util.List;

import happyNew.entity.Finance;

public interface FinanceServiceI {
	

	public List<Finance> getList(Finance fin);
	public void addEntity(Finance fin);
	public void updateTotleFinance(String userName);
	public Finance getEntityByUserName(String userName);
}
