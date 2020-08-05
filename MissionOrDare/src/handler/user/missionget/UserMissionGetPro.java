package handler.user.missionget;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import user.missionget.MissionGetDao;

@Controller
public class UserMissionGetPro implements CommandHandler{
	@Resource
	MissionGetDao missionGetDao;
	
	@RequestMapping("/user_missionGetPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		if(request.getSession().getAttribute("user_nickname") == null ) {
			return new ModelAndView("user/user_index");
		}
		
		String mission_level= request.getParameter("mission_level");
		String mission_categoryArea = request.getParameter("mission_categoryArea");
		
		request.setAttribute("mission_level", mission_level);
		request.setAttribute("mission_categoryArea", mission_categoryArea);
		
		return new ModelAndView("user/pages/user_missionGetPro");
	}
}
