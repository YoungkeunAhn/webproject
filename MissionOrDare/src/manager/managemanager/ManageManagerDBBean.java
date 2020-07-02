package manager.managemanager;

import org.apache.ibatis.session.SqlSession;

import manager.member.SqlMapClient;

public class ManageManagerDBBean implements ManageManagerDao{
	SqlSession session = SqlMapClient.getSession();
}
