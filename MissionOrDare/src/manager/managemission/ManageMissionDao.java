package manager.managemission;

import java.util.List;
import java.util.Map;

import Dtos.MissionCategoryDto;

public interface ManageMissionDao {
	public int insertCategory(MissionCategoryDto missionCategoryDto);
	public int getCount();
	public List<MissionCategoryDto> getMissionCategorys( Map<String, Integer> map );
}
