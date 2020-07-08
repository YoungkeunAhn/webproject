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
public class ManageMessageDeletePro implements CommandHandler{
	
	@Resource
	private ManageMessageDao manageMessageDao;
	
	@RequestMapping("/manage_message_deletePro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("memId") == null) {
			return new ModelAndView("manager/login");
		}
		request.setCharacterEncoding("utf-8");

		String[] message_check = request.getParameterValues("message_check");

		request.setAttribute("message_check", message_check);

		for(String i : message_check) {

			int result = manageMessageDao.deleteMessage(i);
			request.setAttribute("result", result);
		}
		
		return new ModelAndView("manager/pages/manage_message_deletePro");
	}
}
