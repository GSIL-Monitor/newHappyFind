package happyNew.mapper;

import java.util.List;



import org.apache.ibatis.annotations.Param;

import happyNew.entity.GetRewardInformation;
import happyNew.entity.XiaoXiInformation;

public interface XiaoXiInformationMapper {
	
	/**
	 * 
	 * @return
	 */
	public List<XiaoXiInformation> getList(XiaoXiInformation xx);
	public void addEntity(XiaoXiInformation xx);
	public void deleteEntity(XiaoXiInformation xx);
	public int getAll(XiaoXiInformation xx);
	public void updateEntity(XiaoXiInformation xx);
	public XiaoXiInformation getEntityByUserId(@Param("userid")int userid);
	
	
}
