package manager.managemessage;

import java.util.List;
import java.util.Map;

import Dtos.JoinNotesManagerDto;

public interface ManageMessageDao {
	public int getCountt();
	public List<JoinNotesManagerDto> getArticless( Map<String, Integer> map );
	public List<JoinNotesManagerDto> findArticless( Map<String, Object> map );
	public int getSearchCountt(String searchUser);
}