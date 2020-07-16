package user.successboard;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import Dtos.MissionCategoryDto;
import Dtos.MissionStateSuccessBoardDto;

public class UserSuccessBoardDBBean implements UserSuccessBoardDao {
	SqlSession session = SqlMapClient.getSession();
	
	public List<MissionStateSuccessBoardDto> getSuccessMissions(){
		return session.selectList("success.getSuccessMissions");
	}
	public List<MissionStateSuccessBoardDto> getSuccessPopularityMissions(){
		return session.selectList("success.getSuccessPopularityMissions");
	}
	public List<MissionCategoryDto> findLargeCategorys(Map<String, Object> map){
		return session.selectList("success.findLargeCategorys", map);
	}
	public List<MissionCategoryDto> findSmallCategorys(Map<String, Object> map){
		return session.selectList("success.findSmallCategorys", map);
	}
	public List<MissionStateSuccessBoardDto> getUserMissions(String searchUser) {
		return session.selectList("success.getUserMissions", searchUser);
	}
	public List<MissionStateSuccessBoardDto> getCategoryMissions(String searchCategory){
		return session.selectList("success.getCategoryMissions", searchCategory);
	}
}
