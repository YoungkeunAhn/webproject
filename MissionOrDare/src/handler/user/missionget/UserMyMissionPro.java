package handler.user.missionget;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.MissionStateDto;
import handler.CommandHandler;
import user.missionget.MissionGetDao;

@Controller
public class UserMyMissionPro implements CommandHandler{
	@Resource
	MissionGetDao missionGetDao;
	
	@RequestMapping("/user_myMissionPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		if(request.getSession().getAttribute("user_nickname") == null ) {
			return new ModelAndView("user/user_index");
		}
		
		MissionStateDto missionStateDto = new MissionStateDto();
		missionStateDto.setMission_info_id(request.getParameter("mission_info_id"));
		missionStateDto.setUser_nickname((String) request.getSession().getAttribute("user_nickname")); 
		
		int result = missionGetDao.insertUserMission(missionStateDto);
		request.setAttribute("result", result);
		
		return new ModelAndView("user/pages/user_myMissionPro");
	}

}
