package happyfind.service;

import happyfind.entity.BorrowInformation;
import happyfind.entity.SystemLog;
import happyfind.mapper.BorrowInformationMapper;
import happyfind.mapper.SystemLogMapper;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service(value="systemLogService")
public class SystemLogServiceImpl implements SystemLogServiceI {

	private SystemLogMapper systemLogMapper;
	
	@Autowired
	public void setUserInteractMapper(SystemLogMapper systemLogMapper) {
		this.systemLogMapper = systemLogMapper;
	}
	
	
	public SystemLogMapper getLogMapper() {
		return systemLogMapper;
	}




	public void addEntity(SystemLog log) {
		// TODO Auto-generated method stub
		systemLogMapper.addEntity(log);
	}


	public SystemLog getEntityById(int logId) {
		// TODO Auto-generated method stub
		return systemLogMapper.getEntityById(logId);
	}


	public List<SystemLog> getList(SystemLog log) {
		// TODO Auto-generated method stub
		return systemLogMapper.getList(log);
	}


}
