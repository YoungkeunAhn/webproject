package handler.manager.managemission;

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
public class ManageCategoryInsertPro implements CommandHandler{
	@Resource
	private ManageMissionDao manageMissionDao;
	
	@RequestMapping("/manage_category_insertPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("memId") == null) {
			return new ModelAndView("manager/login");
		}
		
		request.setCharacterEncoding("utf-8");
		
		MissionCategoryDto missionCategoryDto = new MissionCategoryDto();
		missionCategoryDto.setLarge_category(request.getParameter("largeCategory"));
		missionCategoryDto.setSmall_category(request.getParameter("smallCategory"));
		int result = manageMissionDao.insertCategory(missionCategoryDto);
		
		request.setAttribute("result", result);
		
		
		return new ModelAndView("manager/pages/manage_category_insertPro");
	}
}
