package happyfind.mapper;

import java.util.List;



import org.apache.ibatis.annotations.Param;

import happyfind.entity.BorrowInformation;;

public interface BorrowInformationMapper {
	
	/**
	 * 
	 * @return
	 */
	public List<BorrowInformation> getList(BorrowInformation bf);
	
	public void addEntity(BorrowInformation bf);
	public void updateEntity(BorrowInformation bf);
	public BorrowInformation getEntityById(@Param("borrowId")int borrowId);
	public void deleteEntity(BorrowInformation bf);
	
	
}
