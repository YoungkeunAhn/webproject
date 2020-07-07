package manager.managecontent;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import Dtos.JoinMissionInfoSuccessBoardDto;
import Dtos.JoinSuccessBoardReplyDto;

public class ManageContentDBBean implements ManageContentDao{
	SqlSession session = SqlMapClient.getSession();
	
	public int getBoardCount() {
		return session.selectOne( "Mission.getBoardCount" );
	}
	public int getSearchWriterCount(String searchContent) {
		return session.selectOne("Mission.getSearchWriterCount",searchContent);
	}
	public int getSearchCategoryCount(String searchContent) {
		return session.selectOne("Mission.getSearchCategoryCount",searchContent);
	}
	public int getSearchTitleCount(String searchContent) {
		return session.selectOne("Mission.getSearchTitleCount",searchContent);
	}
	
	public List<JoinMissionInfoSuccessBoardDto> getBoardArticles(Map<String, Integer> map) {
		return session.selectList( "Mission.getBoardArticles", map );
	}
	public List<JoinMissionInfoSuccessBoardDto> getBoardArticle(Map<String,String>map) {
		return session.selectList( "Mission.getBoardArticles",map);
	}
	
	public List<JoinMissionInfoSuccessBoardDto> getSearchWriterArticles(Map<String, Object> map) {
		return session.selectList("Mission.getSearchWriterArticles",map);
	}
	public List<JoinMissionInfoSuccessBoardDto> getSearchCategoryArticles(Map<String, Object> map) {
		return session.selectList("Mission.getSearchCategoryArticles",map);
	}
	public List<JoinMissionInfoSuccessBoardDto> getSearchTitleArticles(Map<String, Object> map) {
		return session.selectList("Mission.getSearchTitleArticles",map);
	}
	public JoinMissionInfoSuccessBoardDto getBoardInfo(String success_board_id) {
		return session.selectOne("Mission.getBoardInfo",success_board_id);
	}
	public List<JoinSuccessBoardReplyDto> getReplyArticles(String success_board_id) {
		return session.selectList("Mission.getReplyArticles",success_board_id);
	}
}
