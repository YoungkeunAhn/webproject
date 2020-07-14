package user.member;

public interface UserMemberDao {
	public int nicknameCheck(String user_nickname);
	public int loginCheck(String kakao_id);
}
