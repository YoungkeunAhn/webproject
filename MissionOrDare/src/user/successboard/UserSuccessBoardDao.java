package user.successboard;

import java.util.List;

import Dtos.MissionStateDto;

public interface UserSuccessBoardDao {

	public List<MissionStateDto> getSuccessMissions();

}
