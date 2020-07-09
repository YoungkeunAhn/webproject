package manager.managemessage;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import Dtos.JoinNotesManagerDto;
import Dtos.NotesDto;
import Dtos.UsersDto;
public class ManageMessageDBBean implements ManageMessageDao{
	SqlSession session = SqlMapClient.getSession();
	
	public int getCountt() {
		return session.selectOne( "Mission.getCountt" );
	}
	public List<JoinNotesManagerDto> getArticless( Map<String, Integer> map ) {
		return session.selectList( "Mission.getArticless", map );
	}
	public List<JoinNotesManagerDto> findArticless( Map<String, Object> map ) {
		return session.selectList( "Mission.findArticless", map);
	} 
	public int getSearchCountt(String searchUser) {
		return session.selectOne( "Mission.getSearchCountt" ,searchUser);
	}
	public int deleteMessage(String notes_id) {
		int result = session.delete("Mission.deleteMessage",notes_id);
		return result ;	
	}
	public int insertMessage(NotesDto notesDto) {
		return session.insert("Mission.insertMessage",notesDto);
	}
	public List<UsersDto> findUsers(Map<String, Object> mapp){
		System.out.println(mapp.get("searchUser"));
		return session.selectList("Mission.findUsers", mapp);
	}
	
}
