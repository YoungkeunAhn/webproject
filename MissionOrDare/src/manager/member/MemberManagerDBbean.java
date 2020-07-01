package manager.member;

import org.apache.ibatis.session.SqlSession;

import Dtos.ManagerDto;


public class MemberManagerDBbean implements MemberManagerDao {
	SqlSession session = SqlMapClient.getSession();
	
	public ManagerDto getMember( String manager_id ) {
		return session.selectOne("Mission.getMember", manager_id);
	}
	
	public int check( String manager_id ) {
		return session.selectOne("Mission.check", manager_id);
	}
	
	public int check( String manager_id, String manager_passwd ) {
		int result = 0;
		int cnt = check(manager_id);
		if(cnt == 0) {
			// 아이디가 없다.
			result = 0;
		} else {
			// 아이디가 있다.
			ManagerDto managerDto = getMember(manager_id);
			if( managerDto.getManager_passwd().equals(manager_passwd) ) {
				result = 1;
			} else {
				// 비밀번호 다르다
				result = -1;
			}
		}
		return result;
	}
}
