package handler.manager.managemission;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.MissionCategoryDto;
import handler.CommandHandler;
import manager.managemission.ManageMissionDao;


@Controller
public class ManageMissionInsert implements CommandHandler{
	@Resource
	private ManageMissionDao manageMissionDao;
	
	@RequestMapping("/manage_mission_insert")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<MissionCategoryDto> missionLargeCategorys = manageMissionDao.getMissionLargeCategorys();
		request.setAttribute("missionLargeCategorys", missionLargeCategorys);
		
		return new ModelAndView("manager/pages/manage_mission_insert");
	}
}
