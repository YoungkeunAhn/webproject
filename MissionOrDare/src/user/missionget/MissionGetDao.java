package user.missionget;

import java.util.List;

import Dtos.MissionCategoryAndInfoDto;
import Dtos.UsersDto;

public interface MissionGetDao {
	public List<MissionCategoryAndInfoDto> getChallengeAllMission();
	public List<MissionCategoryAndInfoDto> getNormalAllMission();
	public List<MissionCategoryAndInfoDto> getNormalMyMission(UsersDto userDto);
	public List<MissionCategoryAndInfoDto> getChallengeMyMission(UsersDto userDto);
	public UsersDto getUserCategory(String id);

}
