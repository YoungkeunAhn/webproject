package manager.managereport;

import java.util.List;
import java.util.Map;

import Dtos.ReportBoardDto;

public interface ManageReportDao {
	public int getReportCount();
	public List<ReportBoardDto> getReportArticles(Map<String,Integer> map);
	public int getSearchReportCount(String searchReport);
	public int getSearchNicknameCount(String searchNickname);
	public List<ReportBoardDto> getSearchReportArticles(Map<String,Object> map);
	public List<ReportBoardDto> getSearchNicknameArticles (Map<String,Object> map);
}
