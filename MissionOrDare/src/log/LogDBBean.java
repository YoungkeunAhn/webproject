package log;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.apache.ibatis.session.SqlSession;

import Dtos.MissionStateDto;
import Dtos.UsersDto;

public class LogDBBean implements LogDao {
	SqlSession session = SqlMapClient.getSession();
	
	public String getDate() {
		Calendar cal = Calendar.getInstance();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd/HH:mm:ss");
    	String datestr = sdf.format(cal.getTime());
    	return datestr;
	}
	public UsersDto usersData(String user_nickname) {
		return session.selectOne("log.usersData", user_nickname);
	}
	public MissionStateDto getMissionTime(String mission_state_id) {
		return session.selectOne("log.getMissionTime", mission_state_id);
	}
}
