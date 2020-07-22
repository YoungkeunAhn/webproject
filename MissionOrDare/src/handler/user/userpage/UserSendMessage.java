package handler.user.userpage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
@Controller
public class UserSendMessage implements CommandHandler{
	@RequestMapping("/user_sendMessage")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		String user_nickname = request.getParameter("user_nickname");
		if(user_nickname != null) {
			request.setAttribute("user_nickname", user_nickname);
		}
		
		return new ModelAndView("user/pages/user_sendMessage");
	}
}
