package user.missionauth;

import java.util.Map;

import Dtos.MissionStateDto;

public interface MissionAuthDao {

	public int authMission(MissionStateDto missionStateDto);

	public int addStarScore(Map<Object, Object> starScore);

	public String getMissionInfoId(String mission_state_id);

}
