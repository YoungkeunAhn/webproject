package user.missioneval;



import java.util.List;
import java.util.Map;

import Dtos.MissionStateDto;
import Dtos.UserMissionsDto;

public interface UserMissionEvalDao {
	public List<UserMissionsDto> getMissionEval();
	public String getUserProfile(String user_nickname);
	public int passContent(String mission_state_id);
	public int failContent(String mission_state_id);
	public int statePass(String mission_state_id);
	public int stateFail(String mission_state_id);
	public int missionCount();
	public int evalNickname(UserMissionsDto userMissionsDtos);
	public MissionStateDto getMissionInfo(String mission_state_id);
	public int getMissionSuccessScore(String mission_info_id);
	public int updateScore(Map<String, Object> map);
	
}
