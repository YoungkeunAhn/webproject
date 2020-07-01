package manager.member;

import Dtos.ManagerDto;

public interface MemberManagerDao {
	public ManagerDto getMember( String id );
	public int check( String id );
	public int check( String id, String passwd );
}
