package handler.manager.managemassage;

import java.util.List;

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
		request.setCharacterEncoding("utf-8");
		//String notes_id = request.getParameter("notes_id");
		String[] message_check = request.getParameterValues("message_check");
		System.out.println("삭제전");
		request.setAttribute("message_check", message_check);
		//request.setAttribute("notes_id", notes_id);
		for(String i : message_check) {
			System.out.println("사용자 삭제");
			int result = manageMessageDao.deleteMessage(i);
			request.setAttribute("result", result);
		}
		
		return new ModelAndView("manager/pages/manage_message_deletePro");
	}
}
