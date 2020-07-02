package manager.manageuser;

import java.util.List;
import java.util.Map;

import Dtos.UsersDto;

public interface ManageUserDao {
	public int getCount();
	public List<UsersDto> getArticles( Map<String, Integer> map );
	public UsersDto getArticle();
}
