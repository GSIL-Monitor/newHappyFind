package happyNew.service;

import happyNew.entity.LoginUser;
import happyNew.mapper.LoginUserMapper;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service(value="userService")
public class LoginUserServiceImpl implements  LoginUserServiceI {

	private LoginUserMapper userMapper;
	
	@Autowired
	public void setUserInteractMapper(LoginUserMapper userMapper) {
		this.userMapper = userMapper;
	}
	
	public LoginUserMapper getUserMapper() {
		return userMapper;
	}

	public LoginUser getEntityById(int userId) {
		return userMapper.getEntityById(userId);
	}

	public List<LoginUser> getList(LoginUser user) {
		return userMapper.getList(user);
	}

	public void updateEntity(LoginUser user) {
		userMapper.updateEntity(user);
	}

	public void addEntity(LoginUser user) {
		userMapper.addEntity(user);
	}

	public LoginUser getPassByUserName(String userName){
		return userMapper.getPassByUserName(userName);
	}

	public void updatePass(LoginUser user) {
		userMapper.updatePass(user);
		
	}





}
