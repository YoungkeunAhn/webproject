package user.missioneval;



import java.util.List;

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
}
