package Dtos;

public class JoinSuccessBoardReplyDto {
	private String success_board_id;
	private String mission_state_id;
	private String user_nickname;
	private String success_board_contents;
	private String mission_info_id;
	private int likecount;
	private int views;
	private String board_register_date;
	private String reply_id;
	private String reply_contents;
	private String reply_date;
	private int reply_step;
	private int reply_level;
	private int reference;
	public String getSuccess_board_id() {
		return success_board_id;
	}
	public void setSuccess_board_id(String success_board_id) {
		this.success_board_id = success_board_id;
	}
	public String getMission_state_id() {
		return mission_state_id;
	}
	public void setMission_state_id(String mission_state_id) {
		this.mission_state_id = mission_state_id;
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
	public String getReply_id() {
		return reply_id;
	}
	public void setReply_id(String reply_id) {
		this.reply_id = reply_id;
	}
	public String getReply_contents() {
		return reply_contents;
	}
	public void setReply_contents(String reply_contents) {
		this.reply_contents = reply_contents;
	}
	public String getReply_date() {
		return reply_date;
	}
	public void setReply_date(String reply_date) {
		this.reply_date = reply_date;
	}
	public int getReply_step() {
		return reply_step;
	}
	public void setReply_step(int reply_step) {
		this.reply_step = reply_step;
	}
	public int getReply_level() {
		return reply_level;
	}
	public void setReply_level(int reply_level) {
		this.reply_level = reply_level;
	}
	public int getReference() {
		return reference;
	}
	public void setReference(int reference) {
		this.reference = reference;
	}
	
}
