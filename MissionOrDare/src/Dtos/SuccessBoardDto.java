package Dtos;

public class SuccessBoardDto {
	private String success_board_id;
	private String mission_state_id;
	private String user_nickname;
	private String success_board_contents;
	private String mission_info_id;
	private int likecount;
	private int views;
	private String board_register_date;
	public String getSuccess_board_id() {
		return success_board_id;
	}
	public void setSuccess_board_id(String success_board_id) {
		this.success_board_id = success_board_id;
	}
	public String getMission_stete_id() {
		return mission_state_id;
	}
	public void setMission_stete_id(String mission_stete_id) {
		this.mission_state_id = mission_stete_id;
	}
	public String getUser_nickname() {
		return user_nickname;
	}
	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}
	public String getSuccess_board_contents() {
		return success_board_contents;
	}
	public void setSuccess_board_contents(String success_board_contents) {
		this.success_board_contents = success_board_contents;
	}
	public String getMission_info_id() {
		return mission_info_id;
	}
	public void setMission_info_id(String mission_info_id) {
		this.mission_info_id = mission_info_id;
	}
	public int getLikecount() {
		return likecount;
	}
	public void setLikecount(int likecount) {
		this.likecount = likecount;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getBoard_register_date() {
		return board_register_date;
	}
	public void setBoard_register_date(String board_register_date) {
		this.board_register_date = board_register_date;
	}
	
	
	
}
