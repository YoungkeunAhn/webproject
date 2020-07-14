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
public class UserLoginPro implements CommandHandler{
	@Resource
	private 
	UserMemberDao userMemberDao ;
	
	@RequestMapping("/user_loginPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String user_email = request.getParameter("user_email");
		String profile_picture = request.getParameter("profile_picture");
		int kakao_id = Integer.parseInt(request.getParameter("kakao_id"));
		String age_group = request.getParameter("age_group");
		String kakao_birthday = request.getParameter("kakao_birthday");
		String gender = request.getParameter("gender");
		String kakao_access_token = request.getParameter("kakao_access_token");
		
		int result = userMemberDao.loginCheck(kakao_id);
		
		if(result == 1) { //메인페이지로 이동
			request.setAttribute("kakao_id", kakao_id);
			request.setAttribute("kakao_access_token", kakao_access_token);
			return new ModelAndView("user/pages/user_loginPro");
		}else { //회원가입 페이지로 이동 
			request.setAttribute("user_email", user_email);
			request.setAttribute("profile_picture", profile_picture);
			request.setAttribute("kakao_id", kakao_id);
			System.out.println("loginPro : "+kakao_id);
			request.setAttribute("age_group", age_group);
			request.setAttribute("kakao_birthday", kakao_birthday);
			request.setAttribute("gender", gender);
			request.setAttribute("kakao_access_token", kakao_access_token);
		}
		
		return new ModelAndView("user/pages/user_join");
	}
}
