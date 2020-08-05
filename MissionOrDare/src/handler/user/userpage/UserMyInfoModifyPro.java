package handler.user.userpage;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.UsersDto;
import handler.CommandHandler;
import user.userpage.UserUserPageDao;

@Controller
public class UserMyInfoModifyPro implements CommandHandler{
	
	@Resource
	private UserUserPageDao userUserPageDao;
	@RequestMapping("/user_myInfoModifyPro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("user_nickname") == null ) {
			return new ModelAndView("user/user_index");
		}
		
		int kakao_id = (int) request.getSession().getAttribute("kakao_id");
		String user_nickname = request.getParameter("user_nickname");
		String user_passwd = request.getParameter("user_passwd");
		String date_of_birth = request.getParameter("user_birth");
		String job = request.getParameter("user_job");
		String location = request.getParameter("user_location");
		
		UsersDto usersDto = new UsersDto();
		usersDto.setUser_passwd(user_passwd);
		usersDto.setDate_of_birth(date_of_birth);
		usersDto.setJob(job);
		usersDto.setLocation(location);
		usersDto.setUser_nickname(user_nickname);
		usersDto.setKakao_id(kakao_id);
		
		int result = userUserPageDao.userModify(usersDto);
		if(result ==1) {
			request.getSession().setAttribute("user_nickname", user_nickname);
		}
		request.setAttribute("result", result);
		return new ModelAndView("user/pages/user_myInfoModifyPro");
	}

}
