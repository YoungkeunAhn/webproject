package handler.manager.managemission;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.MissionCategoryDto;
import Dtos.MissionInfoDto;
import handler.CommandHandler;
import manager.managemission.ManageMissionDao;

@Controller
public class ManageMissionUpdatePro implements CommandHandler {
	@Resource
	ManageMissionDao manageMissionDao;
	
	@RequestMapping("/manage_mission_updatePro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("memId") == null) {
			return new ModelAndView("manager/login");
		}
		
		request.setCharacterEncoding("utf-8");
		
		System.out.println(request.getParameter("mission_info_id"));
		
		MissionCategoryDto missionCategoryDto = new MissionCategoryDto();
		missionCategoryDto.setLarge_category(request.getParameter("large_category"));
		missionCategoryDto.setSmall_category(request.getParameter("small_category"));
		String mission_category_id = manageMissionDao.getCategoryId(missionCategoryDto);

		MissionInfoDto missionInfoDto = new MissionInfoDto();
		missionInfoDto.setMission_info_id(request.getParameter("mission_info_id"));
		missionInfoDto.setMission_title(request.getParameter("mission_title"));
		if(request.getParameter("mission_challenge").equals("1")) {
			missionInfoDto.setMission_level(Integer.parseInt(request.getParameter("mission_level")));
		} else {
			missionInfoDto.setMission_level(4);
		}
		missionInfoDto.setMission_category_id(mission_category_id);
		missionInfoDto.setMission_location(request.getParameter("mission_local"));
		missionInfoDto.setMission_contents(request.getParameter("mission_contents"));
		
		int result = manageMissionDao.updateMission(missionInfoDto);
		request.setAttribute( "result", result );
		return new ModelAndView("manager/pages/manage_mission_updatePro");
	}
}
