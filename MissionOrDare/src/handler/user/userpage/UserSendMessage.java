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
		if(request.getSession().getAttribute("user_nickname") == null ) {
			return new ModelAndView("user/user_index");
		}
		String nickname = request.getParameter("nickname");
		if(nickname != null) {
			request.setAttribute("nickname", nickname);
		}
		
		return new ModelAndView("user/pages/user_sendMessage");
	}
}
