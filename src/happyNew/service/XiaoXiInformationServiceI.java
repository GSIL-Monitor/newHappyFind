package happyNew.service;

import java.util.List;

import happyNew.entity.XiaoXiInformation;

public interface XiaoXiInformationServiceI {
	

	public List<XiaoXiInformation> getList(XiaoXiInformation xx);
	public void addEntity(XiaoXiInformation xx);
	public void deleteEntity(XiaoXiInformation xx);
	public XiaoXiInformation getEntityByUserId(int userid);
	public int getAll(XiaoXiInformation xx);
	public void updateEntity(XiaoXiInformation xx);
}
