package manager.managemission;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

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
	public List<MissionCategoryDto> getMissionCategorys( Map<String, Integer> map ) {
		return session.selectList("Mission.getMissionCategorys", map);
	}
}
