package handler.user.missionsuccessboard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
@Controller
public class UserContent implements CommandHandler{
	@RequestMapping("/user_content")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String success_board_id = request.getParameter("success_board_id");
		
		
		
		return new ModelAndView("user/pages/user_content");
	}
}
