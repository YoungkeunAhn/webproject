package analysis;

import org.apache.ibatis.session.SqlSession;

import analysis.SqlMapClient;

public class AnalysisDBBean implements AnalysisDao {
	SqlSession session = SqlMapClient.getSession();
	
	public String nickCheck( String nickname ) {
		return session.selectOne( "Analysis.nickCheck", nickname );
	}							  
}
