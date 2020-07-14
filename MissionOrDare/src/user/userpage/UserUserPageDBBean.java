package user.userpage;

import org.apache.ibatis.session.SqlSession;

import Dtos.UsersDto;

public class UserUserPageDBBean implements UserUserPageDao{
	SqlSession session = SqlMapClient.getSession();
	
	public UsersDto getUserInfo(String user_nickname) {
		return session.selectOne("UserPage.getUserInfo",user_nickname);
	}

}
