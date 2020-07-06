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
		
		
		
		return new ModelAndView("manager/pages/manage_message_deletePro");
	}
}
