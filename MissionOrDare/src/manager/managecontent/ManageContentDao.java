package manager.managecontent;

import java.util.List;
import java.util.Map;

import Dtos.JoinMissionInfoSuccessBoardDto;
import Dtos.JoinSuccessBoardReplyDto;

public interface ManageContentDao {
	public int getBoardCount();
	public int getSearchWriterCount(String searchContent);
	public int getSearchCategoryCount(String searchContent);
	public int getSearchTitleCount(String searchContent);
	public List<JoinMissionInfoSuccessBoardDto> getBoardArticles( Map<String, Integer> map );
	public List<JoinMissionInfoSuccessBoardDto> getBoardArticle(Map<String, String> map);
	public List<JoinMissionInfoSuccessBoardDto> getSearchWriterArticles(Map<String,Object> map);
	public List<JoinMissionInfoSuccessBoardDto> getSearchCategoryArticles(Map<String,Object> map);
	public List<JoinMissionInfoSuccessBoardDto> getSearchTitleArticles(Map<String,Object> map);
	public JoinMissionInfoSuccessBoardDto getBoardInfo(String success_board_id);
	public List<JoinSuccessBoardReplyDto> getReplyArticles(String success_board_id);
}
