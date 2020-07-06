package Dtos;

public class JoinNotesManagerDto {

	private String notes_id;
	private String received_nickname;
	private String sent_nickname;
	private String notes_contents;
	private String send_date;
	private String read_check;
	private String manager_id;
	private String manager_passwd;
	private String authority;
	public String getNote_id() {
		return notes_id;
	}
	public void setNote_id(String note_id) {
		this.notes_id = note_id;
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
	public String getManager_id() {
		return manager_id;
	}
	public void setManager_id(String manager_id) {
		this.manager_id = manager_id;
	}
	public String getManager_passwd() {
		return manager_passwd;
	}
	public void setManager_passwd(String manager_passwd) {
		this.manager_passwd = manager_passwd;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}	
	
	
}
