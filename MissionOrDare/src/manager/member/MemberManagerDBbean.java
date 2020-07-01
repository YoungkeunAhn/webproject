package manager.member;

import org.apache.ibatis.session.SqlSession;


public class MemberManagerDBbean implements MemberManagerDao {
	SqlSession session = SqlMapClient.getSession();
	
	
}
