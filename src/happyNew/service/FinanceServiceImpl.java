package happyNew.service;
import happyNew.entity.Finance;
import happyNew.mapper.FinanceMapper;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service(value="financeService")
public class FinanceServiceImpl implements FinanceServiceI {

	private FinanceMapper financeMapper;
	
	@Autowired
	public void setFindPeopleMapper(FinanceMapper financeMapper) {
		this.financeMapper = financeMapper;
	}
	public List<Finance> getList(Finance fin) {
		return financeMapper.getList(fin);
	}
	public void addEntity(Finance fin) {
		financeMapper.addEntity(fin);
	}
	
	
	public Finance getEntityByUserName(String userName) {
		return financeMapper.getEntityByUserName(userName);
	}
	public void updateTotleFinance(String userName) {
		financeMapper.updateTotleFinance(userName);
	}

}
