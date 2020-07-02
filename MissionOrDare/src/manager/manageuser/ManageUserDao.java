package manager.manageuser;

import java.util.List;
import java.util.Map;

import Dtos.UsersDto;

public interface ManageUserDao {
	public int getCount();
	public List<UsersDto> getArticles( Map<String, Integer> map );
	public UsersDto getArticle(String user_nickname);
	public int deleteArticle(String user_nickname);
	public List<UsersDto> findArticles( Map<String, Object> mapp );
}
