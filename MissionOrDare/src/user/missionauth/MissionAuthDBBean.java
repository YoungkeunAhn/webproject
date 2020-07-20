package user.missionauth;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import Dtos.MissionStateDto;

public class MissionAuthDBBean implements MissionAuthDao {
	SqlSession session = SqlMapClient.getSession();
	
	public int authMission(MissionStateDto missionStateDto) {
		return session.update("auth.authMission", missionStateDto);
	}
	public int addStarScore(Map<Object, Object> starScore) {
		return session.update("auth.addStarScore", starScore);
	}
	public String getMissionInfoId(String mission_state_id) {
		return session.selectOne("auth.getMissionInfoId", mission_state_id);
	}
}
