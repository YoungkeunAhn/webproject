package board;

import java.util.List;
import java.util.Map;

public interface BoardDao {
	public int getCount();
	public List<BoardDataBean> getArticles( Map<String, Integer> map );
	public BoardDataBean getArticle( int num );
	public void addCount( int num );
	public int insertArticle( BoardDataBean boardDto );
	public int deleteArticle( int num );
	public int modifyArticle( BoardDataBean boardDto );
}
