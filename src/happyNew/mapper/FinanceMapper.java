package happyNew.mapper;

import happyNew.entity.Finance;

import java.util.List;



import org.apache.ibatis.annotations.Param;


public interface FinanceMapper {
	
	/**
	 * @return
	 */
	public List<Finance> getList(Finance fin);
	public void addEntity(Finance fin);
	public void updateTotleFinance(@Param("userName")String userName);
	public Finance getEntityByUserId(@Param("userId")int logId);
	public Finance getEntityByUserName(@Param("userName")String userName);
	
	
}
