package user.userpage;

import Dtos.UsersDto;

public interface UserUserPageDao {
	public UsersDto getUserInfo(String user_nickname);
}
