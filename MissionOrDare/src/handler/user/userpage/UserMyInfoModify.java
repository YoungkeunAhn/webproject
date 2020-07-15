package handler.user.userpage;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.UsersDto;
import handler.CommandHandler;
import user.userpage.UserUserPageDao;

@Controller
public class UserMyInfoModify implements CommandHandler{
	@Resource
	private UserUserPageDao userUserPageDao;
	@RequestMapping("/user_myInfoModify")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String user_nickname = (String) request.getSession().getAttribute("user_nickname");
		
		UsersDto usersDto = userUserPageDao.getUserInfo(user_nickname);
		
		
		request.setAttribute("usersDto", usersDto);
		request.setAttribute("user_nickname", user_nickname);
		return new ModelAndView("user/pages/user_myInfoModify");
	}
}
