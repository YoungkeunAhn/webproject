package Dtos;

public class MissionCategoryDto {

	private String mission_category_id;
	private String large_category;
	private String small_category;
	private String category_image;
	
	public String getMission_category_id() {
		return mission_category_id;
	}
	public void setMission_category_id(String mission_category_id) {
		this.mission_category_id = mission_category_id;
	}
	public String getLarge_category() {
		return large_category;
	}
	public void setLarge_category(String large_category) {
		this.large_category = large_category;
	}
	public String getSmall_category() {
		return small_category;
	}
	public void setSmall_category(String small_category) {
		this.small_category = small_category;
	}
	public String getCategory_image() {
		return category_image;
	}
	public void setCategory_image(String category_image) {
		this.category_image = category_image;
	}
	
	
}
