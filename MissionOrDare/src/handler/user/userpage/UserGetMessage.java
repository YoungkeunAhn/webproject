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
public class UserGetMessage implements CommandHandler{
	@Resource
	private UserUserPageDao userUserPageDao ; 
	@RequestMapping("/user_getMessage")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String user_nickname = (String) request.getSession().getAttribute("user_nickname");
		System.out.println("핸들러러러럴ㄹ2222222:"+ user_nickname);
		List<NotesDto> notesDtos = userUserPageDao.receivedMessageInfo(user_nickname);
		System.out.println("핸들러러러럴ㄹ33333333:"+ user_nickname);
		request.setAttribute("notesDtos", notesDtos);
		return new ModelAndView("user/pages/user_getMessage");
	}
}
