package happyNew.mapper;

import java.util.List;



import org.apache.ibatis.annotations.Param;

import happyNew.entity.FindPeopleInformation;
import happyNew.entity.RightDebtInformation;

public interface RightDebtInformationMapper {
	
	/**
	 * 
	 * @return
	 */
	public List<RightDebtInformation> getList(@Param("rd")RightDebtInformation rd,@Param("pagestr")int getEntStr,@Param("pageNum")int pageNum);
	public List<RightDebtInformation> getViewList(@Param("rd")RightDebtInformation rd,@Param("pagestr")int getEntStr,@Param("pageNum")int pageNum);
	public List<RightDebtInformation> getVerList(@Param("rd")RightDebtInformation rd,@Param("pagestr")int getEntStr,@Param("pageNum")int pageNum);
	public int getAllInt(RightDebtInformation rd);
	public void addEntity(RightDebtInformation rd);
	public void updateEntity(RightDebtInformation rd);
	public RightDebtInformation getEntityById(@Param("id")int id);
	public void deleteEntity(RightDebtInformation rd);
	public void verRightDebt(RightDebtInformation rd) ;
	
	
}
