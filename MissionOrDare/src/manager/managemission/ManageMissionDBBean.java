package manager.managemission;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.dao.DataIntegrityViolationException;

import Dtos.MissionCategoryAndInfoDto;
import Dtos.MissionCategoryDto;
import Dtos.MissionInfoDto;

public class ManageMissionDBBean implements ManageMissionDao {
	SqlSession session = SqlMapClient.getSession();
	
	public int insertCategory(MissionCategoryDto missionCategoryDto) {
		return session.insert("Mission.insertCategory", missionCategoryDto);
	}
	public int deleteCategory(String missionCategoryId) {
		try {
			System.out.println("아오..");
			session.delete("Mission.deleteCategory", missionCategoryId );
			
		} catch (DataIntegrityViolationException e) {
			System.out.println("d흐으ㅡ음");
			return 0;
		}
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
}
