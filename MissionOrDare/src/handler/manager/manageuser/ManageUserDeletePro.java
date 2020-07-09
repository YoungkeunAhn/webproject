package handler.manager.manageuser;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import manager.manageuser.ManageUserDao;

@Controller
public class ManageUserDeletePro implements CommandHandler{
	
	@Resource
	private ManageUserDao manageUserDao;
	
	@RequestMapping("/manage_user_deletePro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("memId") == null) {
			return new ModelAndView("manager/login");
		}
		request.setCharacterEncoding("utf-8");
		
		String user_nickname = request.getParameter("user_nickname");
		
		int result=manageUserDao.deleteArticle(user_nickname);
		int result2=manageUserDao.deleteArticle2(user_nickname);
		request.setAttribute("result", result);
		request.setAttribute("result2", result2);
		return new ModelAndView("manager/pages/manage_user_deletePro");
	}
}
