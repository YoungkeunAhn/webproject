package manager.managereport;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import Dtos.ReportBoardDto;


public class ManageReportDBBean implements ManageReportDao{
	SqlSession session = SqlMapClient.getSession();
	public int getReportCount() {
		return session.selectOne( "Mission.getReportCount" );
	}
	public int getSearchReportCount(String searchReport) {
		return session.selectOne("Mission.getSearchReportCount");
	}
	public int getSearchNicknameCount(String searchNickname) {
		return session.selectOne("Mission.getSearchNicknameCount");
	}
	
	public List<ReportBoardDto> getReportArticles(Map<String, Integer> map) {
		return session.selectList( "Mission.getReportArticles", map );
	}
	public List<ReportBoardDto> getSearchReportArticles(Map<String, Object> map) {
		return session.selectList( "Mission.getSearchReportArticles", map );
	}
	public List<ReportBoardDto> getSearchNicknameArticles(Map<String, Object> map) {
		return session.selectList( "Mission.getSearchNicknameArticles", map );
	}
}
