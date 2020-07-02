package handler.manager.managemission;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import manager.managemission.ManageMissionDao;

@Controller
public class ManageCategoryDeletePro implements CommandHandler{
	@Resource
	private ManageMissionDao manageMissionDao;
	
	@RequestMapping("/manage_category_deletePro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String missionCategoryId = request.getParameter("id");
		
		int result = manageMissionDao.deleteCategory(missionCategoryId);
		
		request.setAttribute("result", result);
		
		return new ModelAndView("manager/pages/manage_category_deletePro");
	}
}
