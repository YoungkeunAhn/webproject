package user.successboard;

import java.util.List;
import java.util.Map;

import Dtos.MissionCategoryDto;
import Dtos.MissionStateSuccessBoardDto;

public interface UserSuccessBoardDao {

	public List<MissionStateSuccessBoardDto> getSuccessMissions();
	public List<MissionStateSuccessBoardDto> getSuccessPopularityMissions();
	public List<MissionCategoryDto> findLargeCategorys(Map<String, Object> map);
	public List<MissionCategoryDto> findSmallCategorys(Map<String, Object> map);
	public List<MissionStateSuccessBoardDto> getUserMissions(String searchUser);
	public List<MissionStateSuccessBoardDto> getCategoryMissions(String searchCategory);

}
