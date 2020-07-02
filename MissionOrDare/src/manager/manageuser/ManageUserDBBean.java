package manager.manageuser;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import Dtos.UsersDto;


public class ManageUserDBBean implements ManageUserDao{
	SqlSession session = SqlMapClient.getSession();
	
	public int getCount() {
		return session.selectOne( "Mission.getCount" );
	}
	
	public List<UsersDto> getArticles( Map<String, Integer> map ) {
		return session.selectList( "Mission.getArticles", map );
	}
	public UsersDto getArticle(String user_nickname) {		
		return session.selectOne( "Mission.getArticle",user_nickname);
	}
	public int deleteArticle( String user_nickname) {
		return session.delete("Mission.deleteArticle", user_nickname);
	}
	public List<UsersDto> findArticles( Map<String, Object> mapp ) {
		return session.selectList( "Mission.findArticles", mapp );
	} 
}
