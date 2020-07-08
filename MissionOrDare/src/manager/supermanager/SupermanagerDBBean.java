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

	public List<ManagerDto> getManagers( Map<String, Integer> map ) {
		return session.selectList("Supermanaging.getManagers", map);
	}
	
	public int getCount() {
		return session.selectOne("Supermanaging.getCount");
	}

	public List<ManagerDto> getSearchManagers( Map<String, Object> map ){
		return session.selectList("Supermanaging.getSearchManagers", map);
	}
	
	public int getsearchManagerCount(String searchManager) {
		return session.selectOne("Supermanaging.getsearchManagerCount", searchManager);
	}
	
	public int deleteArticle(String manager_id) {
		return session.delete("Supermanaging.deleteArticle", manager_id);
	}
	
	
}
