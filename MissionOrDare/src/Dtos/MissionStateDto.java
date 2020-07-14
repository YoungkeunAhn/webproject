package Dtos;


public class MissionStateDto {
	private String mission_state_id;
	private String mission_info_id;
	private String user_nickname;
	private String mission_start_date;
	private String upload_image;
	private String upload_video;
	private int upload_public_availability;
	private String mission_upload_contents;
	private int mission_state;
	private String mission_giveup_reason;
	private int mission_evaluation_count;
	private int successed_count;
	public String getMission_state_id() {
		return mission_state_id;
	}
	public void setMission_state_id(String mission_state_id) {
		this.mission_state_id = mission_state_id;
	}
	public String getMission_info_id() {
		return mission_info_id;
	}
	public void setMission_info_id(String mission_info_id) {
		this.mission_info_id = mission_info_id;
	}
	public String getUser_nickname() {
		return user_nickname;
	}
	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}
	public String getMission_start_date() {
		return mission_start_date;
	}
	public void setMission_start_date(String mission_start_date) {
		this.mission_start_date = mission_start_date;
	}
	public String getUpload_image() {
		return upload_image;
	}
	public void setUpload_image(String upload_image) {
		this.upload_image = upload_image;
	}
	public String getUpload_video() {
		return upload_video;
	}
	public void setUpload_video(String upload_video) {
		this.upload_video = upload_video;
	}
	public int getUpload_public_availability() {
		return upload_public_availability;
	}
	public void setUpload_public_availability(int upload_public_availability) {
		this.upload_public_availability = upload_public_availability;
	}
	public String getMission_upload_contents() {
		return mission_upload_contents;
	}
	public void setMission_upload_contents(String mission_upload_contents) {
		this.mission_upload_contents = mission_upload_contents;
	}
	public int getMission_state() {
		return mission_state;
	}
	public void setMission_state(int mission_state) {
		this.mission_state = mission_state;
	}
	public String getMission_giveup_reason() {
		return mission_giveup_reason;
	}
	public void setMission_giveup_reason(String mission_giveup_reason) {
		this.mission_giveup_reason = mission_giveup_reason;
	}
	public int getMission_evaluation_count() {
		return mission_evaluation_count;
	}
	public void setMission_evaluation_count(int mission_evaluation_count) {
		this.mission_evaluation_count = mission_evaluation_count;
	}
	public int getSuccessed_count() {
		return successed_count;
	}
	public void setSuccessed_count(int successed_count) {
		this.successed_count = successed_count;
	}
	
}
