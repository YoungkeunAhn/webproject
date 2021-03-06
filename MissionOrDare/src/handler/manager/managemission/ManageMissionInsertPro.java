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
public class ManageMissionInsertPro implements CommandHandler{
	@Resource
	private ManageMissionDao manageMissionDao;
	
	@RequestMapping("/manage_mission_insertPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("memId") == null) {
			return new ModelAndView("manager/login");
		}
		
		request.setCharacterEncoding("utf-8");
		
		MissionCategoryDto missionCategoryDto = new MissionCategoryDto();
		missionCategoryDto.setLarge_category(request.getParameter("largecategory"));
		missionCategoryDto.setSmall_category(request.getParameter("smallcategory"));
		MissionCategoryDto missionCategory = manageMissionDao.getCategory(missionCategoryDto);
		

		MissionInfoDto missionInfoDto = new MissionInfoDto();
		missionInfoDto.setMission_title(request.getParameter("missiontitle"));
		if(request.getParameter("missionchallenge").equals("1")) {
			missionInfoDto.setMission_level(Integer.parseInt(request.getParameter("missionlevel")));
		} else {
			missionInfoDto.setMission_level(4);
		}
		missionInfoDto.setMission_category_id(missionCategory.getMission_category_id());
		missionInfoDto.setMission_success_score(Integer.parseInt(request.getParameter("missionscore")));
		missionInfoDto.setMission_location(request.getParameter("missionlocal"));
		missionInfoDto.setMission_contents(request.getParameter("missioncontent"));
		
		int result = manageMissionDao.insertMission(missionInfoDto);
		request.setAttribute( "result", result );
		request.setAttribute("category_image", missionCategory.getCategory_image());
		

		return new ModelAndView("manager/pages/manage_mission_insertPro");
	}
}
