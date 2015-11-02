package happyNew.service;

import happyNew.entity.LoginUser;

import java.util.List;


public interface LoginUserServiceI {
	

	public List<LoginUser> getList(LoginUser user);
	public LoginUser getEntityById(int userId);
	public LoginUser getPassByUserName(String userName);
	public void addEntity(LoginUser user);
	public void updateEntity(LoginUser user);
	public void updatePass(LoginUser user);
}
