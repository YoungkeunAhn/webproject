package handler.manager.managemassage;



import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import manager.manageuser.ManageUserDao;

@Controller
public class ManageMessageSendForm implements CommandHandler{
	@Resource
	ManageUserDao manageUserDao;
	
	@RequestMapping("/manage_message_sendForm")
	
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("memId") == null) {
			return new ModelAndView("manager/login");
		}
		
		
		return new ModelAndView("manager/pages/manage_message_sendForm");
	}
}
