package manager.supermanager;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import Dtos.ManagerDto;
public class SupermanagerDBBean implements SupermanagerDao{
	
	private SqlSession session = SqlMapClient.getSession();
	

	public int insertManager( ManagerDto managerDto ) {
		return session.insert("Supermanaging.insertManager", managerDto);
	}

	public List<ManagerDto> managerDtos( Map<String, Integer> map ) {
		return session.selectList("Supermanaging.getManagers", map);
	}
	
	public int getCount() {
		return session.selectOne("Supermanaging.getCount");
	}

}
