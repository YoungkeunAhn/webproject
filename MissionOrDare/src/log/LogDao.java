package log;

import Dtos.MissionStateDto;
import Dtos.UsersDto;

public interface LogDao {
	public String getDate();

	public UsersDto usersData(String user_nickname);

	public MissionStateDto getMissionTime(String mission_state_id);
}
