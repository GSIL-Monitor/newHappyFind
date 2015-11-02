package happyfind.mapper;

import java.util.List;



import org.apache.ibatis.annotations.Param;

import happyfind.entity.SystemLog;;

public interface SystemLogMapper {
	
	/**
	 * 
	 * @return
	 */
	public List<SystemLog> getList(SystemLog log);
	
	public void addEntity(SystemLog log);
	
	public SystemLog getEntityById(@Param("logId")int logId);
	
	
}
