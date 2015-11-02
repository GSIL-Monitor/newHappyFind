package happyNew.mapper;

import happyNew.entity.LoginUser;

import java.util.List;



import org.apache.ibatis.annotations.Param;


public interface LoginUserMapper {
	
	/**
	 * 
	 * @return
	 */
	public List<LoginUser> getList(LoginUser user);
	
	public void addEntity(LoginUser user);
	public void updateEntity(LoginUser user);
	public void updatePass(LoginUser user);
	
	public LoginUser getEntityById(@Param("userId")int logId);
	public LoginUser getPassByUserName(@Param("userName")String userName);
	
	
}
