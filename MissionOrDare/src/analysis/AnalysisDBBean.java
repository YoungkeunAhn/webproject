package analysis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import Dtos.UsersDto;
import analysis.SqlMapClient;

public class AnalysisDBBean implements AnalysisDao {
	SqlSession session = SqlMapClient.getSession();
	
	public String nickCheck( String nickname ) {
		return session.selectOne( "Analysis.nickCheck", nickname );
	}							  
	
	public List<UsersDto> allUserInfo() {
		return session.selectList("Analysis.allUserInfo");
	}
}
