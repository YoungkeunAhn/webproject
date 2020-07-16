package user.missioneval;


import Dtos.UserMissionsDto;

public interface UserMissionEvalDao {
	public UserMissionsDto getMissionEval();
	public String getUserProfile(String user_nickname);
	public int passContent(String mission_state_id);
	public int failContent(String mission_state_id);
}
