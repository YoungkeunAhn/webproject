package manager.managemission;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import Dtos.MissionCategoryAndInfoDto;
import Dtos.MissionCategoryDto;
import Dtos.MissionInfoDto;

public class ManageMissionDBBean implements ManageMissionDao {
	SqlSession session = SqlMapClient.getSession();
	
	public int insertCategory(MissionCategoryDto missionCategoryDto) {
		int result;
		try {
			result = session.insert("Mission.insertCategory", missionCategoryDto);
		} catch (Exception e) {
			return -1;
		}
		return result;
	}
	public int deleteCategory(String missionCategoryId) {
		int result;
		try {
			result = session.delete("Mission.deleteCategory", missionCategoryId );
			
		} catch (Exception e) {
			return -1;
		}
		return result;
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
	public int getSearchMissionCountCategory(String mission) {
		return session.selectOne("Mission.getSearchMissionCountCategory", mission);
	}
	public int getSearchMissionCountTitle(String mission) {
		return session.selectOne("Mission.getSearchMissionCountTitle", mission);
	}
	public int getSearchMissionCountContent(String mission) {
		return session.selectOne("Mission.getSearchMissionCountContent", mission);
	}
	
	public List<MissionCategoryAndInfoDto> getMissions( Map<String, Integer> map ) {
		return session.selectList("Mission.getMissions", map);
	}
	
	public List<MissionCategoryAndInfoDto> getSearchMissionsCategory( Map<String, Object> map ) {
		return session.selectList("Mission.getSearchMissionsCategory", map);
	}
	public List<MissionCategoryAndInfoDto> getSearchMissionsTitle( Map<String, Object> map ) {
		return session.selectList("Mission.getSearchMissionsTitle", map);
	}
	public List<MissionCategoryAndInfoDto> getSearchMissionsContent( Map<String, Object> map ) {
		return session.selectList("Mission.getSearchMissionsContent", map);
	}
	
	public List<MissionCategoryDto> getMissionLargeCategorys() {
		return session.selectList("Mission.getMissionLargeCategorys");
	}
	public List<MissionCategoryDto> getMissionSmallCategorys(String largecategory) {
		return session.selectList("Mission.getMissionSmallCategorys", largecategory);
	}
	public String getCategoryId(MissionCategoryDto missionCategoryDto) {
		return session.selectOne("Mission.getCategoryId", missionCategoryDto);
	}
	public int insertMission(MissionInfoDto missionInfoDto) {
		return session.insert("Mission.insertMission", missionInfoDto);
	}
	public int deleteMission(String mission_info_id) {
		return session.delete("Mission.deleteMission", mission_info_id);
	}
	public MissionCategoryAndInfoDto getMission(String mission_info_id) {
		return session.selectOne("Mission.getMission", mission_info_id);
	}
	public int updateMission(MissionInfoDto missionInfoDto) {
		return session.update("Mission.updateMission", missionInfoDto);
	}
}
