package user.member;

import org.apache.ibatis.session.SqlSession;

public class UserMemberDBBean implements UserMemberDao{
	SqlSession session = SqlMapClient.getSession();

	@Override
	public int nicknameCheck(String user_nickname) {
		return session.selectOne("Member.nicknameCheck",user_nickname);
	}
}
