package handler.user.missioneval;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.UserMissionsDto;
import handler.CommandHandler;
import user.missioneval.UserMissionEvalDao;

@Controller
public class UserMissionFailureCountPro implements CommandHandler{
	@Resource
	private UserMissionEvalDao userMissionEvalDao;
	
	@RequestMapping("/user_missionFailureCountPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String user_nickname = (String) request.getSession().getAttribute("user_nickname");
		String mission_state_id = request.getParameter("mission_state_id");
		System.out.println("실패: "+mission_state_id);
		//mission_evaluation_count + 1
		int result = userMissionEvalDao.failContent(mission_state_id);
		request.setAttribute("result", result);
		
		//미션상태 실패로 변경(조건에 맞으면)
		userMissionEvalDao.stateFail(mission_state_id);
		
		//mission_evaluation_nickname 컬컴에 user_nickname+'/' 추가
		UserMissionsDto userMissionsDtos = new UserMissionsDto();
		userMissionsDtos.setUser_nickname(user_nickname);
		userMissionsDtos.setMission_state_id(mission_state_id);
		userMissionEvalDao.evalNickname(userMissionsDtos);

		return new ModelAndView("user/pages/user_missionFailureCountPro");
	}
}
