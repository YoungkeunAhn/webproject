package user.member;


import org.apache.ibatis.session.SqlSession;

import Dtos.UsersDto;

public class UserMemberDBBean implements UserMemberDao{
	SqlSession session = SqlMapClient.getSession();

	public int nicknameCheck(String user_nickname) {
		return session.selectOne("Member.nicknameCheck",user_nickname);
	}
	public int loginCheck(int kakao_id) {
		return session.selectOne("Member.loginCheck",kakao_id);
	}
	public int insertUser(UsersDto usersDto) {
		return session.insert("Member.insertUser", usersDto);
	}
	public String findNickname(int kakao_id) {
		return session.selectOne("Member.findNickname",kakao_id);
	}
	
	
}
