package handler.manager.managemassage;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.NotesDto;
import handler.CommandHandler;
import manager.managemessage.ManageMessageDao;

@Controller
public class ManageSendMessagePro implements CommandHandler{
	@Resource
	private ManageMessageDao manageMessageDao;
	
	@RequestMapping("manage_send_messagePro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String[] user_nicknames = request.getParameterValues("message_check");
		String notes_contents = request.getParameter("message");
		String sent_nickname = (String) request.getSession().getAttribute("memId");
		
		NotesDto notesDto = new NotesDto() ;
		
		for( String received_nickname : user_nicknames) {
			notesDto.setNotes_contents(notes_contents);
			notesDto.setSent_nickname(sent_nickname);
			notesDto.setReceived_nickname(received_nickname);
			int result = manageMessageDao.insertMessage(notesDto);
			if(result == 0) {
				request.setAttribute("result", result); return new ModelAndView("manager/pages/manage_send_messagePro");
			}else {
				request.setAttribute("result", result); 
			}
			
		}
		
		return new ModelAndView("manager/pages/manage_send_messagePro");
	}

}
