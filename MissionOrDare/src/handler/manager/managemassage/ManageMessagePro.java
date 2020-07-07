package handler.manager.managemassage;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.NotesDto;
import handler.CommandHandler;
import manager.managemessage.ManageMessageDao;

@Controller
public class ManageMessagePro implements CommandHandler {
	
	@Resource 
	ManageMessageDao manageMessageDao;
   @RequestMapping("/manage_message_pro")
   @Override
   public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	   request.setCharacterEncoding("utf-8");
	   HttpSession session= request.getSession();
	   String sent_nickname = (String)session.getAttribute("memId");
	   String received_nickname = request.getParameter("received_nickname");
	   String notes_contents = request.getParameter("message");
	   
	   NotesDto notesDto = new NotesDto();
	   notesDto.setSent_nickname(sent_nickname);
	   notesDto.setReceived_nickname(received_nickname);
	   notesDto.setNotes_contents(notes_contents);
	   
	   int result = manageMessageDao.insertMessage(notesDto);
	   
	   request.setAttribute("result", result);
	   
	   return new ModelAndView("manager/pages/manage_message_pro");
   }
}