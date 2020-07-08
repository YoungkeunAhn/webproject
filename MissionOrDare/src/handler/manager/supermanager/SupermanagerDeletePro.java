package handler.manager.supermanager;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import manager.supermanager.SupermanagerDao;

@Controller
public class SupermanagerDeletePro implements CommandHandler {

	@Resource
	private SupermanagerDao supermanagerDao;
	
	@RequestMapping("/manage_manager_deletePro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("memId") == null) {
			return new ModelAndView("manager/login");
		}
		
		String manager_id = request.getParameter("manager_id");
		
		int result=supermanagerDao.deleteArticle(manager_id);
		request.setAttribute("result", result);
		
		return new ModelAndView("manager/pages/manage_manager_deletePro");
	}
	
	
	
}
