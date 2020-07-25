package handler.user.userpage;


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
import user.missionget.MissionGetDao;
import user.userpage.UserUserPageDao;

@Controller
public class UserMy implements CommandHandler{
	@Resource
	private MissionGetDao missionGetDao;
	@Resource
	private UserUserPageDao userUserPageDao;
	@RequestMapping("user_my")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		String user_nickname = (String) request.getSession().getAttribute("user_nickname");
		UsersDto userDto = userUserPageDao.getUserInfo(user_nickname);

		
		List<UserMissionsDto> userMissionDtos = userUserPageDao.userMissionInfo(user_nickname);
		
		
		request.setAttribute("userDto", userDto);
		request.setAttribute("userMissionDtos", userMissionDtos);
		return new ModelAndView("user/pages/user_my");
	}
}
