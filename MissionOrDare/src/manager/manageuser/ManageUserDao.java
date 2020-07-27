package manager.manageuser;

import java.util.List;
import java.util.Map;

import Dtos.UsersDto;

public interface ManageUserDao {
	public int getCount();
	public List<UsersDto> getArticles( Map<String, Integer> map );
	public UsersDto getArticle(String user_nickname);
	public List<UsersDto> findArticles( Map<String, Object> mapp );
	public int getSearchCount(String searchUser);
	public int deleteArticle(String user_nickname);
	public int deleteArticle2(String user_nickname);
	public int deleteArticle3(String user_nickname);
	public int deleteArticle4(String user_nickname);
	public int deleteArticle5(String user_nickname);
	public int deleteArticle6(String user_nickname);
}
