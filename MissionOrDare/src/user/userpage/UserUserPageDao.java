package user.userpage;

import java.util.List;

import Dtos.UserMissionsDto;
import Dtos.UsersDto;

public interface UserUserPageDao {
	public UsersDto getUserInfo(String user_nickname);
	public List<UserMissionsDto> userMissionInfo(String user_nickname);
}
