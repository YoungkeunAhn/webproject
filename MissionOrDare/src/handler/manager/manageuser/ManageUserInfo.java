package handler.manager.manageuser;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.UsersDto;
import handler.CommandHandler;
import manager.manageuser.ManageUserDao;

@Controller
public class ManageUserInfo implements CommandHandler{
	@Resource
	private ManageUserDao manageUserDao;
	
	@RequestMapping("/manage_user_info")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("memId") == null) {
			return new ModelAndView("manager/login");
		}
		
		String user_nickname = request.getParameter( "user_nickname" );
		UsersDto usersDto = manageUserDao.getArticle( user_nickname );
		
		request.setAttribute( "usersDto", usersDto );
		
		return new ModelAndView("manager/pages/manage_user_info");
	}
}
