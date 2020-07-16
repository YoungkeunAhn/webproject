package user.missioneval;


import org.apache.ibatis.session.SqlSession;

import Dtos.UserMissionsDto;


public class UserMissionEvalDBBean implements UserMissionEvalDao{
	SqlSession session = SqlMapClient.getSession();
	
	public UserMissionsDto getMissionEval() {
		return session.selectOne("Eval.getMissionEval");
	}
	public String getUserProfile(String user_nickname) {
		return session.selectOne("Eval.getUserProfile",user_nickname);
	}
	public int passContent(String mission_state_id) {
		return session.update("Eval.passContent", mission_state_id);
	}
}
