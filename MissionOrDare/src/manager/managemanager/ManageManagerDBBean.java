package manager.managemanager;

import org.apache.ibatis.session.SqlSession;

import Dtos.ManagerDto;
import manager.member.SqlMapClient;

public class ManageManagerDBBean implements ManageManagerDao{
	SqlSession session = SqlMapClient.getSession();
	

	public int insertManager( ManagerDto managerDto ) {		
		return session.insert( "Supermanager.insertManager", managerDto );		
	}
	
}
