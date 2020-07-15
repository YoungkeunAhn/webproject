package handler.user.userpage;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.NotesDto;
import handler.CommandHandler;
import user.userpage.UserUserPageDao;

@Controller
public class UserSendMessagePro implements CommandHandler{
	@Resource
	private UserUserPageDao userUserPageDao ; 
	@RequestMapping("/user_sendMessagePro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		String sent_nickname = (String) request.getSession().getAttribute("user_nickname");
		String received_nickname = request.getParameter("receivedNickname");
		String notes_contents = request.getParameter("textContent");
		
		NotesDto notesDto = new NotesDto();
		notesDto.setSent_nickname(sent_nickname);
		notesDto.setReceived_nickname(received_nickname);
		notesDto.setNotes_contents(notes_contents);
		
		int result = userUserPageDao.sendMessage(notesDto);
		
		request.setAttribute("result", result);
		return new ModelAndView("user/pages/user_sendMessagePro");
	}
}
