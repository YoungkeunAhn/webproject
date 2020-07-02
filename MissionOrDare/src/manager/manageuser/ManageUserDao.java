package manager.manageuser;

import java.util.List;
import java.util.Map;

public interface ManageUserDao {
	public List<ManageUserDBBean> getArticles( Map<String, Integer> map );

}
