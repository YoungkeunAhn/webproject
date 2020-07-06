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
public class ManageMissionInfo implements CommandHandler{
	@Resource
	ManageMissionDao manageMissionDao;
	
	@RequestMapping("/manage_mission_info")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String mission_info_id = request.getParameter("id");
		if(mission_info_id == null || mission_info_id.equals("")) {
			return new ModelAndView("manager/pages/manage_mission_info");
		}
		MissionCategoryAndInfoDto missionCategoryAndInfoDto = manageMissionDao.getMission(mission_info_id);
		request.setAttribute("missionCategoryAndInfoDto", missionCategoryAndInfoDto);
		
		return new ModelAndView("manager/pages/manage_mission_info");
	}
}
