package handler.manager.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;

@Controller
public class LogOut implements CommandHandler {
	@RequestMapping("/logout")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int result = 0;
		if(request.getSession().getAttribute("memId") == null) {
			
		}
		else {
			result = 1;
			request.getSession().removeAttribute("memId");
		}
		
		request.setAttribute("result", result);
		
		
		return new ModelAndView("manager/logout");
	}

}
