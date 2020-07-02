package manager.managemission;

import java.util.List;
import java.util.Map;

import Dtos.MissionCategoryDto;

public interface ManageMissionDao {
	public int insertCategory(MissionCategoryDto missionCategoryDto);
	public int getCount();
	public int getSearchCount(String category);
	public List<MissionCategoryDto> getMissionCategorys( Map<String, Integer> map );
	public int deleteCategory(String missionCategoryId);
	public List<MissionCategoryDto> getSearchCategorys( Map<String, Object> map);
}
