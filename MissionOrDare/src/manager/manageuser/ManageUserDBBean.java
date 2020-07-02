package manager.manageuser;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import Dtos.UsersDto;

public class ManageUserDBBean {
	SqlSession session = SqlMapClient.getSession();
	
	public List<UsersDto> getArticles( Map<String, Integer> map ) {
		return session.selectList( "Mission.getArticles", map );
	}

	
}
