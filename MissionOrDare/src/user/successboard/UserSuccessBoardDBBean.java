package user.successboard;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import Dtos.MissionStateSuccessBoardDto;

public class UserSuccessBoardDBBean implements UserSuccessBoardDao {
	SqlSession session = SqlMapClient.getSession();
	
	public List<MissionStateSuccessBoardDto> getSuccessMissions(){
		return session.selectList("success.getSuccessMissions");
	}
	public List<MissionStateSuccessBoardDto> getSuccessPopularityMissions(){
		return session.selectList("success.getSuccessPopularityMissions");
	}
}
