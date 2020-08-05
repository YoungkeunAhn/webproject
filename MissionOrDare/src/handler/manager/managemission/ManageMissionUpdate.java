package handler.manager.managemission;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.MissionCategoryAndInfoDto;
import handler.CommandHandler;
import manager.managemission.ManageMissionDao;

@Controller
public class ManageMissionUpdate implements CommandHandler {
	@Resource
	ManageMissionDao manageMissionDao;
	
	@RequestMapping("/manage_mission_update")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("memId") == null) {
			return new ModelAndView("manager/login");
		}
		
		request.setCharacterEncoding("utf-8");
		
		MissionCategoryAndInfoDto missionCategoryAndInfoDto = new MissionCategoryAndInfoDto();
		missionCategoryAndInfoDto.setMission_info_id(request.getParameter("mission_info_id2"));
		missionCategoryAndInfoDto.setLarge_category(request.getParameter("large_category"));
		missionCategoryAndInfoDto.setSmall_category(request.getParameter("small_category"));
		missionCategoryAndInfoDto.setMission_success_score(Integer.parseInt(request.getParameter("mission_success_score")));
		missionCategoryAndInfoDto.setMission_title(request.getParameter("mission_title"));
		missionCategoryAndInfoDto.setMission_contents(request.getParameter("mission_contents"));
		missionCategoryAndInfoDto.setMission_level(Integer.parseInt(request.getParameter("mission_level")));
		missionCategoryAndInfoDto.setMission_location(request.getParameter("mission_location"));
		
		request.setAttribute("missionCategoryAndInfoDto", missionCategoryAndInfoDto);
		
		return new ModelAndView("manager/pages/manage_mission_update");
	}
}
