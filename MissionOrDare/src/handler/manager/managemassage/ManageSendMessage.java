package handler.manager.managemassage;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import manager.managemessage.ManageMessageDao;

@Controller
public class ManageSendMessage implements CommandHandler{
	@Resource
	ManageMessageDao manageMessageDao;
	
	@RequestMapping("/manage_send_message")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String[] messages_check = request.getParameterValues("message_check");
		

		request.setAttribute("messages_check", messages_check);
		
		return new ModelAndView("manager/pages/manage_send_message");
	}

}
