package handler.user.userpage;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.SuccessBoardDto;
import Dtos.UserMissionsDto;
import handler.CommandHandler;
import user.userpage.UserUserPageDao;

@Controller
public class UserMyMission implements CommandHandler{
	@Resource
	UserUserPageDao userUserPageDao;
	
	@RequestMapping("/user_myMissionCheck")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if(request.getSession().getAttribute("user_nickname") == null ) {
			return new ModelAndView("user/user_index");
		}
		
		String mission_state_id = request.getParameter("mission_state_id");
		
		UserMissionsDto userMissionDto = userUserPageDao.getMyMission(mission_state_id);
		SuccessBoardDto successBoardDto = userUserPageDao.getSuccessMission(mission_state_id);
		
		ArrayList<String> contents = new ArrayList<String>();
		
		if(userMissionDto.getUpload_video() != null) {
			String[] video = userMissionDto.getUpload_video().split("/");
			for(String v : video) {
				contents.add(v);
			}
		}
		if(userMissionDto.getUpload_image() != null) {
			String[] image = userMissionDto.getUpload_image().split("/");
			for(String i : image) {
				contents.add(i);
			}
		}
		
		request.setAttribute("contents", contents);
		request.setAttribute("successBoardDto", successBoardDto);
		request.setAttribute("userMissionDto", userMissionDto);
		
		return new ModelAndView("user/pages/user_myMissionCheck");
	}
}
