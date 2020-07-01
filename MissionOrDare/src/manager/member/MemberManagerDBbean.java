package manager.member;

import org.apache.ibatis.session.SqlSession;

import Dtos.ManagerDto;


public class MemberManagerDBbean implements MemberManagerDao {
	SqlSession session = SqlMapClient.getSession();
	
	public ManagerDto getMember( String id ) {
		return session.selectOne("Mission.getMember", id);
			
	}
	
	public int check( String id ) {
		return session.selectOne("Mission.check", id);
	}
	
	public int check( String id, String passwd ) {
		int result = 0;
		int cnt = check(id);
		if(cnt == 0) {
			// 아이디가 없다.
			result = 0;
		} else {
			// 아이디가 있다.
			ManagerDto managerDto = getMember(id);
			if( managerDto.getManager_passwd().equals(passwd) ) {
				result = 1;
			} else {
				// 비밀번호 다르다
				result = -1;
			}
		}
		return result;
	}
}
