package user.missionget;

import java.util.List;

import Dtos.MissionCategoryAndInfoDto;
import Dtos.MissionStateDto;
import Dtos.UserMissionsDto;
import Dtos.UsersDto;

public interface MissionGetDao {
	public List<MissionCategoryAndInfoDto> getChallengeAllMission();
	public List<MissionCategoryAndInfoDto> getNormalAllMission();
	public List<MissionCategoryAndInfoDto> getNormalMyMission(UsersDto userDto);
	public List<MissionCategoryAndInfoDto> getChallengeMyMission(UsersDto userDto);
	public UsersDto getUserCategory(String user_nickname);
	public int insertUserMission(MissionStateDto missionStateDto);
	public List<UserMissionsDto> getUserMissions(String user_nickname);
	public int getUserMission(String user_nickname);

}
