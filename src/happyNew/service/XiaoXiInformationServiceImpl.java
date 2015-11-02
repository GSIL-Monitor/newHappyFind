package happyNew.service;

import happyNew.entity.XiaoXiInformation;
import happyNew.entity.XiaoXiInformation;
import happyNew.mapper.XiaoXiInformationMapper;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service(value="xiaoxiInformationService")
public class XiaoXiInformationServiceImpl implements XiaoXiInformationServiceI {

	private XiaoXiInformationMapper xiaoxiInformationMapper;
	
	@Autowired
	public void setXiaoXiMapper(XiaoXiInformationMapper xiaoxiInformationMapper) {
		this.xiaoxiInformationMapper = xiaoxiInformationMapper;
	}
	
	public XiaoXiInformationMapper getXiaoXiMapper() {
		return xiaoxiInformationMapper;
	}

	public List<XiaoXiInformation> getList(XiaoXiInformation xx) {
		return xiaoxiInformationMapper.getList(xx);
	}

	public void addEntity(XiaoXiInformation xx) {
		xiaoxiInformationMapper.addEntity(xx);
	}

	public void deleteEntity(XiaoXiInformation xx) {
		xiaoxiInformationMapper.deleteEntity(xx);
	}

	public XiaoXiInformation getEntityByUserId(int userid) {
		// TODO Auto-generated method stub
		return xiaoxiInformationMapper.getEntityByUserId(userid);
	}

	public int getAll(XiaoXiInformation xx) {
		return xiaoxiInformationMapper.getAll(xx);
	}

	public void updateEntity(XiaoXiInformation xx) {
		// TODO Auto-generated method stub
		xiaoxiInformationMapper.updateEntity(xx);
		
	}

}
