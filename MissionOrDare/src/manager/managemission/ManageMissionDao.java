package manager.managemission;

import java.util.List;
import java.util.Map;

import Dtos.MissionCategoryAndInfoDto;
import Dtos.MissionCategoryDto;

public interface ManageMissionDao {
	public int insertCategory(MissionCategoryDto missionCategoryDto);
	public int getCount();
	public int getSearchCount(String category);
	public List<MissionCategoryDto> getMissionCategorys( Map<String, Integer> map );
	public int deleteCategory(String missionCategoryId);
	public List<MissionCategoryDto> getSearchCategorys( Map<String, Object> map);
	public List<MissionCategoryAndInfoDto> getMissions( Map<String, Integer> map );
	public List<MissionCategoryAndInfoDto> getSearchMissions( Map<String, Object> map );
	public int getMissionCount();
	public int getSearchMissionCount(String mission);
	public List<MissionCategoryDto> getMissionLargeCategorys();
	public List<MissionCategoryDto> getMissionSmallCategorys();
}
