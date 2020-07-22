package Dtos;

public class UserNotesDto {
	private String notes_id;
	private String received_nickname;
	private String sent_nickname;
	private String notes_contents;
	private String send_date;
	private String read_check;
	private String profile_picture;
	public String getNotes_id() {
		return notes_id;
	}
	public void setNotes_id(String notes_id) {
		this.notes_id = notes_id;
	}
	public String getReceived_nickname() {
		return received_nickname;
	}
	public void setReceived_nickname(String received_nickname) {
		this.received_nickname = received_nickname;
	}
	public String getSent_nickname() {
		return sent_nickname;
	}
	public void setSent_nickname(String sent_nickname) {
		this.sent_nickname = sent_nickname;
	}
	public String getNotes_contents() {
		return notes_contents;
	}
	public void setNotes_contents(String notes_contents) {
		this.notes_contents = notes_contents;
	}
	public String getSend_date() {
		return send_date;
	}
	public void setSend_date(String send_date) {
		this.send_date = send_date;
	}
	public String getRead_check() {
		return read_check;
	}
	public void setRead_check(String read_check) {
		this.read_check = read_check;
	}
	public String getProfile_picture() {
		return profile_picture;
	}
	public void setProfile_picture(String profile_picture) {
		this.profile_picture = profile_picture;
	}
	
}
