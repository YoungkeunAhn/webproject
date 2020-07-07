package manager.managemessage;

import java.util.List;
import java.util.Map;

import Dtos.JoinNotesManagerDto;
import Dtos.NotesDto;

public interface ManageMessageDao {
	public int getCountt();
	public List<JoinNotesManagerDto> getArticless( Map<String, Integer> map );
	public List<JoinNotesManagerDto> findArticless( Map<String, Object> map );
	public int getSearchCountt(String searchUser);
	public int deleteMessage(String notes_id);
	public int insertMessage(NotesDto notesDto);
}
