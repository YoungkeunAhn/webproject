package handler.user.missionsuccessboard;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import Dtos.LikeDto;
import Dtos.MissionCategoryAndInfoDto;
import Dtos.MissionStateDto;
import Dtos.UsersDto;
import handler.CommandHandler;
import user.successboard.UserSuccessBoardDao;
@Controller
public class UserContent implements CommandHandler{
	@Resource
	UserSuccessBoardDao userSuccessBoardDao;
	@RequestMapping("/user_content")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		
		String success_board_id = request.getParameter("success_board_id");
		MissionCategoryAndInfoDto mission_info = userSuccessBoardDao.getMissionInfo(success_board_id);
		UsersDto user_info = userSuccessBoardDao.getUserInfo(success_board_id);
		MissionStateDto auth_mission_info = userSuccessBoardDao.getAuthMissionInfo(success_board_id);
		
		ArrayList<String> contents = new ArrayList<String>();
		
		if(auth_mission_info.getUpload_video() != null) {
			String[] video = auth_mission_info.getUpload_video().split("/");
			for(String v : video) {
				contents.add(v);
			}
		}
		if(auth_mission_info.getUpload_image() != null) {
			String[] image = auth_mission_info.getUpload_image().split("/");
			for(String i : image) {
				contents.add(i);
			}
		}
		
		
		String user_nickname = (String) request.getSession().getAttribute("user_nickname");
		LikeDto likeDto = new LikeDto();
		likeDto.setSuccess_board_id(success_board_id);
		likeDto.setUser_nickname(user_nickname);
		int likeval = userSuccessBoardDao.checkLike(likeDto);
		int totalLikeCount = userSuccessBoardDao.selectLikeCount(success_board_id);
		
		//공개여부
		
		
		request.setAttribute("totalLikeCount", totalLikeCount);
		request.setAttribute("likeval", likeval);
		request.setAttribute("user_nickname", user_nickname);
		request.setAttribute("contents", contents);
		request.setAttribute("mission_info", mission_info);
		request.setAttribute("user_info", user_info);
		request.setAttribute("auth_mission_info", auth_mission_info);
		request.setAttribute("success_board_id", success_board_id);
		
		return new ModelAndView("user/pages/user_content");
	}
}
