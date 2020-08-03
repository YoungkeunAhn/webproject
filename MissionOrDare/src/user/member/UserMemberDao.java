package user.member;

import Dtos.UsersDto;

public interface UserMemberDao {
	public int nicknameCheck(String user_nickname);
	public int loginCheck(int kakao_id);
	public int insertUser(UsersDto usersDto);
	public String findNickname(int kakao_id);
	public int withdrawlCheck(int kakao_id);
	public int updateUser(UsersDto usersDto);
	public int withdrawalUp(int kakao_id);
	public int withdrawalDel(int kakao_id);
}