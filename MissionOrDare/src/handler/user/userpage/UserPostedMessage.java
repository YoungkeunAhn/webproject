package handler.user.userpage;

import java.util.List;

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
public class UserPostedMessage implements CommandHandler{
	
	@Resource
	private UserUserPageDao userUserPageDao;
	@RequestMapping("/user_postedMessage")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		if(request.getSession().getAttribute("user_nickname") == null ) {
			return new ModelAndView("user/user_index");
		}
		String user_nickname = (String) request.getSession().getAttribute("user_nickname");
		
		List<NotesDto> notesDtoss = userUserPageDao.sentMessageInfo(user_nickname);
		String profile = userUserPageDao.getProfile(user_nickname);
		
		request.setAttribute("profile", profile);
		request.setAttribute("notesDtoss", notesDtoss);
		return new ModelAndView("user/pages/user_postedMessage");
	}
}
