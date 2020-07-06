package manager.managecontent;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import Dtos.JoinMissionInfoSuccessBoardDto;

public class ManageContentDBBean implements ManageContentDao{
	SqlSession session = SqlMapClient.getSession();
	
	public int getBoardCount() {
		return session.selectOne( "Mission.getBoardCount" );
	}
	public List<JoinMissionInfoSuccessBoardDto> getBoardArticles(Map<String, Integer> map) {
		return session.selectList( "Mission.getBoardArticles", map );
	}
	public List<JoinMissionInfoSuccessBoardDto> getBoardArticle(Map<String,String>map) {
		return session.selectList( "Mission.getBoardArticles",map);
	}
	
}
