package user.successboard;

import java.util.List;

import Dtos.MissionStateSuccessBoardDto;

public interface UserSuccessBoardDao {

	public List<MissionStateSuccessBoardDto> getSuccessMissions();
	public List<MissionStateSuccessBoardDto> getSuccessPopularityMissions();

}
