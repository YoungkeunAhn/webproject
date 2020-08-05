package handler.user.userpage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;

@Controller
public class UserProfileModifyPro implements CommandHandler{
	@RequestMapping("/user_profileModifyPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("user_nickname") == null ) {
			return new ModelAndView("user/user_index");
		}
		return new ModelAndView("user/pages/user_profileModifyPro");
	}

}
