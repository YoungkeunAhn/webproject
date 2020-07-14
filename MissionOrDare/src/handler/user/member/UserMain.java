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
public class UserMain implements CommandHandler{
	@Resource
	private UserMemberDao userMemberDao;
	@RequestMapping("/user_main")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int kakao_id = Integer.parseInt(request.getParameter("kakao_id"));
		
		String user_nickname = userMemberDao.findNickname(kakao_id);
		System.out.println("zkzkdh아이디"+kakao_id);
		System.out.println("kakao_id"+kakao_id + "nickname:"+user_nickname);
		request.getSession().setAttribute("user_nickname", user_nickname);
		
		return new ModelAndView("user/pages/user_main");
	}
}
