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
public class categoryCheck implements CommandHandler {
	@Resource
	private ManageMissionDao manageMissionDao;
	
	@RequestMapping("/categorycheck")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String largecategory = request.getParameter("largecategory");
		List<MissionCategoryDto> missionSmallCategorys = manageMissionDao.getMissionSmallCategorys(largecategory);
		request.setAttribute("missionSmallCategorys", missionSmallCategorys);
		request.setAttribute("largecategory", largecategory);
		
		return new ModelAndView("manager/pages/categorycheck");
	}
}
