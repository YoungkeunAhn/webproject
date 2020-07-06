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
	public List<ReportBoardDto> getReportArticles(Map<String, Integer> map) {
		return session.selectList( "Mission.getReportArticles", map );
	}
}
