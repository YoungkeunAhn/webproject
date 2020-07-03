package manager.managemission;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import Dtos.MissionCategoryAndInfoDto;
import Dtos.MissionCategoryDto;

public class ManageMissionDBBean implements ManageMissionDao {
	SqlSession session = SqlMapClient.getSession();
	
	public int insertCategory(MissionCategoryDto missionCategoryDto) {
		return session.insert("Mission.insertCategory", missionCategoryDto);
	}
	public int deleteCategory(String missionCategoryId) {
		return session.delete("Mission.deleteCategory", missionCategoryId );
	}
	
	public int getCount() {
		return session.selectOne("Mission.getCount");
	}
	public int getSearchCount(String category) {
		return session.selectOne("Mission.getSearchCount", category);
	}
	public List<MissionCategoryDto> getMissionCategorys( Map<String, Integer> map ) {
		return session.selectList("Mission.getMissionCategorys", map);
	}
	public List<MissionCategoryDto> getSearchCategorys( Map<String, Object> map) {
		return session.selectList("Mission.getSearchCategorys", map);
	}
	public int getMissionCount() {
		return session.selectOne("Mission.getMissionCount");
	}
	public int getSearchMissionCount(String mission) {
		return session.selectOne("Mission.getMissionCount", mission);
	}
	
	public List<MissionCategoryAndInfoDto> getMissions( Map<String, Integer> map ) {
		return session.selectList("Mission.getMissions", map);
	}
	public List<MissionCategoryAndInfoDto> getSearchMissions( Map<String, Object> map ) {
		return session.selectList("Mission.getSearchMissions", map);
	}
	public List<MissionCategoryDto> getMissionLargeCategorys() {
		return session.selectList("Mission.getMissionLargeCategorys");
	}
	public List<MissionCategoryDto> getMissionSmallCategorys() {
		return session.selectList("Mission.getMissionSmallCategorys");
	}
}
