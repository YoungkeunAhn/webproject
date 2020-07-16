package handler.user.missioneval;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import user.missioneval.UserMissionEvalDao;

@Controller
public class UserMissionSuccessCountPro implements CommandHandler{
	@Resource
	private
	UserMissionEvalDao userMissionEvalDao;
	
	@RequestMapping("/user_missionSuccessCountPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String mission_state_id = request.getParameter("mission_state_id");
		
		int result = userMissionEvalDao.passContent(mission_state_id); //성공버튼 카운트 업데이트
		request.setAttribute("result", result);
		
		userMissionEvalDao.statePass(mission_state_id);
		
		return new ModelAndView("user/pages/user_missionSuccessCountPro");
	}
}
