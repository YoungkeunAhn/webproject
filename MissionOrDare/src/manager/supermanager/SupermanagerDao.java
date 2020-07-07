package manager.supermanager;

import java.util.List;
import java.util.Map;

import Dtos.ManagerDto;
import Dtos.UsersDto;

public interface SupermanagerDao {

	public int insertManager( ManagerDto managerDto );
	
	public List<ManagerDto> managerDtos( Map<String, Integer> map );
	
	public int getCount();
	
	public List<ManagerDto> findManager( Map<String, Object> mapp );
	
	public int getsearchManagerCount(String searchManager);

	public int deleteArticle(String user_nickname);
}
