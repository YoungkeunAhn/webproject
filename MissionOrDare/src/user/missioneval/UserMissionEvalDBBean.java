package user.missioneval;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import Dtos.MissionStateDto;
import Dtos.UserMissionsDto;


public class UserMissionEvalDBBean implements UserMissionEvalDao{
	SqlSession session = SqlMapClient.getSession();
	
	public List<UserMissionsDto> getMissionEval() {
		return session.selectList("Eval.getMissionEval");
	}
	public String getUserProfile(String user_nickname) {
		return session.selectOne("Eval.getUserProfile",user_nickname);
	}
	public int passContent(String mission_state_id) {
		return session.update("Eval.passContent", mission_state_id);
	}
	public int failContent(String mission_state_id) {
		return session.update("Eval.failContent", mission_state_id);
	}
	public int stateFail(String mission_state_id) {
		return session.update("Eval.stateFail",mission_state_id);
	}
	public int statePass(String mission_state_id) {
		return session.update("Eval.statePass",mission_state_id);
	}
	public int missionCount() {
		return session.selectOne("Eval.missionCount");
	}
	public int evalNickname(UserMissionsDto userMissionsDtos) {
		return session.update("Eval.evalNickname",userMissionsDtos);
	}
	public MissionStateDto getMissionInfo(String mission_state_id) {
		return session.selectOne("Eval.getMissionInfo", mission_state_id);
	}
	public int getMissionSuccessScore(String mission_info_id) {
		return session.selectOne("Eval.getMissionSuccessScore", mission_info_id);
	}
	public int updateScore(Map<String, Object> map) {
		return session.update("Eval.updateScore", map);
	}
}
