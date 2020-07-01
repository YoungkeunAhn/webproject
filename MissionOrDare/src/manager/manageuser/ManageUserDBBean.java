package manager.manageuser;

import org.apache.ibatis.session.SqlSession;

import manager.member.SqlMapClient;

public class ManageUserDBBean {
	SqlSession session = SqlMapClient.getSession();
}
