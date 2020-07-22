package Dtos;

public class LikeDto {
	private String like_id;
	private String success_board_id;
	private String user_nickname;
	public String getLike_id() {
		return like_id;
	}
	public void setLike_id(String like_id) {
		this.like_id = like_id;
	}
	public String getSuccess_board_id() {
		return success_board_id;
	}
	public void setSuccess_board_id(String success_board_id) {
		this.success_board_id = success_board_id;
	}
	public String getUser_nickname() {
		return user_nickname;
	}
	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}
	
}
