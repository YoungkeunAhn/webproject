package user.successboard;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import Dtos.MissionStateDto;

public class UserSuccessBoardDBBean implements UserSuccessBoardDao {
	SqlSession session = SqlMapClient.getSession();
	
	public List<MissionStateDto> getSuccessMissions(){
		return session.selectList("success.getSuccessMissions");
	}
}
