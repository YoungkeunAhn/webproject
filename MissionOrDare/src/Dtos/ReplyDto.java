package Dtos;

public class ReplyDto {

	private String reply_id;
	private String success_board_id;
	private String user_nickname;
	private String reply_contents;
	private String reply_date;
	private int reply_step;
	private int reply_level;
	private int reference;
	public String getReply_id() {
		return reply_id;
	}
	public void setReply_id(String reply_id) {
		this.reply_id = reply_id;
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
