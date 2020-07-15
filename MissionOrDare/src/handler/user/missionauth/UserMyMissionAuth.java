package handler.user.missionauth;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;

@Controller
public class UserMyMissionAuth implements CommandHandler{
	
	@RequestMapping("/user_myMissionAuth")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String mission_start_date = request.getParameter("mission_start_date");
		String mission_category = request.getParameter("mission_category");
		String mission_title = request.getParameter("mission_title");
		String mission_state_id = request.getParameter("mission_state_id");
		
		request.setAttribute("mission_start_date", mission_start_date);
		request.setAttribute("mission_category", mission_category);
		request.setAttribute("mission_title", mission_title);
		request.setAttribute("mission_state_id", mission_state_id);
		
		return new ModelAndView("user/pages/user_myMissionAuth");
	}

}
