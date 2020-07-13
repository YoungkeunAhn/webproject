package user.missionauth;

import org.apache.ibatis.session.SqlSession;

import Dtos.MissionStateDto;

public class MissionAuthDBBean implements MissionAuthDao {
	SqlSession session = SqlMapClient.getSession();
	
	public int authMission(MissionStateDto missionStateDto) {
		return session.update("auth.authMission", missionStateDto);
	}
}
