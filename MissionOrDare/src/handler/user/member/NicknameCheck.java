package handler.user.member;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import handler.CommandHandler;
import user.member.UserMemberDao;

@Controller
public class NicknameCheck implements CommandHandler{
	@Resource 
	UserMemberDao userMemberDao;
	
	@RequestMapping("/nicknameCheck")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		String user_nickname = request.getParameter("user_nickname");
		
		int result =userMemberDao.nicknameCheck(user_nickname);
		
		request.setAttribute("user_nickname",user_nickname);
		request.setAttribute("result",result);
		
		return new ModelAndView("user/pages/nicknameCheck");
	}
}