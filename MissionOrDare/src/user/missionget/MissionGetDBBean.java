package user.missionget;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import Dtos.MissionCategoryAndInfoDto;
import Dtos.UsersDto;

public class MissionGetDBBean implements MissionGetDao {
	SqlSession session = SqlMapClient.getSession();
	
	// 미션 받기
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
	public UsersDto getUserCategory(String id) {
		return session.selectOne("get.getUserCategory", id);
	}
}
