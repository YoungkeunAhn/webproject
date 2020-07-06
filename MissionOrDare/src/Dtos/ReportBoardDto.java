package Dtos;

public class ReportBoardDto {
	
	private String report_board_id;
	private String user_nickname;
	private String reported_nickname;
	private String report_type;
	private String report_reason;
	private String reported_board_id;
	private String reported_reply_id;
	private String report_date;
	public String getReport_board_id() {
		return report_board_id;
	}
	public void setReport_board_id(String report_board_id) {
		this.report_board_id = report_board_id;
	}
	public String getUser_nickname() {
		return user_nickname;
	}
	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}
	public String getReported_nickname() {
		return reported_nickname;
	}
	public String getReport_type() {
		return report_type;
	}
	public void setReport_type(String report_type) {
		this.report_type = report_type;
	}
	public void setReported_nickname(String reported_nickname) {
		this.reported_nickname = reported_nickname;
	}
	public String getReport_reason() {
		return report_reason;
	}
	public void setReport_reason(String report_reason) {
		this.report_reason = report_reason;
	}
	public String getReported_board_id() {
		return reported_board_id;
	}
	public void setReported_board_id(String reported_board_id) {
		this.reported_board_id = reported_board_id;
	}
	public String getReported_reply_id() {
		return reported_reply_id;
	}
	public void setReported_reply_id(String reported_reply_id) {
		this.reported_reply_id = reported_reply_id;
	}
	public String getReport_date() {
		return report_date;
	}
	public void setReport_date(String report_date) {
		this.report_date = report_date;
	}
	
	
};
