package happyfind.service;

import java.util.List;

import happyfind.entity.SystemLog;

public interface SystemLogServiceI {
	

	public List<SystemLog> getList(SystemLog log);
	public SystemLog getEntityById(int logId);
	public void addEntity(SystemLog log);

}
