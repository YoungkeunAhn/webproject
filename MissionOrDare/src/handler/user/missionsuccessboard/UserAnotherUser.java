package handler.user.missionsuccessboard;



import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.UserMissionsDto;
import Dtos.UsersDto;
import handler.CommandHandler;
import user.userpage.UserUserPageDao;

@Controller
public class UserAnotherUser implements CommandHandler{
	@Resource
	private UserUserPageDao userUserPageDao;
	@RequestMapping("/user_anotherUser")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String user_nickname = request.getParameter("user_nickname");
		System.out.println("user_nickname: " + user_nickname);
		UsersDto userDto = userUserPageDao.getUserInfo(user_nickname);
		
		List<UserMissionsDto> userMissionDtos = userUserPageDao.userMissionInfo(user_nickname);
		
		request.setAttribute("userMissionDtos", userMissionDtos);
		request.setAttribute("userDto", userDto); //mod_users의 정보
		return new ModelAndView("user/pages/user_anotherUser");
	}

}
