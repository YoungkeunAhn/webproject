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
public class UserMy implements CommandHandler{
	
	@Resource
	private UserUserPageDao userUserPageDao;
	@RequestMapping("user_my")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		String user_nickname = (String) request.getSession().getAttribute("user_nickname");
		System.out.println(user_nickname);
		UsersDto userDto = userUserPageDao.getUserInfo(user_nickname);
		
		
		request.setAttribute("userDto", userDto);
		return new ModelAndView("user/pages/user_my");
	}
}
