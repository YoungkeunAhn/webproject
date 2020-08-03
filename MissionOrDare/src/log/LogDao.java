package log;

import Dtos.UsersDto;

public interface LogDao {
	public String getDate();

	public UsersDto usersData(String user_nickname);
}
