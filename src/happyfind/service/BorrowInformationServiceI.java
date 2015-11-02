package happyfind.service;

import java.util.List;

import happyfind.entity.BorrowInformation;

public interface BorrowInformationServiceI {
	

	public List<BorrowInformation> getList(BorrowInformation bf);
	public void addEntity(BorrowInformation bf);
	public void updateEntity(BorrowInformation bf);
	public BorrowInformation getEntityById(int borrowId);
	public void deleteEntity(BorrowInformation bf);
	

}
