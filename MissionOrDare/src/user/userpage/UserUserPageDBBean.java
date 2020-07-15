package user.userpage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import Dtos.NotesDto;
import Dtos.UserMissionsDto;
import Dtos.UsersDto;

public class UserUserPageDBBean implements UserUserPageDao{
	SqlSession session = SqlMapClient.getSession();
	
	public UsersDto getUserInfo(String user_nickname) {
		return session.selectOne("UserPage.getUserInfo",user_nickname);
	}
	public List<UserMissionsDto> userMissionInfo(String user_nickname) {
		return session.selectList("UserPage.userMissionInfo", user_nickname);
	}
	public List<NotesDto> receivedMessageInfo(String user_nickname) {
		return session.selectList("UserPage.receivedMessageInfo",user_nickname);
	}
}
