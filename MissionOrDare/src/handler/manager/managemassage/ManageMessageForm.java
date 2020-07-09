package handler.manager.managemassage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;

@Controller
public class ManageMessageForm implements CommandHandler{
	@RequestMapping("/manage_message_form")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("memId") == null) {
			return new ModelAndView("manager/login");
		}
		request.setCharacterEncoding("utf-8");
		String nickname = request.getParameter("nickname");
		request.setAttribute("nickname", nickname);
		return new ModelAndView("manager/pages/manage_message_form");
	}
}
