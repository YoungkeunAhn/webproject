package user.missioneval;


import Dtos.UserMissionsDto;

public interface UserMissionEvalDao {
	public UserMissionsDto getMissionEval();
	public String getUserProfile(String user_nickname);
}
