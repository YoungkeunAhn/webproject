package Dtos;

public class TestDto {
	private String manager_id;
	private String manager_passwd;
	private String authority;
	private String category;
	private int start;
	private int end;
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	
}
