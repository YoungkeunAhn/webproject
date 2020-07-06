package manager.managecontent;

import java.util.List;
import java.util.Map;

import Dtos.JoinMissionInfoSuccessBoardDto;

public interface ManageContentDao {
	public int getBoardCount();
	public List<JoinMissionInfoSuccessBoardDto> getBoardArticles( Map<String, Integer> map );
	public List<JoinMissionInfoSuccessBoardDto> getBoardArticle(Map<String, String> map);
}
