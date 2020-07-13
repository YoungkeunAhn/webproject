package user.missionauth;

import Dtos.MissionStateDto;

public interface MissionAuthDao {

	int authMission(MissionStateDto missionStateDto);

}
