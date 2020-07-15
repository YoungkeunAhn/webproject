package user.missionget;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import Dtos.MissionCategoryAndInfoDto;
import Dtos.MissionStateDto;
import Dtos.UserMissionsDto;
import Dtos.UsersDto;

public class MissionGetDBBean implements MissionGetDao {
	SqlSession session = SqlMapClient.getSession();
	
	// 랜덤미션 가져오기
	public List<MissionCategoryAndInfoDto> getChallengeAllMission() {
		return session.selectList("get.getChallengeAllMission");
	}
	public List<MissionCategoryAndInfoDto> getNormalAllMission(){
		return session.selectList("get.getNormalAllMission");
	}
	public List<MissionCategoryAndInfoDto> getNormalMyMission(UsersDto usersDto){
		return session.selectList("get.getNormalMyMission", usersDto);
	}
	public List<MissionCategoryAndInfoDto> getChallengeMyMission(UsersDto usersDto){
		return session.selectList("get.getChallengeMyMission", usersDto);
	}
	// 선호 카테고리 가져오기
	public UsersDto getUserCategory(String user_nickname) {
		return session.selectOne("get.getUserCategory", user_nickname);
	}
	// 미션 받기
	public int insertUserMission(MissionStateDto missionStateDto) {
		return session.insert("get.insertUserMission", missionStateDto);
	}
	// 미션 가져오기
	public List<UserMissionsDto> getUserMissions(String user_nickname){
		return session.selectList("get.getUserMissions", user_nickname);
	}
	public int getUserMission(String user_nickname) {
		return session.selectOne("get.getUserMission", user_nickname);
	}
}
